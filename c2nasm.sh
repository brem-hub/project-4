#!/bin/sh
# С помощью данного скрипта можно получить nasm скрипт из .cpp файла.
C_FILE="$1"
O_FILE="$C_FILE.o"
NASM_FILE="$C_FILE.nasm"
NASM_O_FILE="$NASM_FILE.o"
EXEC_FILE="$C_FILE.run"

PROGRAM_NAME="program"
NASM_FILE_NAME="main.nasm"

BIN_FOLDER="bin/"
ASM_FOLDER="asm/"

# Компилируем код в object file с флагами отладки, также отключаем PIE для простоты.
gcc -m32 -fno-pie -c -g -o "$O_FILE" "$C_FILE"
# Воспользуемся программой objconv для дизассемблирования object файла к ассемблерному коду.
./objconv -fnasm "$O_FILE" "$NASM_FILE"
# Т.к. формат, в который objconv дизассемблирует немного отличается от дефолтного nasm - пройдем по готовому файлу командой
# sed и удалим лишние строки.
sed -i 's|st(0)|st0  |g' "$NASM_FILE"
sed -i 's|noexecute|         |g' "$NASM_FILE"
sed -i 's|execute|       |g' "$NASM_FILE"
sed -i 's|: function||g' "$NASM_FILE"
sed -i 's|?_|L_|g' "$NASM_FILE"
sed -i -n '/SECTION .eh_frame/q;p' "$NASM_FILE"
sed -i 's|;.*||g' "$NASM_FILE"
sed -i 's/^M//g' "$NASM_FILE"
sed -i 's|\s\+$||g' "$NASM_FILE"
sed -i 's|align=1||g' "$NASM_FILE"
echo 'Nasm file generated in '"$NASM_FILE"
# Компилируем обратно в object file с помощью nasm.
nasm -f elf32 -o "$NASM_O_FILE" "$NASM_FILE"
# Линкуем с помощью gcc и получаем ELF файл.
gcc -m32 -lGL -lm -o "$EXEC_FILE"  "$NASM_O_FILE"
echo 'Successfully compiled '"$NASM_FILE" to "$EXEC_FILE"
# Кладем бинарный файл в папку bin
echo 'Moving binary file to bin/'"$PROGRAM_NAME"
if [ ! -d "$BIN_FOLDER" ]; then
  mkdir "$BIN_FOLDER"
fi
mv "$EXEC_FILE" "$BIN_FOLDER""$PROGRAM_NAME"

echo 'Moving nasm file to assembler/'"$NASM_FILE"
if [ ! -d "$ASM_FOLDER" ]; then
  mkdir "$ASM_FOLDER"
fi
mv "$NASM_FILE" "$ASM_FOLDER""$NASM_FILE_NAME"

# Удаляем лишние файлы
echo 'Clearing working files'
rm "$NASM_O_FILE"
rm "$O_FILE"
echo 'Finished work'

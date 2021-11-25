






global _Z10InFractionP8fractionP8_IO_FILE
global _Z14RandInFractionP8fraction
global _Z20CastToDoubleFractionPK8fraction
global _Z11OutFractionPK8fractionP8_IO_FILE
global _Z9InComplexP7complexP8_IO_FILE
global _Z13RandInComplexP7complex
global _Z19CastToDoubleComplexPK7complex
global _Z10OutComplexPK7complexP8_IO_FILE
global _Z7InPointP5pointP8_IO_FILE
global _Z8OutPointPK5pointP8_IO_FILE
global _Z7InPolarP5polarP8_IO_FILE
global _Z11RandInPolarP5polar
global _Z17CastToDoublePolarPK5polar
global _Z8OutPolarPK5polarP8_IO_FILE
global _Z8InNumberP6numberP8_IO_FILE
global _Z9OutNumberPK6numberP8_IO_FILE
global _Z18CastNumberToDoublePK6number
global _Z4Ctorv
global _Z4DtorP9container
global _Z3AddP9containerPK6number
global _Z4FillP9containerP8_IO_FILE
global _Z10RandomFillP9containeriP8_IO_FILE
global _Z3OutPK9containerP8_IO_FILE
global _Z12StraightSortP9container
global _Z13is_flag_validPKcPS0_i
global _Z9find_flagiPPcPPKci
global _Z14get_input_fileiPPcPKc
global _Z15get_output_fileiPPcPKc
global _Z21get_random_input_fileiPPc
global _Z15get_random_sizeiPPc
global main
global kHelpFlags
global kInputFlags
global kOutputFlags
global kRandomFlags
global kRandomInputFlags
global error_code
global _ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_

extern difftime
extern fwrite
extern srand
extern time
extern fclose
extern clock
extern atoi
extern exit
extern fopen
extern access
extern strcmp
extern printf
extern free
extern malloc
extern sqrt
extern fprintf
extern __stack_chk_fail
extern puts
extern __isoc99_fscanf
extern rand


SECTION .text   

_ZL10DoubleRanddd:
        push    ebp
        mov     ebp, esp
        sub     esp, 56
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-20H], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+10H]
        mov     dword [ebp-28H], eax
        mov     eax, dword [ebp+14H]
        mov     dword [ebp-24H], eax
        call    rand
        mov     dword [ebp-2CH], eax
        fild    dword [ebp-2CH]
        fld     qword [L_135]
        fdivp   st1, st0
        fstp    qword [ebp-10H]
        fld     qword [ebp-28H]
        fsub    qword [ebp-20H]
        fmul    qword [ebp-10H]
        fadd    qword [ebp-20H]
        leave
        ret

_ZL6Randomii:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        call    rand
        cdq
        idiv    dword [ebp+0CH]
        mov     eax, dword [ebp+8H]
        add     eax, edx
        leave
        ret

_Z10InFractionP8fractionP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-20H], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        lea     eax, [ebp-14H]
        push    eax
        lea     eax, [ebp-18H]
        push    eax
        push    L_091
        push    dword [ebp-20H]
        call    __isoc99_fscanf
        add     esp, 16
        mov     dword [ebp-10H], eax
        cmp     dword [ebp-10H], 2
        jz      L_001
        sub     esp, 12
        push    L_092
        call    puts
        add     esp, 16
        mov     eax, 1
        jmp     L_003

L_001:  mov     eax, dword [ebp-14H]
        test    eax, eax
        jnz     L_002
        sub     esp, 12
        push    L_093
        call    puts
        add     esp, 16
        mov     eax, 1
        jmp     L_003

L_002:  mov     edx, dword [ebp-18H]
        mov     eax, dword [ebp-1CH]
        mov     dword [eax], edx
        mov     edx, dword [ebp-14H]
        mov     eax, dword [ebp-1CH]
        mov     dword [eax+4H], edx
        mov     eax, 0
L_003:  mov     edx, dword [ebp-0CH]

        sub     edx, dword [gs:14H]
        jz      L_004
        call    __stack_chk_fail
L_004:  leave
        ret


_Z14RandInFractionP8fraction:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        sub     esp, 8
        push    100
        push    -100
        call    _ZL6Randomii
        add     esp, 16
        mov     edx, dword [ebp+8H]
        mov     dword [edx], eax
L_005:  sub     esp, 8
        push    100
        push    -100
        call    _ZL6Randomii
        add     esp, 16
        mov     edx, dword [ebp+8H]
        mov     dword [edx+4H], eax
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+4H]
        test    eax, eax
        jz      L_005
        nop
        nop
        leave
        ret


_Z20CastToDoubleFractionPK8fraction:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        mov     dword [ebp-4H], eax
        fild    dword [ebp-4H]
        fldz
        faddp   st1, st0
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+4H]
        mov     dword [ebp-4H], eax
        fild    dword [ebp-4H]
        fdivp   st1, st0
        leave
        ret


_Z11OutFractionPK8fractionP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        sub     esp, 4
        push    dword [ebp+8H]
        call    _Z20CastToDoubleFractionPK8fraction
        add     esp, 8
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax+4H]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        sub     esp, 8
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    edx
        push    eax
        push    L_094
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 32
        nop
        leave
        ret


_Z9InComplexP7complexP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 56
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-2CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-30H], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        lea     eax, [ebp-18H]
        push    eax
        lea     eax, [ebp-20H]
        push    eax
        push    L_095
        push    dword [ebp-30H]
        call    __isoc99_fscanf
        add     esp, 16
        mov     dword [ebp-24H], eax
        cmp     dword [ebp-24H], 2
        jz      L_006
        sub     esp, 12
        push    L_096
        call    puts
        add     esp, 16
        mov     eax, 1
        jmp     L_007

L_006:  fld     qword [ebp-20H]
        mov     eax, dword [ebp-2CH]
        fstp    qword [eax]
        fld     qword [ebp-18H]
        mov     eax, dword [ebp-2CH]
        fstp    qword [eax+8H]
        mov     eax, 0
L_007:  mov     edx, dword [ebp-0CH]

        sub     edx, dword [gs:14H]
        jz      L_008
        call    __stack_chk_fail
L_008:  leave
        ret


_Z13RandInComplexP7complex:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        fld     qword [L_136]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        fld     qword [L_137]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        call    _ZL10DoubleRanddd
        add     esp, 16
        mov     eax, dword [ebp+8H]
        fstp    qword [eax]
        fld     qword [L_136]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        fld     qword [L_137]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        call    _ZL10DoubleRanddd
        add     esp, 16
        mov     eax, dword [ebp+8H]
        fstp    qword [eax+8H]
        nop
        leave
        ret


_Z19CastToDoubleComplexPK7complex:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        mov     eax, dword [ebp+8H]
        fld     qword [eax]
        mov     eax, dword [ebp+8H]
        fld     qword [eax]
        fmulp   st1, st0
        mov     eax, dword [ebp+8H]
        fld     qword [eax+8H]
        mov     eax, dword [ebp+8H]
        fld     qword [eax+8H]
        fmulp   st1, st0
        faddp   st1, st0
        sub     esp, 8
        lea     esp, [esp-8H]
        fstp    qword [esp]
        call    sqrt
        add     esp, 16
        leave
        ret


_Z10OutComplexPK7complexP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        sub     esp, 12
        push    dword [ebp+8H]
        call    _Z19CastToDoubleComplexPK7complex
        add     esp, 16
        mov     eax, dword [ebp+8H]
        fld     qword [eax+8H]
        mov     eax, dword [ebp+8H]
        fld     qword [eax]
        fxch    st2
        lea     esp, [esp-8H]
        fstp    qword [esp]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_097
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 32
        nop
        leave
        ret


_Z7InPointP5pointP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-20H], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        lea     eax, [ebp-14H]
        push    eax
        lea     eax, [ebp-18H]
        push    eax
        push    L_098
        push    dword [ebp-20H]
        call    __isoc99_fscanf
        add     esp, 16
        mov     dword [ebp-10H], eax
        cmp     dword [ebp-10H], 2
        jz      L_009
        sub     esp, 12
        push    L_099
        call    puts
        add     esp, 16
        mov     eax, 1
        jmp     L_010

L_009:  mov     edx, dword [ebp-18H]
        mov     eax, dword [ebp-1CH]
        mov     dword [eax], edx
        mov     edx, dword [ebp-14H]
        mov     eax, dword [ebp-1CH]
        mov     dword [eax+4H], edx
        mov     eax, 0
L_010:  mov     edx, dword [ebp-0CH]

        sub     edx, dword [gs:14H]
        jz      L_011
        call    __stack_chk_fail
L_011:  leave
        ret


_Z8OutPointPK5pointP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax+4H]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        push    edx
        push    eax
        push    L_100
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        nop
        leave
        ret


_Z7InPolarP5polarP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 56
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-2CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-30H], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 4
        lea     eax, [ebp-18H]
        push    eax
        push    L_101
        push    dword [ebp-30H]
        call    __isoc99_fscanf
        add     esp, 16
        mov     dword [ebp-1CH], eax
        cmp     dword [ebp-1CH], 1
        jz      L_012
        sub     esp, 12
        push    L_102
        call    puts
        add     esp, 16
        mov     eax, 1
        jmp     L_013

L_012:  fld     qword [ebp-18H]
        mov     eax, dword [ebp-2CH]
        fstp    qword [eax]
        mov     eax, dword [ebp-2CH]
        add     eax, 8
        sub     esp, 8
        push    dword [ebp-30H]
        push    eax
        call    _Z7InPointP5pointP8_IO_FILE
        add     esp, 16
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp-1CH]
L_013:  mov     edx, dword [ebp-0CH]

        sub     edx, dword [gs:14H]
        jz      L_014
        call    __stack_chk_fail
L_014:  leave
        ret


_Z11RandInPolarP5polar:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        fld     qword [L_138]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        fldz
        lea     esp, [esp-8H]
        fstp    qword [esp]
        call    _ZL10DoubleRanddd
        add     esp, 16
        mov     eax, dword [ebp+8H]
        fstp    qword [eax]
        sub     esp, 8
        push    100
        push    -100
        call    _ZL6Randomii
        add     esp, 16
        mov     edx, dword [ebp+8H]
        mov     dword [edx+8H], eax
        sub     esp, 8
        push    100
        push    -100
        call    _ZL6Randomii
        add     esp, 16
        mov     edx, dword [ebp+8H]
        mov     dword [edx+0CH], eax
        nop
        leave
        ret


_Z17CastToDoublePolarPK5polar:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax+8H]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+8H]
        mov     ecx, edx
        imul    ecx, eax
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax+0CH]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+0CH]
        imul    eax, edx
        add     eax, ecx
        sub     esp, 12
        push    eax
        call    _ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_
        add     esp, 16
        leave
        ret


_Z8OutPolarPK5polarP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        mov     eax, dword [ebp+8H]
        fld     qword [eax]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_103
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     eax, dword [ebp+8H]
        add     eax, 8
        sub     esp, 8
        push    dword [ebp+0CH]
        push    eax
        call    _Z8OutPointPK5pointP8_IO_FILE
        add     esp, 16
        sub     esp, 12
        push    dword [ebp+8H]
        call    _Z17CastToDoublePolarPK5polar
        add     esp, 16
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_104
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        nop
        leave
        ret


_Z8InNumberP6numberP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-1CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-20H], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        mov     dword [ebp-10H], -1
        sub     esp, 4
        lea     eax, [ebp-10H]
        push    eax
        push    L_105
        push    dword [ebp-20H]
        call    __isoc99_fscanf
        add     esp, 16
        mov     eax, dword [ebp-10H]
        cmp     eax, 2
        jz      L_017
        cmp     eax, 2
        jg      L_018
        test    eax, eax
        jz      L_015
        cmp     eax, 1
        jz      L_016
        jmp     L_018

L_015:  mov     eax, dword [ebp-1CH]
        mov     dword [eax], 0
        mov     eax, dword [ebp-1CH]
        add     eax, 4
        sub     esp, 8
        push    dword [ebp-20H]
        push    eax
        call    _Z9InComplexP7complexP8_IO_FILE
        add     esp, 16
        jmp     L_019

L_016:  mov     eax, dword [ebp-1CH]
        mov     dword [eax], 1
        mov     eax, dword [ebp-1CH]
        add     eax, 4
        sub     esp, 8
        push    dword [ebp-20H]
        push    eax
        call    _Z10InFractionP8fractionP8_IO_FILE
        add     esp, 16
        jmp     L_019

L_017:  mov     eax, dword [ebp-1CH]
        mov     dword [eax], 2
        mov     eax, dword [ebp-1CH]
        add     eax, 4
        sub     esp, 8
        push    dword [ebp-20H]
        push    eax
        call    _Z7InPolarP5polarP8_IO_FILE
        add     esp, 16
        jmp     L_019

L_018:  sub     esp, 12
        push    L_106
        call    puts
        add     esp, 16
        mov     eax, 1
L_019:  mov     edx, dword [ebp-0CH]

        sub     edx, dword [gs:14H]
        jz      L_020
        call    __stack_chk_fail
L_020:  leave
        ret


_Z9OutNumberPK6numberP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        cmp     eax, 2
        jz      L_022
        cmp     eax, 2
        jg      L_023
        test    eax, eax
        jz      L_021
        cmp     eax, 1
        jnz     L_023
        mov     eax, dword [ebp+8H]
        add     eax, 4
        sub     esp, 8
        push    dword [ebp+0CH]
        push    eax
        call    _Z11OutFractionPK8fractionP8_IO_FILE
        add     esp, 16
        jmp     L_023

L_021:  mov     eax, dword [ebp+8H]
        add     eax, 4
        sub     esp, 8
        push    dword [ebp+0CH]
        push    eax
        call    _Z10OutComplexPK7complexP8_IO_FILE
        add     esp, 16
        jmp     L_023

L_022:  mov     eax, dword [ebp+8H]
        add     eax, 4
        sub     esp, 8
        push    dword [ebp+0CH]
        push    eax
        call    _Z8OutPolarPK5polarP8_IO_FILE
        add     esp, 16
        nop
L_023:  leave
        ret


_Z18CastNumberToDoublePK6number:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        test    eax, eax
        jz      L_024
        cmp     eax, 1
        jz      L_025
        jmp     L_026

L_024:  mov     eax, dword [ebp+8H]
        add     eax, 4
        sub     esp, 12
        push    eax
        call    _Z19CastToDoubleComplexPK7complex
        add     esp, 16
        jmp     L_027

L_025:  mov     eax, dword [ebp+8H]
        add     eax, 4
        sub     esp, 12
        push    eax
        call    _Z20CastToDoubleFractionPK8fraction
        add     esp, 16
        jmp     L_027

L_026:  mov     eax, dword [ebp+8H]
        add     eax, 4
        sub     esp, 12
        push    eax
        call    _Z17CastToDoublePolarPK5polar
        add     esp, 16
        nop
L_027:  leave
        ret


_Z4Ctorv:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        sub     esp, 12
        push    40008
        call    malloc
        add     esp, 16
        mov     dword [ebp-0CH], eax
        mov     eax, dword [ebp-0CH]
        mov     dword [eax], 0
        mov     dword [ebp-10H], 0
        jmp     L_029

L_028:  mov     eax, dword [ebp-0CH]
        mov     edx, dword [ebp-10H]
        mov     dword [eax+edx*4+4H], 0
        add     dword [ebp-10H], 1
L_029:  cmp     dword [ebp-10H], 9999
        jle     L_028
        mov     eax, dword [ebp-0CH]
        leave
        ret


_Z4DtorP9container:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     dword [ebp-0CH], 0
        jmp     L_031

L_030:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-0CH]
        mov     eax, dword [eax+edx*4+4H]
        sub     esp, 12
        push    eax
        call    free
        add     esp, 16
        add     dword [ebp-0CH], 1
L_031:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        cmp     dword [ebp-0CH], eax
        jl      L_030
        mov     eax, dword [ebp+8H]
        mov     dword [eax], 0
        sub     esp, 12
        push    dword [ebp+8H]
        call    free
        add     esp, 16
        nop
        leave
        ret


_Z3AddP9containerPK6number:
        push    ebp
        mov     ebp, esp
        push    ebx
        sub     esp, 4
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        cmp     eax, 9999
        jg      L_033
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+edx*4+4H]
        test    eax, eax
        jnz     L_032
        mov     eax, dword [ebp+8H]
        mov     ebx, dword [eax]
        sub     esp, 12
        push    20
        call    malloc
        add     esp, 16
        mov     edx, eax
        mov     eax, dword [ebp+8H]
        mov     dword [eax+ebx*4+4H], edx
L_032:  mov     eax, dword [ebp+8H]
        mov     edx, dword [eax]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+edx*4+4H]
        mov     edx, dword [ebp+0CH]
        mov     edx, dword [edx]
        mov     dword [eax], edx
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+edx*4+4H]
        mov     edx, dword [ebp+0CH]
        mov     ecx, dword [edx+4H]
        mov     dword [eax+4H], ecx
        mov     ecx, dword [edx+8H]
        mov     dword [eax+8H], ecx
        mov     ecx, dword [edx+0CH]
        mov     dword [eax+0CH], ecx
        mov     edx, dword [edx+10H]
        mov     dword [eax+10H], edx
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax]
        mov     eax, dword [ebp+8H]
        mov     ecx, dword [eax+edx*4+4H]
        mov     eax, dword [ebp+0CH]
        mov     edx, dword [eax+8H]
        mov     eax, dword [eax+4H]
        mov     dword [ecx+4H], eax
        mov     dword [ecx+8H], edx
        mov     eax, dword [ebp+8H]
        mov     edx, dword [eax]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+edx*4+4H]
        mov     edx, dword [ebp+0CH]
        mov     ecx, dword [edx+4H]
        mov     dword [eax+4H], ecx
        mov     ecx, dword [edx+8H]
        mov     dword [eax+8H], ecx
        mov     ecx, dword [edx+0CH]
        mov     dword [eax+0CH], ecx
        mov     edx, dword [edx+10H]
        mov     dword [eax+10H], edx
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        lea     edx, [eax+1H]
        mov     eax, dword [ebp+8H]
        mov     dword [eax], edx
        mov     eax, 0
        jmp     L_034

L_033:  sub     esp, 12
        push    L_107
        call    puts
        add     esp, 16
        mov     eax, 1
L_034:  mov     ebx, dword [ebp-4H]
        leave
        ret


_Z4FillP9containerP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 72
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-3CH], eax
        mov     eax, dword [ebp+0CH]
        mov     dword [ebp-40H], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        sub     esp, 4
        lea     eax, [ebp-2CH]
        push    eax
        push    L_105
        push    dword [ebp-40H]
        call    __isoc99_fscanf
        add     esp, 16
        mov     dword [ebp-24H], eax
        cmp     dword [ebp-24H], 1
        jz      L_035
        sub     esp, 12
        push    L_108
        call    puts
        add     esp, 16
        mov     eax, 1
        jmp     L_041

L_035:  mov     eax, dword [ebp-2CH]
        cmp     eax, 10000
        jle     L_036
        sub     esp, 8
        push    10000
        push    L_109
        call    printf
        add     esp, 16
        mov     eax, 1
        jmp     L_041

L_036:  mov     eax, dword [ebp-2CH]
        test    eax, eax
        jg      L_037
        sub     esp, 12
        push    L_110
        call    puts
        add     esp, 16
        mov     eax, 1
        jmp     L_041

L_037:  mov     dword [ebp-28H], 0
        jmp     L_040

L_038:  sub     esp, 8
        push    dword [ebp-40H]
        lea     eax, [ebp-20H]
        push    eax
        call    _Z8InNumberP6numberP8_IO_FILE
        add     esp, 16
        mov     dword [ebp-24H], eax
        cmp     dword [ebp-24H], 0
        jz      L_039
        mov     eax, dword [ebp-28H]
        add     eax, 1
        sub     esp, 8
        push    eax
        push    L_111
        call    printf
        add     esp, 16
        mov     eax, dword [ebp-24H]
        jmp     L_041

L_039:  sub     esp, 8
        lea     eax, [ebp-20H]
        push    eax
        push    dword [ebp-3CH]
        call    _Z3AddP9containerPK6number
        add     esp, 16
        add     dword [ebp-28H], 1
L_040:  mov     eax, dword [ebp-2CH]
        cmp     dword [ebp-28H], eax
        jl      L_038
        mov     eax, 0
L_041:  mov     edx, dword [ebp-0CH]

        sub     edx, dword [gs:14H]
        jz      L_042
        call    __stack_chk_fail
L_042:  leave
        ret


_Z10RandomFillP9containeriP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 56
        mov     eax, dword [ebp+8H]
        mov     dword [ebp-2CH], eax
        mov     eax, dword [ebp+10H]
        mov     dword [ebp-30H], eax

        mov     eax, dword [gs:14H]
        mov     dword [ebp-0CH], eax
        xor     eax, eax
        cmp     dword [ebp+0CH], 10000
        jle     L_043
        sub     esp, 8
        push    10000
        push    L_109
        call    printf
        add     esp, 16
        mov     eax, 1
        jmp     L_055

L_043:  cmp     dword [ebp-30H], 0
        jz      L_044
        sub     esp, 4
        push    dword [ebp+0CH]
        push    L_105
        push    dword [ebp-30H]
        call    fprintf
        add     esp, 16
L_044:  mov     dword [ebp-28H], 0
        jmp     L_054

L_045:  sub     esp, 8
        push    3
        push    0
        call    _ZL6Randomii
        add     esp, 16
        mov     dword [ebp-24H], eax
        cmp     dword [ebp-30H], 0
        jz      L_046
        sub     esp, 4
        push    dword [ebp-24H]
        push    L_105
        push    dword [ebp-30H]
        call    fprintf
        add     esp, 16
L_046:  cmp     dword [ebp-24H], 2
        je      L_049
        cmp     dword [ebp-24H], 2
        jg      L_053
        cmp     dword [ebp-24H], 0
        jz      L_047
        cmp     dword [ebp-24H], 1
        jz      L_048
        jmp     L_053

L_047:  mov     dword [ebp-20H], 0
        sub     esp, 12
        lea     eax, [ebp-20H]
        add     eax, 4
        push    eax
        call    _Z13RandInComplexP7complex
        add     esp, 16
        cmp     dword [ebp-30H], 0
        je      L_050
        fld     qword [ebp-1CH]
        fld     qword [ebp-14H]
        sub     esp, 8
        lea     esp, [esp-8H]
        fstp    qword [esp]
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_112
        push    dword [ebp-30H]
        call    fprintf
        add     esp, 32
        jmp     L_050

L_048:  mov     dword [ebp-20H], 1
        sub     esp, 12
        lea     eax, [ebp-20H]
        add     eax, 4
        push    eax
        call    _Z14RandInFractionP8fraction
        add     esp, 16
        cmp     dword [ebp-30H], 0
        jz      L_051
        mov     edx, dword [ebp-18H]
        mov     eax, dword [ebp-1CH]
        push    edx
        push    eax
        push    L_098
        push    dword [ebp-30H]
        call    fprintf
        add     esp, 16
        jmp     L_051

L_049:  mov     dword [ebp-20H], 2
        sub     esp, 12
        lea     eax, [ebp-20H]
        add     eax, 4
        push    eax
        call    _Z11RandInPolarP5polar
        add     esp, 16
        cmp     dword [ebp-30H], 0
        jz      L_052
        mov     edx, dword [ebp-10H]
        mov     eax, dword [ebp-14H]
        fld     qword [ebp-1CH]
        sub     esp, 8
        push    edx
        push    eax
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_113
        push    dword [ebp-30H]
        call    fprintf
        add     esp, 32
        jmp     L_052

L_050:  nop
        jmp     L_053

L_051:  nop
        jmp     L_053

L_052:  nop
L_053:  sub     esp, 8
        lea     eax, [ebp-20H]
        push    eax
        push    dword [ebp-2CH]
        call    _Z3AddP9containerPK6number
        add     esp, 16
        add     dword [ebp-28H], 1
L_054:  mov     eax, dword [ebp-28H]
        cmp     eax, dword [ebp+0CH]
        jl      L_045
        mov     eax, 0
L_055:  mov     edx, dword [ebp-0CH]

        sub     edx, dword [gs:14H]
        jz      L_056
        call    __stack_chk_fail
L_056:  leave
        ret


_Z3OutPK9containerP8_IO_FILE:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     dword [ebp-0CH], 0
        jmp     L_058

L_057:  sub     esp, 4
        push    dword [ebp-0CH]
        push    L_114
        push    dword [ebp+0CH]
        call    fprintf
        add     esp, 16
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-0CH]
        mov     eax, dword [eax+edx*4+4H]
        sub     esp, 8
        push    dword [ebp+0CH]
        push    eax
        call    _Z9OutNumberPK6numberP8_IO_FILE
        add     esp, 16
        add     dword [ebp-0CH], 1
L_058:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        cmp     dword [ebp-0CH], eax
        jl      L_057
        nop
        nop
        leave
        ret


_Z12StraightSortP9container:
        push    ebp
        mov     ebp, esp
        sub     esp, 40
        mov     dword [ebp-14H], 0
        jmp     L_064

L_059:  mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-14H]
        mov     eax, dword [eax+edx*4+4H]
        mov     dword [ebp-0CH], eax
        mov     eax, dword [ebp-14H]
        mov     dword [ebp-10H], eax
        jmp     L_061

L_060:  mov     eax, dword [ebp-10H]
        lea     edx, [eax-1H]
        mov     eax, dword [ebp+8H]
        mov     ecx, dword [eax+edx*4+4H]
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        mov     dword [eax+edx*4+4H], ecx
        sub     dword [ebp-10H], 1
L_061:  cmp     dword [ebp-10H], 0
        jle     L_062
        mov     eax, dword [ebp-10H]
        lea     edx, [eax-1H]
        mov     eax, dword [ebp+8H]
        mov     eax, dword [eax+edx*4+4H]
        sub     esp, 12
        push    eax
        call    _Z18CastNumberToDoublePK6number
        add     esp, 16
        fstp    qword [ebp-20H]
        sub     esp, 12
        push    dword [ebp-0CH]
        call    _Z18CastNumberToDoublePK6number
        add     esp, 16
        fld     qword [ebp-20H]
        fcomip  st0  , st1
        fstp    st0
        jbe     L_062
        mov     eax, 1
        jmp     L_063

L_062:  mov     eax, 0
L_063:  test    al, al
        jnz     L_060
        mov     eax, dword [ebp+8H]
        mov     edx, dword [ebp-10H]
        mov     ecx, dword [ebp-0CH]
        mov     dword [eax+edx*4+4H], ecx
        add     dword [ebp-14H], 1
L_064:  mov     eax, dword [ebp+8H]
        mov     eax, dword [eax]
        cmp     dword [ebp-14H], eax
        jl      L_059
        nop
        nop
        leave
        ret


_Z13is_flag_validPKcPS0_i:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     dword [ebp-0CH], 0
        jmp     L_067

L_065:  mov     eax, dword [ebp-0CH]
        lea     edx, [eax*4]
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     eax, dword [eax]
        sub     esp, 8
        push    eax
        push    dword [ebp+8H]
        call    strcmp
        add     esp, 16
        test    eax, eax
        jnz     L_066
        mov     eax, 1
        jmp     L_068

L_066:  add     dword [ebp-0CH], 1
L_067:  mov     eax, dword [ebp-0CH]
        cmp     eax, dword [ebp+10H]
        jl      L_065
        mov     eax, 0
L_068:  leave
        ret


_Z9find_flagiPPcPPKci:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        mov     dword [ebp-0CH], 0
        jmp     L_071

L_069:  mov     eax, dword [ebp-0CH]
        lea     edx, [eax*4]
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     eax, dword [eax]
        sub     esp, 4
        push    dword [ebp+14H]
        push    dword [ebp+10H]
        push    eax
        call    _Z13is_flag_validPKcPS0_i
        add     esp, 16
        test    al, al
        jz      L_070
        mov     eax, dword [ebp-0CH]
        jmp     L_072

L_070:  add     dword [ebp-0CH], 1
L_071:  mov     eax, dword [ebp-0CH]
        cmp     eax, dword [ebp+8H]
        jl      L_069
        mov     eax, 4294967295
L_072:  leave
        ret


_Z14get_input_fileiPPcPKc:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        push    2
        push    kInputFlags
        push    dword [ebp+0CH]
        push    dword [ebp+8H]
        call    _Z9find_flagiPPcPPKci
        add     esp, 16
        mov     dword [ebp-0CH], eax
        cmp     dword [ebp-0CH], -1
        jz      L_074
        mov     eax, dword [ebp-0CH]
        add     eax, 1
        cmp     dword [ebp+8H], eax
        jle     L_074
        mov     eax, dword [ebp-0CH]
        add     eax, 1
        lea     edx, [eax*4]
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     eax, dword [eax]
        sub     esp, 8
        push    0
        push    eax
        call    access
        add     esp, 16
        cmp     eax, -1
        setne   al
        test    al, al
        jz      L_073
        mov     eax, dword [ebp-0CH]
        add     eax, 1
        lea     edx, [eax*4]
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     eax, dword [eax]
        sub     esp, 8
        push    dword [ebp+10H]
        push    eax
        call    fopen
        add     esp, 16
        jmp     L_075

L_073:  sub     esp, 12
        push    L_115
        call    puts
        add     esp, 16
        sub     esp, 12
        push    1
        call    exit
L_074:  sub     esp, 12
        push    L_116
        call    puts
        add     esp, 16
        sub     esp, 12
        push    1
        call    exit
L_075:  leave
        ret


_Z15get_output_fileiPPcPKc:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        push    2
        push    kOutputFlags
        push    dword [ebp+0CH]
        push    dword [ebp+8H]
        call    _Z9find_flagiPPcPPKci
        add     esp, 16
        mov     dword [ebp-0CH], eax
        cmp     dword [ebp-0CH], -1
        jz      L_076
        mov     eax, dword [ebp-0CH]
        add     eax, 1
        cmp     dword [ebp+8H], eax
        jle     L_076
        mov     eax, dword [ebp-0CH]
        add     eax, 1
        lea     edx, [eax*4]
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     eax, dword [eax]
        sub     esp, 8
        push    dword [ebp+10H]
        push    eax
        call    fopen
        add     esp, 16
        jmp     L_077

L_076:  sub     esp, 12
        push    L_117
        call    puts
        add     esp, 16
        sub     esp, 12
        push    1
        call    exit
L_077:  leave
        ret


_Z21get_random_input_fileiPPc:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        push    1
        push    kRandomInputFlags
        push    dword [ebp+0CH]
        push    dword [ebp+8H]
        call    _Z9find_flagiPPcPPKci
        add     esp, 16
        mov     dword [ebp-0CH], eax
        cmp     dword [ebp-0CH], -1
        jz      L_079
        mov     eax, dword [ebp-0CH]
        add     eax, 1
        cmp     dword [ebp+8H], eax
        jle     L_078
        mov     eax, dword [ebp-0CH]
        add     eax, 1
        lea     edx, [eax*4]
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     eax, dword [eax]
        sub     esp, 8
        push    L_118
        push    eax
        call    fopen
        add     esp, 16
        jmp     L_080

L_078:  sub     esp, 12
        push    L_119
        call    puts
        add     esp, 16
        sub     esp, 12
        push    1
        call    exit
L_079:  mov     eax, 0
L_080:  leave
        ret


_Z15get_random_sizeiPPc:
        push    ebp
        mov     ebp, esp
        sub     esp, 24
        push    2
        push    kRandomFlags
        push    dword [ebp+0CH]
        push    dword [ebp+8H]
        call    _Z9find_flagiPPcPPKci
        add     esp, 16
        mov     dword [ebp-10H], eax
        cmp     dword [ebp-10H], -1
        jnz     L_081
        mov     eax, 4294967295
        jmp     L_084

L_081:  mov     eax, dword [ebp+8H]
        cmp     eax, dword [ebp-10H]
        jg      L_082
        sub     esp, 12
        push    L_120
        call    puts
        add     esp, 16
        sub     esp, 12
        push    1
        call    exit
L_082:  mov     eax, dword [ebp-10H]
        add     eax, 1
        lea     edx, [eax*4]
        mov     eax, dword [ebp+0CH]
        add     eax, edx
        mov     eax, dword [eax]
        sub     esp, 12
        push    eax
        call    atoi
        add     esp, 16
        mov     dword [ebp-0CH], eax
        cmp     dword [ebp-0CH], 0
        jg      L_083
        sub     esp, 12
        push    L_121
        call    puts
        add     esp, 16
        sub     esp, 12
        push    1
        call    exit
L_083:  mov     eax, dword [ebp-0CH]
L_084:  leave
        ret


main:
        lea     ecx, [esp+4H]
        and     esp, 0FFFFFFF0H
        push    dword [ecx-4H]
        push    ebp
        mov     ebp, esp
        push    ebx
        push    ecx
        sub     esp, 32
        mov     ebx, ecx
        call    clock
        mov     dword [ebp-24H], eax
        cmp     dword [ebx], 4
        jg      L_086
        cmp     dword [ebx], 2
        jnz     L_085
        mov     eax, dword [ebx+4H]
        add     eax, 4
        mov     eax, dword [eax]
        sub     esp, 4
        push    2
        push    kHelpFlags
        push    eax
        call    _Z13is_flag_validPKcPS0_i
        add     esp, 16
        test    al, al
        jz      L_085
        sub     esp, 12
        push    L_122
        call    printf
        add     esp, 16
        sub     esp, 12
        push    0
        call    exit
L_085:  sub     esp, 12
        push    L_123
        call    printf
        add     esp, 16
        sub     esp, 12
        push    1
        call    exit
L_086:  sub     esp, 12
        push    L_124
        call    puts
        add     esp, 16
        call    _Z4Ctorv
        mov     dword [ebp-20H], eax
        sub     esp, 4
        push    L_118
        push    dword [ebx+4H]
        push    dword [ebx]
        call    _Z15get_output_fileiPPcPKc
        add     esp, 16
        mov     dword [ebp-1CH], eax
        sub     esp, 8
        push    dword [ebx+4H]
        push    dword [ebx]
        call    _Z15get_random_sizeiPPc
        add     esp, 16
        mov     dword [ebp-18H], eax
        cmp     dword [ebp-18H], -1
        jnz     L_087
        sub     esp, 4
        push    L_125
        push    dword [ebx+4H]
        push    dword [ebx]
        call    _Z14get_input_fileiPPcPKc
        add     esp, 16
        mov     dword [ebp-10H], eax
        sub     esp, 8
        push    dword [ebp-10H]
        push    dword [ebp-20H]
        call    _Z4FillP9containerP8_IO_FILE
        add     esp, 16
        mov     dword [error_code], eax
        sub     esp, 12
        push    dword [ebp-10H]
        call    fclose
        add     esp, 16
        sub     esp, 12
        push    L_126
        call    puts
        add     esp, 16
        jmp     L_088

L_087:  sub     esp, 12
        push    0
        call    time
        add     esp, 16
        sub     esp, 12
        push    eax
        call    srand
        add     esp, 16
        sub     esp, 8
        push    dword [ebx+4H]
        push    dword [ebx]
        call    _Z21get_random_input_fileiPPc
        add     esp, 16
        mov     dword [ebp-14H], eax
        sub     esp, 4
        push    dword [ebp-14H]
        push    dword [ebp-18H]
        push    dword [ebp-20H]
        call    _Z10RandomFillP9containeriP8_IO_FILE
        add     esp, 16
        mov     dword [error_code], eax
        sub     esp, 12
        push    L_127
        call    puts
        add     esp, 16
        cmp     dword [ebp-14H], 0
        jz      L_088
        sub     esp, 12
        push    dword [ebp-14H]
        call    fclose
        add     esp, 16
L_088:  mov     eax, dword [error_code]
        test    eax, eax
        jz      L_089
        sub     esp, 12
        push    L_128
        call    puts
        add     esp, 16
        mov     eax, dword [error_code]
        jmp     L_090

L_089:  sub     esp, 8
        push    dword [ebp-1CH]
        push    dword [ebp-20H]
        call    _Z3OutPK9containerP8_IO_FILE
        add     esp, 16
        push    dword [ebp-1CH]
        push    25
        push    1
        push    L_129
        call    fwrite
        add     esp, 16
        mov     eax, dword [ebp-20H]
        mov     eax, dword [eax]
        sub     esp, 4
        push    eax
        push    L_130
        push    dword [ebp-1CH]
        call    fprintf
        add     esp, 16
        push    dword [ebp-1CH]
        push    37
        push    1
        push    L_131
        call    fwrite
        add     esp, 16
        sub     esp, 12
        push    L_132
        call    puts
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-20H]
        call    _Z12StraightSortP9container
        add     esp, 16
        sub     esp, 8
        push    dword [ebp-1CH]
        push    dword [ebp-20H]
        call    _Z3OutPK9containerP8_IO_FILE
        add     esp, 16
        sub     esp, 12
        push    L_133
        call    puts
        add     esp, 16
        sub     esp, 12
        push    dword [ebp-20H]
        call    _Z4DtorP9container
        add     esp, 16
        mov     dword [ebp-20H], 0
        sub     esp, 12
        push    dword [ebp-1CH]
        call    fclose
        add     esp, 16
        call    clock
        mov     dword [ebp-0CH], eax
        sub     esp, 8
        push    dword [ebp-24H]
        push    dword [ebp-0CH]
        call    difftime
        add     esp, 16
        fld     qword [L_139]
        fdivp   st1, st0
        sub     esp, 4
        lea     esp, [esp-8H]
        fstp    qword [esp]
        push    L_134
        call    printf
        add     esp, 16
        mov     eax, 0
L_090:  lea     esp, [ebp-8H]
        pop     ecx
        pop     ebx
        pop     ebp
        lea     esp, [ecx-4H]
        ret



SECTION .data   align=4

kHelpFlags:
        dd L_091+242H
        dd L_091+245H

kInputFlags:
        dd L_091+250H
        dd L_091+253H

kOutputFlags:
        dd L_091+260H
        dd L_091+263H

kRandomFlags:
        dd L_091+270H
        dd L_091+273H

kRandomInputFlags:
        dd L_091+280H


SECTION .bss    align=4

error_code:
        resd    1


SECTION .rodata align=8

L_091:
        db 25H, 64H, 20H, 25H, 64H, 00H

L_092:
        db 43H, 6FH, 75H, 6CH, 64H, 20H, 6EH, 6FH
        db 74H, 20H, 70H, 61H, 72H, 73H, 65H, 20H
        db 66H, 72H, 61H, 63H, 74H, 69H, 6FH, 6EH
        db 00H

L_093:
        db 44H, 65H, 6EH, 6FH, 6DH, 69H, 6EH, 61H
        db 74H, 6FH, 72H, 20H, 63H, 61H, 6EH, 6EH
        db 6FH, 74H, 20H, 62H, 65H, 20H, 30H, 00H
        db 00H

L_094:
        db 66H, 72H, 61H, 63H, 74H, 69H, 6FH, 6EH
        db 3AH, 20H, 25H, 64H, 2FH, 25H, 64H, 3BH
        db 20H, 64H, 6FH, 75H, 62H, 6CH, 65H, 20H
        db 72H, 65H, 70H, 72H, 65H, 73H, 65H, 6EH
        db 74H, 61H, 74H, 69H, 6FH, 6EH, 3AH, 20H
        db 25H, 6CH, 66H, 0AH, 00H

L_095:
        db 25H, 6CH, 66H, 20H, 25H, 6CH, 66H, 00H
        db 00H, 00H, 00H

L_096:
        db 43H, 6FH, 75H, 6CH, 64H, 20H, 6EH, 6FH
        db 74H, 20H, 70H, 61H, 72H, 73H, 65H, 20H
        db 63H, 6FH, 6DH, 70H, 6CH, 65H, 78H, 20H
        db 6EH, 75H, 6DH, 62H, 65H, 72H, 00H, 00H

L_097:
        db 63H, 6FH, 6DH, 70H, 6CH, 65H, 78H, 20H
        db 6EH, 75H, 6DH, 62H, 65H, 72H, 3AH, 20H
        db 28H, 25H, 6CH, 66H, 2CH, 20H, 25H, 6CH
        db 66H, 29H, 6CH, 3BH, 20H, 64H, 6FH, 75H
        db 62H, 6CH, 65H, 20H, 72H, 65H, 70H, 72H
        db 65H, 73H, 65H, 6EH, 74H, 61H, 74H, 69H
        db 6FH, 6EH, 3AH, 20H, 25H, 6CH, 66H, 0AH
        db 00H

L_098:
        db 25H, 64H, 20H, 25H, 64H, 0AH, 00H

L_099:
        db 43H, 6FH, 75H, 6CH, 64H, 20H, 6EH, 6FH
        db 74H, 20H, 70H, 61H, 72H, 73H, 65H, 20H
        db 70H, 6FH, 69H, 6EH, 74H, 20H, 63H, 6FH
        db 6FH, 72H, 64H, 69H, 6EH, 61H, 74H, 65H
        db 73H, 00H

L_100:
        db 28H, 25H, 64H, 2CH, 20H, 25H, 64H, 29H
        db 00H

L_101:
        db 25H, 6CH, 66H, 00H, 00H

L_102:
        db 43H, 6FH, 75H, 6CH, 64H, 20H, 6EH, 6FH
        db 74H, 20H, 70H, 61H, 72H, 73H, 65H, 20H
        db 70H, 6FH, 6CH, 61H, 72H, 20H, 6EH, 75H
        db 6DH, 62H, 65H, 72H, 20H, 61H, 6EH, 67H
        db 6CH, 65H, 00H

L_103:
        db 70H, 6FH, 6CH, 61H, 72H, 3AH, 20H, 77H
        db 3DH, 25H, 6CH, 66H, 3BH, 20H, 63H, 6FH
        db 6FH, 72H, 64H, 73H, 3DH, 00H, 00H, 00H
        db 00H

L_104:
        db 20H, 3BH, 20H, 64H, 6FH, 75H, 62H, 6CH
        db 65H, 20H, 72H, 65H, 70H, 72H, 65H, 73H
        db 65H, 6EH, 74H, 61H, 74H, 69H, 6FH, 6EH
        db 3AH, 20H, 25H, 6CH, 66H, 0AH, 00H

L_105:
        db 25H, 64H, 0AH, 00H

L_106:
        db 43H, 6FH, 75H, 6CH, 64H, 20H, 6EH, 6FH
        db 74H, 20H, 70H, 61H, 72H, 73H, 65H, 20H
        db 6EH, 75H, 6DH, 62H, 65H, 72H, 20H, 74H
        db 79H, 70H, 65H, 00H

L_107:
        db 43H, 6FH, 75H, 6CH, 64H, 20H, 6EH, 6FH
        db 74H, 20H, 61H, 64H, 64H, 20H, 74H, 6FH
        db 20H, 63H, 6FH, 6EH, 74H, 61H, 69H, 6EH
        db 65H, 72H, 00H, 00H, 00H

L_108:
        db 43H, 6FH, 75H, 6CH, 64H, 20H, 6EH, 6FH
        db 74H, 20H, 70H, 61H, 72H, 73H, 65H, 20H
        db 6EH, 75H, 6DH, 62H, 65H, 72H, 20H, 6FH
        db 66H, 20H, 65H, 6CH, 65H, 6DH, 65H, 6EH
        db 74H, 73H, 00H, 00H

L_109:
        db 4EH, 75H, 6DH, 62H, 65H, 72H, 20H, 6FH
        db 66H, 20H, 65H, 6CH, 65H, 6DH, 65H, 6EH
        db 74H, 73H, 20H, 3EH, 20H, 6DH, 61H, 78H
        db 5FH, 63H, 6FH, 6EH, 74H, 61H, 69H, 6EH
        db 65H, 72H, 5FH, 73H, 69H, 7AH, 65H, 3AH
        db 20H, 25H, 64H, 0AH, 00H, 00H, 00H, 00H

L_110:
        db 4EH, 75H, 6DH, 62H, 65H, 72H, 20H, 6FH
        db 66H, 20H, 65H, 6CH, 65H, 6DH, 65H, 6EH
        db 74H, 73H, 20H, 63H, 61H, 6EH, 6EH, 6FH
        db 74H, 20H, 62H, 65H, 20H, 3CH, 3DH, 20H
        db 30H, 00H

L_111:
        db 43H, 6FH, 75H, 6CH, 64H, 20H, 6EH, 6FH
        db 74H, 20H, 70H, 61H, 72H, 73H, 65H, 20H
        db 25H, 64H, 20H, 6EH, 75H, 6DH, 62H, 65H
        db 72H, 0AH, 00H

L_112:
        db 25H, 6CH, 66H, 20H, 25H, 6CH, 66H, 0AH
        db 00H

L_113:
        db 25H, 6CH, 66H, 20H, 25H, 64H, 20H, 25H
        db 64H, 0AH, 00H

L_114:
        db 25H, 64H, 3AH, 20H, 00H, 2DH, 68H, 00H
        db 2DH, 2DH, 68H, 65H, 6CH, 70H, 00H

_ZL15kHelpFlagsCount:
        dd 00000002H, 2D00692DH
        dd 706E692DH, 00007475H

_ZL16kInputFlagsCount:
        dd 00000002H, 2D006F2DH
        dd 74756F2DH, 00747570H

_ZL17kOutputFlagsCount:
        dd 00000002H, 2D00722DH
        dd 6E61722DH, 006D6F64H

_ZL17kRandomFlagsCount:
        dd 00000002H, 61722D2DH
        dd 6D6F646EH, 706E692DH
        dd 00007475H

_ZL22kRandomInputFlagsCount:
        dd 00000001H

L_115:
        db 49H, 6EH, 70H, 75H, 74H, 20H, 66H, 69H
        db 6CH, 65H, 20H, 64H, 6FH, 65H, 73H, 20H
        db 6EH, 6FH, 74H, 20H, 65H, 78H, 69H, 73H
        db 74H, 73H, 00H, 00H

L_116:
        db 49H, 6EH, 70H, 75H, 74H, 20H, 66H, 6CH
        db 61H, 67H, 20H, 77H, 61H, 73H, 20H, 6EH
        db 6FH, 74H, 20H, 73H, 70H, 65H, 63H, 69H
        db 66H, 69H, 65H, 64H, 0AH, 54H, 72H, 79H
        db 20H, 27H, 70H, 72H, 6FH, 67H, 72H, 61H
        db 6DH, 20H, 2DH, 2DH, 68H, 65H, 6CH, 70H
        db 28H, 2DH, 68H, 29H, 27H, 20H, 66H, 6FH
        db 72H, 20H, 6DH, 6FH, 72H, 65H, 20H, 69H
        db 6EH, 66H, 6FH, 72H, 6DH, 61H, 74H, 69H
        db 6FH, 6EH, 2EH, 00H

L_117:
        db 4FH, 75H, 74H, 70H, 75H, 74H, 20H, 66H
        db 6CH, 61H, 67H, 20H, 77H, 61H, 73H, 20H
        db 6EH, 6FH, 74H, 20H, 73H, 70H, 65H, 63H
        db 69H, 66H, 69H, 65H, 64H, 0AH, 54H, 72H
        db 79H, 20H, 27H, 70H, 72H, 6FH, 67H, 72H
        db 61H, 6DH, 20H, 2DH, 2DH, 68H, 65H, 6CH
        db 70H, 28H, 2DH, 68H, 29H, 27H, 20H, 66H
        db 6FH, 72H, 20H, 6DH, 6FH, 72H, 65H, 20H
        db 69H, 6EH, 66H, 6FH, 72H, 6DH, 61H, 74H
        db 69H, 6FH, 6EH, 2EH, 00H

L_118:
        db 77H, 00H, 00H

L_119:
        db 52H, 61H, 6EH, 64H, 6FH, 6DH, 20H, 69H
        db 6EH, 70H, 75H, 74H, 20H, 66H, 69H, 6CH
        db 65H, 20H, 77H, 61H, 73H, 20H, 6EH, 6FH
        db 74H, 20H, 73H, 70H, 65H, 63H, 69H, 66H
        db 69H, 65H, 64H, 0AH, 54H, 72H, 79H, 20H
        db 27H, 70H, 72H, 6FH, 67H, 72H, 61H, 6DH
        db 20H, 2DH, 2DH, 68H, 65H, 6CH, 70H, 28H
        db 2DH, 68H, 29H, 27H, 20H, 66H, 6FH, 72H
        db 20H, 6DH, 6FH, 72H, 65H, 20H, 69H, 6EH
        db 66H, 6FH, 72H, 6DH, 61H, 74H, 69H, 6FH
        db 6EH, 2EH, 00H

L_120:
        db 27H, 2DH, 72H, 27H, 20H, 66H, 6CH, 61H
        db 67H, 20H, 68H, 61H, 73H, 20H, 6EH, 6FH
        db 20H, 76H, 61H, 6CH, 75H, 65H, 00H, 00H
        db 00H

L_121:
        db 53H, 69H, 7AH, 65H, 20H, 63H, 6FH, 75H
        db 6CH, 64H, 20H, 6EH, 6FH, 74H, 20H, 62H
        db 65H, 20H, 6EH, 65H, 67H, 61H, 74H, 69H
        db 76H, 65H, 20H, 6FH, 72H, 20H, 30H, 00H

L_122:
        db 48H, 53H, 45H, 20H, 55H, 4EH, 49H, 56H
        db 45H, 52H, 53H, 49H, 54H, 59H, 2CH, 20H
        db 32H, 30H, 32H, 31H, 2DH, 32H, 30H, 32H
        db 32H, 2CH, 20H, 4BH, 75H, 6CH, 69H, 6BH
        db 6FH, 76H, 20H, 42H, 6FH, 67H, 64H, 61H
        db 6EH, 2CH, 20H, 66H, 69H, 72H, 73H, 74H
        db 20H, 70H, 72H, 6FH, 6AH, 65H, 63H, 74H
        db 20H, 70H, 72H, 6FH, 67H, 72H, 61H, 6DH
        db 2EH, 0AH, 54H, 61H, 73H, 6BH, 3AH, 20H
        db 31H, 31H, 2CH, 20H, 46H, 75H, 6EH, 63H
        db 74H, 69H, 6FH, 6EH, 3AH, 20H, 31H, 30H
        db 0AH, 0AH, 55H, 73H, 61H, 67H, 65H, 3AH
        db 20H, 70H, 72H, 6FH, 67H, 72H, 61H, 6DH
        db 20H, 5BH, 4FH, 50H, 54H, 49H, 4FH, 4EH
        db 53H, 5DH, 2EH, 2EH, 2EH, 0AH, 0AH, 4FH
        db 50H, 54H, 49H, 4FH, 4EH, 53H, 3AH, 0AH
        db 20H, 2DH, 69H, 2CH, 20H, 2DH, 2DH, 69H
        db 6EH, 70H, 75H, 74H, 09H, 09H, 20H, 53H
        db 70H, 65H, 63H, 69H, 66H, 79H, 20H, 69H
        db 6EH, 70H, 75H, 74H, 20H, 66H, 69H, 6CH
        db 65H, 0AH, 20H, 2DH, 6FH, 2CH, 20H, 2DH
        db 2DH, 6FH, 75H, 74H, 70H, 75H, 74H, 09H
        db 09H, 20H, 53H, 70H, 65H, 63H, 69H, 66H
        db 79H, 20H, 6FH, 75H, 74H, 70H, 75H, 74H
        db 20H, 66H, 69H, 6CH, 65H, 0AH, 09H, 09H
        db 09H, 09H, 20H, 69H, 66H, 20H, 66H, 69H
        db 6CH, 65H, 20H, 64H, 6FH, 65H, 73H, 20H
        db 6EH, 6FH, 74H, 20H, 65H, 78H, 69H, 73H
        db 74H, 20H, 2DH, 20H, 70H, 72H, 6FH, 67H
        db 72H, 61H, 6DH, 20H, 77H, 69H, 6CH, 6CH
        db 20H, 63H, 72H, 65H, 61H, 74H, 65H, 20H
        db 6FH, 6EH, 65H, 0AH, 20H, 2DH, 72H, 2CH
        db 20H, 2DH, 2DH, 72H, 61H, 6EH, 64H, 6FH
        db 6DH, 09H, 09H, 20H, 47H, 65H, 6EH, 65H
        db 72H, 61H, 74H, 65H, 20H, 72H, 61H, 6EH
        db 64H, 6FH, 6DH, 20H, 69H, 6EH, 70H, 75H
        db 74H, 2EH, 20H, 52H, 61H, 6EH, 67H, 65H
        db 20H, 5BH, 31H, 2CH, 20H, 31H, 30H, 30H
        db 30H, 30H, 5DH, 0AH, 20H, 2DH, 2DH, 72H
        db 61H, 6EH, 64H, 6FH, 6DH, 2DH, 69H, 6EH
        db 70H, 75H, 74H, 09H, 09H, 20H, 43H, 72H
        db 65H, 61H, 74H, 65H, 20H, 66H, 69H, 6CH
        db 65H, 20H, 77H, 69H, 74H, 68H, 20H, 67H
        db 65H, 6EH, 65H, 72H, 61H, 74H, 65H, 64H
        db 20H, 69H, 6EH, 70H, 75H, 74H, 0AH, 0AH
        db 0AH, 49H, 4EH, 50H, 55H, 54H, 20H, 53H
        db 50H, 45H, 43H, 49H, 46H, 49H, 43H, 41H
        db 54H, 49H, 4FH, 4EH, 3AH, 0AH, 49H, 6EH
        db 70H, 75H, 74H, 20H, 66H, 69H, 6CH, 65H
        db 20H, 73H, 74H, 61H, 72H, 74H, 73H, 20H
        db 77H, 69H, 74H, 68H, 20H, 6EH, 75H, 6DH
        db 62H, 65H, 72H, 20H, 6FH, 66H, 20H, 65H
        db 6CH, 65H, 6DH, 65H, 6EH, 74H, 73H, 20H
        db 28H, 69H, 6EH, 74H, 5FH, 33H, 32H, 29H
        db 0AH, 45H, 6CH, 65H, 6DH, 65H, 6EH, 74H
        db 73H, 20H, 63H, 6FH, 6EH, 73H, 69H, 73H
        db 74H, 20H, 6FH, 66H, 20H, 66H, 69H, 65H
        db 6CH, 64H, 73H, 3AH, 0AH, 09H, 20H, 60H
        db 65H, 6CH, 65H, 6DH, 65H, 6EH, 74H, 5FH
        db 74H, 79H, 70H, 65H, 60H, 3AH, 20H, 30H
        db 20H, 2DH, 20H, 43H, 4FH, 4DH, 50H, 4CH
        db 45H, 58H, 2CH, 20H, 31H, 20H, 2DH, 20H
        db 46H, 52H, 41H, 43H, 54H, 49H, 4FH, 4EH
        db 2CH, 20H, 32H, 20H, 2DH, 20H, 50H, 4FH
        db 4CH, 41H, 52H, 0AH, 09H, 20H, 60H, 65H
        db 6CH, 65H, 6DH, 65H, 6EH, 74H, 5FH, 64H
        db 65H, 73H, 63H, 72H, 69H, 70H, 74H, 69H
        db 6FH, 6EH, 60H, 3AH, 0AH, 09H, 09H, 20H
        db 43H, 4FH, 4DH, 50H, 4CH, 45H, 58H, 3AH
        db 20H, 41H, 20H, 70H, 61H, 69H, 72H, 20H
        db 6FH, 66H, 20H, 64H, 6FH, 75H, 62H, 6CH
        db 65H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H
        db 73H, 20H, 2DH, 20H, 72H, 65H, 61H, 6CH
        db 20H, 61H, 6EH, 64H, 20H, 69H, 6DH, 61H
        db 67H, 69H, 6EH, 61H, 72H, 79H, 20H, 70H
        db 61H, 72H, 74H, 73H, 2EH, 0AH, 09H, 09H
        db 09H, 20H, 20H, 65H, 78H, 61H, 6DH, 70H
        db 6CH, 65H, 3AH, 20H, 60H, 31H, 30H, 2EH
        db 31H, 20H, 31H, 32H, 2EH, 30H, 60H, 20H
        db 2DH, 3EH, 20H, 63H, 6FH, 6DH, 70H, 6CH
        db 65H, 78H, 3AH, 20H, 28H, 72H, 65H, 61H
        db 6CH, 3DH, 31H, 30H, 2EH, 31H, 2CH, 20H
        db 69H, 6DH, 61H, 67H, 69H, 6EH, 61H, 72H
        db 79H, 3DH, 31H, 32H, 2EH, 30H, 29H, 0AH
        db 09H, 09H, 20H, 46H, 52H, 41H, 43H, 54H
        db 49H, 4FH, 4EH, 3AH, 20H, 41H, 20H, 70H
        db 61H, 69H, 72H, 20H, 6FH, 66H, 20H, 69H
        db 6EH, 74H, 5FH, 33H, 32H, 20H, 6EH, 75H
        db 6DH, 62H, 65H, 72H, 73H, 20H, 2DH, 20H
        db 6EH, 75H, 6DH, 65H, 72H, 61H, 74H, 6FH
        db 72H, 20H, 61H, 6EH, 64H, 20H, 64H, 65H
        db 6EH, 6FH, 6DH, 69H, 6EH, 61H, 74H, 6FH
        db 72H, 2EH, 0AH, 09H, 09H, 09H, 20H, 20H
        db 65H, 78H, 61H, 6DH, 70H, 6CH, 65H, 3AH
        db 20H, 60H, 31H, 20H, 32H, 60H, 20H, 2DH
        db 3EH, 20H, 66H, 72H, 61H, 63H, 74H, 69H
        db 6FH, 6EH, 3AH, 20H, 31H, 2FH, 32H, 0AH
        db 09H, 09H, 20H, 50H, 4FH, 4CH, 41H, 52H
        db 3AH, 20H, 41H, 20H, 44H, 6FH, 75H, 62H
        db 6CH, 65H, 20H, 6EH, 75H, 6DH, 62H, 65H
        db 72H, 20H, 2DH, 20H, 61H, 6EH, 67H, 6CH
        db 65H, 20H, 61H, 6EH, 64H, 20H, 61H, 20H
        db 70H, 61H, 69H, 72H, 20H, 6FH, 66H, 20H
        db 69H, 6EH, 74H, 5FH, 33H, 32H, 20H, 6EH
        db 75H, 6DH, 62H, 65H, 72H, 73H, 20H, 2DH
        db 20H, 63H, 6FH, 6FH, 72H, 64H, 69H, 6EH
        db 61H, 74H, 65H, 73H, 2EH, 0AH, 09H, 09H
        db 09H, 20H, 20H, 65H, 78H, 61H, 6DH, 70H
        db 6CH, 65H, 3AH, 20H, 60H, 31H, 30H, 2EH
        db 31H, 20H, 33H, 20H, 34H, 60H, 20H, 2DH
        db 3EH, 20H, 70H, 6FH, 6CH, 61H, 72H, 3AH
        db 20H, 28H, 61H, 6EH, 67H, 6CH, 65H, 3DH
        db 31H, 30H, 2EH, 31H, 2CH, 20H, 63H, 6FH
        db 6FH, 72H, 64H, 73H, 3DH, 28H, 78H, 3DH
        db 33H, 2CH, 79H, 3DH, 34H, 29H, 29H, 0AH
        db 53H, 65H, 65H, 20H, 65H, 78H, 61H, 6DH
        db 70H, 6CH, 65H, 20H, 61H, 74H, 20H, 2FH
        db 74H, 65H, 73H, 74H, 73H, 2FH, 65H, 78H
        db 61H, 6DH, 70H, 6CH, 65H, 2EH, 74H, 78H
        db 74H, 00H, 00H, 00H

L_123:
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H
        db 74H, 20H, 70H, 72H, 6FH, 67H, 72H, 61H
        db 6DH, 20H, 69H, 6EH, 70H, 75H, 74H, 0AH
        db 54H, 72H, 79H, 20H, 27H, 70H, 72H, 6FH
        db 67H, 72H, 61H, 6DH, 20H, 2DH, 2DH, 68H
        db 65H, 6CH, 70H, 28H, 2DH, 68H, 29H, 27H
        db 20H, 66H, 6FH, 72H, 20H, 6DH, 6FH, 72H
        db 65H, 20H, 69H, 6EH, 66H, 6FH, 72H, 6DH
        db 61H, 74H, 69H, 6FH, 6EH, 2EH, 00H

L_124:
        db 49H, 6EH, 69H, 74H, 69H, 61H, 6CH, 69H
        db 7AH, 69H, 6EH, 67H, 20H, 70H, 72H, 6FH
        db 67H, 72H, 61H, 6DH, 00H

L_125:
        db 72H, 00H

L_126:
        db 50H, 61H, 72H, 73H, 65H, 64H, 20H, 69H
        db 6EH, 70H, 75H, 74H, 00H

L_127:
        db 47H, 65H, 6EH, 65H, 72H, 61H, 74H, 65H
        db 64H, 20H, 69H, 6EH, 70H, 75H, 74H, 00H

L_128:
        db 45H, 72H, 72H, 6FH, 72H, 20H, 6FH, 63H
        db 63H, 75H, 72H, 72H, 65H, 64H, 00H

L_129:
        db 3DH, 3DH, 3DH, 3DH, 3DH, 3DH, 3DH, 3DH
        db 3DH, 3DH, 3DH, 3DH, 3DH, 3DH, 3DH, 3DH
        db 3DH, 3DH, 3DH, 3DH, 3DH, 3DH, 3DH, 0AH
        db 0AH, 00H

L_130:
        db 6EH, 75H, 6DH, 62H, 65H, 72H, 20H, 6FH
        db 66H, 20H, 65H, 6CH, 65H, 6DH, 65H, 6EH
        db 74H, 73H, 3AH, 20H, 25H, 64H, 0AH, 00H

L_131:
        db 0AH, 3DH, 3DH, 3DH, 3DH, 7CH, 20H, 53H
        db 74H, 72H, 61H, 69H, 67H, 68H, 74H, 20H
        db 53H, 6FH, 72H, 74H, 20H, 72H, 65H, 73H
        db 75H, 6CH, 74H, 73H, 20H, 7CH, 20H, 3DH
        db 3DH, 3DH, 3DH, 0AH, 0AH, 00H

L_132:
        db 53H, 6FH, 72H, 74H, 69H, 6EH, 67H, 20H
        db 65H, 6CH, 65H, 6DH, 65H, 6EH, 74H, 73H
        db 00H

L_133:
        db 45H, 78H, 69H, 74H, 69H, 6EH, 67H, 20H
        db 70H, 72H, 6FH, 67H, 72H, 61H, 6DH, 00H

L_134:
        db 45H, 6CH, 61H, 70H, 73H, 65H, 64H, 3AH
        db 20H, 25H, 66H, 0AH, 00H, 00H, 00H, 00H
        db 00H

L_135:  dq 41DFFFFFFFC00000H

L_136:  dq 4059000000000000H

L_137:  dq 0C059000000000000H

L_138:  dq 4024000000000000H

L_139:  dq 412E848000000000H


SECTION .text._ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_ 

_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_:
        push    ebp
        mov     ebp, esp
        sub     esp, 8
        fild    dword [ebp+8H]
        sub     esp, 8
        lea     esp, [esp-8H]
        fstp    qword [esp]
        call    sqrt
        add     esp, 16
        leave
        ret



SECTION .note.gnu.property align=4

        db 04H, 00H, 00H, 00H, 18H, 00H, 00H, 00H
        db 05H, 00H, 00H, 00H, 47H, 4EH, 55H, 00H
        db 02H, 00H, 01H, 0C0H, 04H, 00H, 00H, 00H
        db 01H, 00H, 00H, 00H, 01H, 00H, 01H, 0C0H
        db 04H, 00H, 00H, 00H, 03H, 00H, 00H, 00H



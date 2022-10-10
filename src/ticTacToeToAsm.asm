# start from 0x100
chess:  # .zero   36 0x100 ~ 0x108
chessboard:
        # .zero   36 0x124 ~ 0x12c
score:
        # .zero   36 0x148 ~ 0x150
x:
        # .zero   4 0x16c
y:
        # .zero   4 0x170
myCount:# .zero   4 0x174
        jal     zero, main
Reset:
        addi    sp,sp,-32
        sw      s0,28(sp)
        addi    s0,sp,32
        sw      zero,-20(s0)
        jal     zero, L2
L5:
        sw      zero,-24(s0)
        jal     zero, L3
L4:
	# chessboard
        addi    a3,zero,0x124
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
	addi 	a4,zero,1
        sw      a4,0(a5)
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
L3:
        lw      a4,-24(s0)
	addi 	a5,zero,2
        ble     a4,a5,L4
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L2:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L5
        ###
        sw      zero,-28(s0)
        jal     zero,L196
L193:
        sw      zero,-32(s0)
        jal     zero,L195
L194:
        # chess
        addi    a3,zero,0x100
        lw      a4,-28(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-32(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        addi    a4,zero,0
        sw      a4,0(a5)
        lw      a5,-32(s0)
        addi    a5,a5,1
        sw      a5,-32(s0)
L195:
        lw      a4,-32(s0)
        addi    a5,zero,2
        ble     a4,a5,L194
        lw      a5,-28(s0)
        addi    a5,a5,1
        sw      a5,-28(s0)
L196:
        lw      a4,-28(s0)
        addi    a5,zero,2
        ble     a4,a5,L193
        # x
        sw      zero,0x16c(a5)
        # y
        sw      zero,0x170(a5)
        # myCount
        sw      zero,0x174(a5)
        addi    zero,zero,0
        lw      s0,28(sp)
        addi    sp,sp,32
        jalr    zero,0(ra)
PcPlay:
        addi    sp,sp,-176
        sw      s0,172(sp)
        addi    s0,sp,176
        sw      zero,-20(s0)
        sw      zero,-24(s0)
        jal     zero, L7
L10:
        sw      zero,-28(s0)
        jal     zero, L8
L9:
        # score
        addi    a3,zero,0x148
        lw      a4,-24(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-28(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        sw      zero,0(a5)
        lw      a5,-28(s0)
        addi    a5,a5,1
        sw      a5,-28(s0)
L8:
        lw      a4,-28(s0)
        addi    a5,zero,2
        ble     a4,a5,L9
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
L7:
        lw      a4,-24(s0)
        addi    a5,zero,2
        ble     a4,a5,L10
        sw      zero,-32(s0)
        jal     zero, L11
L40:
        sw      zero,-36(s0)
        jal     zero, L12
L13:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-36(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        lw      a4,-20(s0)
        add     a5,a4,a5
        sw      a5,-20(s0)
        lw      a5,-36(s0)
        addi    a5,a5,1
        sw      a5,-36(s0)
L12:
        lw      a4,-36(s0)
        addi    a5,zero,2
        ble     a4,a5,L13
        lw      a5,-20(s0)
        addi    a5,a5,-3
        li      a4,8
        bgtu    a5,a4,L14
        slli    a4,a5,2
        # 
        la      a5,L16
        add     a5,a4,a5
        lw      a5,0(a5)
        jalr    zero,0(a5)
L16:
        # .word   L21
        # .word   L20
        #. word   L19
        # .word   L14
        # .word   L18
        # .word   L17
        # .word   L14
        # .word   L14
        # .word   L15
L21:
        sw      zero,-40(s0)
        jal     zero, L22
L24:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-40(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,L23
        # score
        addi    a3,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-40(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,1
        # score
        addi    a2,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-40(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L23:
        lw      a5,-40(s0)
        addi    a5,a5,1
        sw      a5,-40(s0)
L22:
        lw      a4,-40(s0)
        addi    a5,zero,2
        ble     a4,a5,L24
        jal     zero, L14
L20:
        sw      zero,-44(s0)
        jal     zero, L25
L27:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-44(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L26
        # score
        addi    a3,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-44(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,10
        # score
        addi    a2,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-44(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L26:
        lw      a5,-44(s0)
        addi    a5,a5,1
        sw      a5,-44(s0)
L25:
        lw      a4,-44(s0)
        addi    a5,zero,2
        ble     a4,a5,L27
        jal     zero, L14
L17:
        sw      zero,-48(s0)
        jal     zero, L28
L30:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-48(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L29
        # score
        addi    a3,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-48(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,50
        # score
        addi    a2,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-48(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L29:
        lw      a5,-48(s0)
        addi    a5,a5,1
        sw      a5,-48(s0)
L28:
        lw      a4,-48(s0)
        addi    a5,zero,2
        ble     a4,a5,L30
        jal     zero, L14
L18:
        sw      zero,-52(s0)
        jal     zero, L31
L33:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-52(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L32
        # score
        addi    a3,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-52(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,200
        # score
        addi    a2,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-52(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L32:
        lw      a5,-52(s0)
        addi    a5,a5,1
        sw      a5,-52(s0)
L31:
        lw      a4,-52(s0)
        addi    a5,zero,2
        ble     a4,a5,L33
        jal     zero, L14
L19:
        sw      zero,-56(s0)
        jal     zero, L34
L36:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-56(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L35
        # score
        addi    a3,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-56(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,500
        # score
        addi    a2,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-56(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L35:
        lw      a5,-56(s0)
        addi    a5,a5,1
        sw      a5,-56(s0)
L34:
        lw      a4,-56(s0)
        addi    a5,zero,2
        ble     a4,a5,L36
        jal     zero, L14
L15:
        sw      zero,-60(s0)
        jal     zero, L37
L39:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-60(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L38
        # score
        addi    a3,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-60(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,1000
        # score
        addi    a2,zero,0x148
        lw      a4,-32(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-60(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L38:
        lw      a5,-60(s0)
        addi    a5,a5,1
        sw      a5,-60(s0)
L37:
        lw      a4,-60(s0)
        addi    a5,zero,2
        ble     a4,a5,L39
        addi    zero,zero,0
L14:
        sw      zero,-20(s0)
        lw      a5,-32(s0)
        addi    a5,a5,1
        sw      a5,-32(s0)
L11:
        lw      a4,-32(s0)
        addi    a5,zero,2
        ble     a4,a5,L40
        sw      zero,-64(s0)
        jal     zero, L41
L70:
        sw      zero,-68(s0)
        jal     zero, L42
L43:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-68(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        lw      a4,-20(s0)
        add     a5,a4,a5
        sw      a5,-20(s0)
        lw      a5,-68(s0)
        addi    a5,a5,1
        sw      a5,-68(s0)
L42:
        lw      a4,-68(s0)
        addi    a5,zero,2
        ble     a4,a5,L43
        lw      a5,-20(s0)
        addi    a5,a5,-3
        addi    a4,zero,8
        bgtu    a5,a4,L44
        slli    a4,a5,2
        #
        la      a5,L46
        add     a5,a4,a5
        lw      a5,0(a5)
        jalr    zero,0(a5)
L46:
        #.word   L51
        #.word   L50
        #.word   L49
        #.word   L44
        #.word   L48
        #.word   L47
        #.word   L44
        #.word   L44
        #.word   L45
L51:
        sw      zero,-72(s0)
        jal     zero, L52
L54:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-72(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L53
        # score
        addi    a3,zero,0x148
        lw      a4,-72(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,1
        # score
        addi    a2,zero,0x148
        lw      a4,-72(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L53:
        lw      a5,-72(s0)
        addi    a5,a5,1
        sw      a5,-72(s0)
L52:
        lw      a4,-72(s0)
        addi    a5,zero,2
        ble     a4,a5,L54
        jal     zero, L44
L50:
        sw      zero,-76(s0)
        jal     zero, L55
L57:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-76(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L56
        # score
        addi    a3,zero,0x148
        lw      a4,-76(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,10
        # score
        addi    a2,zero,0x148
        lw      a4,-76(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L56:
        lw      a5,-76(s0)
        addi    a5,a5,1
        sw      a5,-76(s0)
L55:
        lw      a4,-76(s0)
        addi    a5,zero,2
        ble     a4,a5,L57
        jal     zero, L44
L47:
        sw      zero,-80(s0)
        jal     zero, L58
L60:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-80(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L59
        # score
        addi    a3,zero,0x148
        lw      a4,-80(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,50
        # score
        addi    a2,zero,0x148
        lw      a4,-80(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L59:
        lw      a5,-80(s0)
        addi    a5,a5,1
        sw      a5,-80(s0)
L58:
        lw      a4,-80(s0)
        addi    a5,zero,2
        ble     a4,a5,L60
        jal     zero, L44
L48:
        sw      zero,-84(s0)
        jal     zero, L61
L63:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-84(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,L62
        # score
        addi    a3,zero,0x148
        lw      a4,-84(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,200
        # score
        addi    a2,zero,0x148
        lw      a4,-84(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L62:
        lw      a5,-84(s0)
        addi    a5,a5,1
        sw      a5,-84(s0)
L61:
        lw      a4,-84(s0)
        addi    a5,zero,2
        ble     a4,a5,L63
        jal     zero, L44
L49:
        sw      zero,-88(s0)
        jal     zero, L64
L66:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-88(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,L65
        # score
        addi    a3,zero,0x148
        lw      a4,-88(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,500
        # score
        addi    a2,zero,0x148
        lw      a4,-88(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L65:
        lw      a5,-88(s0)
        addi    a5,a5,1
        sw      a5,-88(s0)
L64:
        lw      a4,-88(s0)
        addi    a5,zero,2
        ble     a4,a5,L66
        jal     zero, L44
L45:
        sw      zero,-92(s0)
        jal     zero, L67
L69:
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-92(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,L68
        # score
        addi    a3,zero,0x148
        lw      a4,-92(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,1000
        # score
        addi    a2,zero,0x148
        lw      a4,-92(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L68:
        lw      a5,-92(s0)
        addi    a5,a5,1
        sw      a5,-92(s0)
L67:
        lw      a4,-92(s0)
        addi    a5,zero,2
        ble     a4,a5,L69
        addi    zero,zero,0
L44:
        sw      zero,-20(s0)
        lw      a5,-64(s0)
        addi    a5,a5,1
        sw      a5,-64(s0)
L41:
        lw      a4,-64(s0)
        addi    a5,zero,2
        ble     a4,a5,L70
        sw      zero,-96(s0)
        jal     zero, L71
L72:
        # chessboard
        addi    a4,zero,0x124
        lw      a5,-96(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        lw      a4,-20(s0)
        add     a5,a4,a5
        sw      a5,-20(s0)
        lw      a5,-96(s0)
        addi    a5,a5,1
        sw      a5,-96(s0)
L71:
        lw      a4,-96(s0)
        addi    a5,zero,2
        ble     a4,a5,L72
        lw      a5,-20(s0)
        addi    a5,a5,-3
        addi    a4,zero,8
        bgtu    a5,a4,L73
        slli    a4,a5,2
        # 
        la      a5,L75
        add     a5,a4,a5
        lw      a5,0(a5)
        jalr    zero,0(a5)
L75:
        #.word   L80
        #.word   L79
        #.word   L78
        #.word   L73
        #.word   L77
        #.word   L76
        #.word   L73
        #.word   L73
        #.word   L74
L80:
        sw      zero,-100(s0)
        jal     zero, L81
L83:
        # chessboard
        addi    a4,zero,0x124
        lw      a5,-100(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L82
        # score
        addi    a4,zero,0x148
        lw      a5,-100(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,1
        # score
        addi    a3,zero,0x148
        lw      a5,-100(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
L82:
        lw      a5,-100(s0)
        addi    a5,a5,1
        sw      a5,-100(s0)
L81:
        lw      a4,-100(s0)
        addi    a5,zero,2
        ble     a4,a5,L83
        jal     zero, L73
L79:
        sw      zero,-104(s0)
        jal     zero, L84
L86:
        # chessboard
        addi    a4,zero,0x124
        lw      a5,-104(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L85
        # score
        addi    a4,zero,0x148
        lw      a5,-104(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,10
        # score
        addi    a3,zero,0x148
        lw      a5,-104(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
L85:
        lw      a5,-104(s0)
        addi    a5,a5,1
        sw      a5,-104(s0)
L84:
        lw      a4,-104(s0)
        addi    a5,zero,2
        ble     a4,a5,L86
        jal     zero, L73
L76:
        sw      zero,-108(s0)
        jal     zero, L87
L89:
        # chessboard
        addi    a4,zero,0x124
        lw      a5,-108(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L88
        # score
        addi    a4,zero,0x148
        lw      a5,-108(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,50
        # score
        addi    a3,zero,0x148
        lw      a5,-108(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
L88:
        lw      a5,-108(s0)
        addi    a5,a5,1
        sw      a5,-108(s0)
L87:
        lw      a4,-108(s0)
        addi    a5,zero,2
        ble     a4,a5,L89
        jal     zero, L73
L77:
        sw      zero,-112(s0)
        jal     zero, L90
L92:
        # chessboard
        addi    a4,zero,0x124
        lw      a5,-112(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L91
        # score
        addi    a4,zero,0x148
        lw      a5,-112(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,100
        # score
        addi    a3,zero,0x148
        lw      a5,-112(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
L91:
        lw      a5,-112(s0)
        addi    a5,a5,1
        sw      a5,-112(s0)
L90:
        lw      a4,-112(s0)
        addi    a5,zero,2
        ble     a4,a5,L92
        jal     zero, L73
L78:
        sw      zero,-116(s0)
        jal     zero, L93
L95:
        # chessboard
        addi    a4,zero,0x124
        lw      a5,-116(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L94
        # score
        addi    a4,zero,0x148
        lw      a5,-116(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,500
        # score
        addi    a3,zero,0x148
        lw      a5,-116(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
L94:
        lw      a5,-116(s0)
        addi    a5,a5,1
        sw      a5,-116(s0)
L93:
        lw      a4,-116(s0)
        addi    a5,zero,2
        ble     a4,a5,L95
        jal     zero, L73
L74:
        sw      zero,-120(s0)
        jal     zero, L96
L98:
        # chessboard
        addi    a4,zero,0x124
        lw      a5,-120(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L97
        # score
        addi    a4,zero,0x148
        lw      a5,-120(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,1000
        # score
        addi    a3,zero,0x148
        lw      a5,-120(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
L97:
        lw      a5,-120(s0)
        addi    a5,a5,1
        sw      a5,-120(s0)
L96:
        lw      a4,-120(s0)
        addi    a5,zero,2
        ble     a4,a5,L98
        addi    zero,zero,0
L73:
        sw      zero,-20(s0)
        sw      zero,-124(s0)
        jal     zero, L99
L100:
        addi    a4,zero,2
        lw      a5,-124(s0)
        sub     a2,a4,a5
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-124(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        lw      a4,-20(s0)
        add     a5,a4,a5
        sw      a5,-20(s0)
        lw      a5,-124(s0)
        addi    a5,a5,1
        sw      a5,-124(s0)
L99:
        lw      a4,-124(s0)
        addi    a5,zero,2
        ble     a4,a5,L100
        lw      a5,-20(s0)
        addi    a5,a5,-3
        addi    a4,zero,8
        bgtu    a5,a4,L101
        slli    a4,a5,2
        # 
        la      a5,L103
        add     a5,a4,a5
        lw      a5,0(a5)
        jalr    zero,0(a5)
L103:
        #.word   L108
        #.word   L107
        #.word   L106
        #.word   L101
        #.word   L105
        #.word   L104
        #.word   L101
        #.word   L101
        #.word   L102
L108:
        sw      zero,-128(s0)
        jal     zero, L109
L111:
        addi    a4,zero,2
        lw      a5,-128(s0)
        sub     a2,a4,a5
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-128(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L110
        addi    a4,zero,2
        lw      a5,-128(s0)
        sub     a2,a4,a5
        # score
        addi    a3,zero,0x148
        lw      a4,-128(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,zero,2
        lw      a4,-128(s0)
        sub     a1,a3,a4
        addi    a3,a5,1
        # score
        addi    a2,zero,0x148
        lw      a4,-128(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L110:
        lw      a5,-128(s0)
        addi    a5,a5,1
        sw      a5,-128(s0)
L109:
        lw      a4,-128(s0)
        addi    a5,zero,2
        ble     a4,a5,L111
        jal     zero, L101
L107:
        sw      zero,-132(s0)
        jal     zero, L112
L114:
        addi    a4,zero,2
        lw      a5,-132(s0)
        sub     a2,a4,a5
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-132(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L113
        addi    a4,zero,2
        lw      a5,-132(s0)
        sub     a2,a4,a5
        # score
        addi    a3,zero,0x148
        lw      a4,-132(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,zero,2
        lw      a4,-132(s0)
        sub     a1,a3,a4
        addi    a3,a5,10
        # score
        addi    a2,zero,0x148
        lw      a4,-132(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L113:
        lw      a5,-132(s0)
        addi    a5,a5,1
        sw      a5,-132(s0)
L112:
        lw      a4,-132(s0)
        addi    a5,zero,2
        ble     a4,a5,L114
        jal     zero, L101
L104:
        sw      zero,-136(s0)
        jal     zero, L115
L117:
        addi    a4,zero,2
        lw      a5,-136(s0)
        sub     a2,a4,a5
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-136(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L116
        addi    a4,zero,2
        lw      a5,-136(s0)
        sub     a2,a4,a5
        # score
        addi    a3,zero,0x148
        lw      a4,-136(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,zero,2
        lw      a4,-136(s0)
        sub     a1,a3,a4
        addi    a3,a5,50
        # score
        addi    a2,zero,0x148
        lw      a4,-136(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L116:
        lw      a5,-136(s0)
        addi    a5,a5,1
        sw      a5,-136(s0)
L115:
        lw      a4,-136(s0)
        li      a5,2
        ble     a4,a5,L117
        jal     zero, L101
L105:
        sw      zero,-140(s0)
        jal     zero, L118
L120:
        addi    a4,zero,2
        lw      a5,-140(s0)
        sub     a2,a4,a5
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-140(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L119
        addi    a4,zero,2
        lw      a5,-140(s0)
        sub     a2,a4,a5
        # score
        addi    a3,zero,0x148
        lw      a4,-140(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,zero,2
        lw      a4,-140(s0)
        sub     a1,a3,a4
        addi    a3,a5,100
        # score
        addi    a2,zero,0x148
        lw      a4,-140(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L119:
        lw      a5,-140(s0)
        addi    a5,a5,1
        sw      a5,-140(s0)
L118:
        lw      a4,-140(s0)
        addi    a5,zero,2
        ble     a4,a5,L120
        jal     zero, L101
L106:
        sw      zero,-144(s0)
        jal     zero, L121
L123:
        addi    a4,zero,2
        lw      a5,-144(s0)
        sub     a2,a4,a5
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-144(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L122
        addi    a4,zero,2
        lw      a5,-144(s0)
        sub     a2,a4,a5
        # score
        addi    a3,zero,0x148
        lw      a4,-144(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,zero,2
        lw      a4,-144(s0)
        sub     a1,a3,a4
        addi    a3,a5,500
        # score
        addi    a2,zero,0x148
        lw      a4,-144(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L122:
        lw      a5,-144(s0)
        addi    a5,a5,1
        sw      a5,-144(s0)
L121:
        lw      a4,-144(s0)
        addi    a5,zero,2
        ble     a4,a5,L123
        jal     zero, L101
L102:
        sw      zero,-148(s0)
        jal     zero, L124
L126:
        addi    a4,zero,2
        lw      a5,-148(s0)
        sub     a2,a4,a5
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-148(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L125
        addi    a4,zero,2
        lw      a5,-148(s0)
        sub     a2,a4,a5
        # score
        addi    a3,zero,0x148
        lw      a4,-148(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,zero,2
        lw      a4,-148(s0)
        sub     a1,a3,a4
        addi    a3,a5,1000
        # score
        addi    a2,zero,0x148
        lw      a4,-148(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
L125:
        lw      a5,-148(s0)
        addi    a5,a5,1
        sw      a5,-148(s0)
L124:
        lw      a4,-148(s0)
        addi    a5,zero,2
        ble     a4,a5,L126
        addi    zero,zero,0
L101:
        sw      zero,-152(s0)
        sw      zero,-156(s0)
        sw      zero,-160(s0)
        jal     zero, L127
L131:
        sw      zero,-164(s0)
        jal     zero, L128
L130:
        # score
        addi    a3,zero,0x148
        lw      a4,-160(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-164(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a3,0(a5)
        # score
        addi    a2,zero,0x148
        lw      a4,-152(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-156(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        lw      a5,0(a5)
        ble     a3,a5,L129
        lw      a5,-160(s0)
        sw      a5,-152(s0)
        lw      a5,-164(s0)
        sw      a5,-156(s0)
L129:
        lw      a5,-164(s0)
        addi    a5,a5,1
        sw      a5,-164(s0)
L128:
        lw      a4,-164(s0)
        addi    a5,zero,2
        ble     a4,a5,L130
        lw      a5,-160(s0)
        addi    a5,a5,1
        sw      a5,-160(s0)
L127:
        lw      a4,-160(s0)
        addi    a5,zero,2
        ble     a4,a5,L131
        # chessboard
        addi    a3,zero,0x124
        lw      a4,-152(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-156(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        addi    a4,zero,5
        sw      a4,0(a5)
        # chess
        addi    a3,zero,0x100
        lw      a4,-152(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-156(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        addi    a4,zero,-1
        sw      a4,0(a5)
        addi    zero,zero,0
        lw      s0,172(sp)
        addi    sp,sp,176
        jalr    zero,0(ra)
evaluate:
        addi    sp,sp,-64
        sw      s0,60(sp)
        addi    s0,sp,64
        # y
        sw      zero,0x170
        # y
        lw      a4,0x170
        # x
        sw      a4,0x16c
        sw      zero,-20(s0)
        jal     zero, L133
L138:
        sw      zero,-24(s0)
        jal     zero, L134
L137:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        bne     a5,zero,L135
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        addi    a4,zero,1
        sw      a4,-44(a5)
        jal     zero, L136
L135:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a3,0(a5)
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        sw      a3,-44(a5)
L136:
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
L134:
        lw      a4,-24(s0)
        addi    a5,zero,2
        ble     a4,a5,L137
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L133:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L138
        sw      zero,-20(s0)
        jal     zero, L139
L140:
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a3,-44(a5)
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-40(a5)
        add     a3,a3,a5
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-36(a5)
        add     a4,a3,a5
        addi    a5,zero,3
        divu     a4,a4,a5
        # x
        lw      a5,0x16c
        add     a4,a4,a5
        # x
        sw      a4,0x16c
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L139:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L140
        sw      zero,-20(s0)
        jal     zero, L141
L142:
        lw      a5,-20(s0)
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a4,-44(a5)
        lw      a5,-20(s0)
        addi    a5,a5,3
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-44(a5)
        add     a4,a4,a5
        lw      a5,-20(s0)
        addi    a5,a5,6
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-44(a5)
        add     a4,a4,a5
        addi    a5,zero,3
        divu     a4,a4,a5
        # x
        lw      a5,0x16c
        add     a4,a4,a5
        # x
        sw      a4,0x16c
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L141:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L142
        lw      a4,-60(s0)
        lw      a5,-44(s0)
        add     a4,a4,a5
        lw      a5,-28(s0)
        add     a4,a4,a5
        addi    a5,zero,3
        divu     a4,a4,a5
        # x
        lw      a5,0x16c
        add     a4,a4,a5
        # x
        sw      a4,0x16c
        lw      a4,-36(s0)
        lw      a5,-44(s0)
        add     a4,a4,a5
        lw      a5,-52(s0)
        add     a4,a4,a5
        addi    a5,zero,3
        divu     a4,a4,a5
        # x
        lw      a5,0x16c
        add     a4,a4,a5
        # x
        sw      a4,0x16c
        sw      zero,-20(s0)
        jal     zero, L143
L148:
        sw      zero,-24(s0)
        jal     zero, L144
L147:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        bne     a5,zero,L145
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        addi    a4,zero,-1
        sw      a4,-44(a5)
        jal     zero, L146
L145:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a3,0(a5)
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        sw      a3,-44(a5)
L146:
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
L144:
        lw      a4,-24(s0)
        addi    a5,zero,2
        ble     a4,a5,L147
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L143:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L148
        sw      zero,-20(s0)
        jal     zero, L149
L150:
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a3,-44(a5)
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-40(a5)
        add     a3,a3,a5
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-36(a5)
        add     a4,a3,a5
        addi    a5,zero,3
        divu     a4,a4,a5
        # y
        lw      a5,0x170
        add     a4,a4,a5
        # y
        sw      a4,0x170
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L149:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L150
        sw      zero,-20(s0)
        jal     zero, L151
L152:
        lw      a5,-20(s0)
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a4,-44(a5)
        lw      a5,-20(s0)
        addi    a5,a5,3
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-44(a5)
        add     a4,a4,a5
        lw      a5,-20(s0)
        addi    a5,a5,6
        slli    a5,a5,2
        addi    a5,a5,-16
        add     a5,a5,s0
        lw      a5,-44(a5)
        add     a4,a4,a5
        addi    a5,zero,3
        divu     a4,a4,a5
        # y
        lw      a5,0x170
        add     a4,a4,a5
        # y
        sw      a4,0x170
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L151:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L152
        lw      a4,-60(s0)
        lw      a5,-44(s0)
        add     a4,a4,a5
        lw      a5,-28(s0)
        add     a4,a4,a5
        addi    a5,zero,3
        divu     a4,a4,a5
        # y
        lw      a5,0x170
        add     a4,a4,a5
        # y
        sw      a4,0x170
        lw      a4,-36(s0)
        lw      a5,-44(s0)
        add     a4,a4,a5
        lw      a5,-52(s0)
        add     a4,a4,a5
        addi    a5,zero,3
        divu     a4,a4,a5
        # y
        lw      a5,0x170
        add     a4,a4,a5
        # y
        sw      a4,0x170
        # x
        lw      a4,0x16c
        # y
        lw      a5,0x170
        add     a5,a4,a5
        addi    a0,a5,0
        lw      s0,60(sp)
        addi    sp,sp,64
        jalr    zero,0(ra)
isWin:
        addi    sp,sp,-32
        sw      s0,28(sp)
        addi    s0,sp,32
        sw      zero,-20(s0)
        jal     zero, L155
L159:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L156
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,4(a5)
        addi    a5,zero,1
        bne     a4,a5,L156
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,8(a5)
        addi    a5,zero,1
        bne     a4,a5,L156
        addi    a5,zero,1
        jal     zero, L157
L156:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,-1
        bne     a4,a5,L158
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,4(a5)
        addi    a5,zero,-1
        bne     a4,a5,L158
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,8(a5)
        addi    a5,zero,-1
        bne     a4,a5,L158
        addi    a5,zero,-1
        jal     zero, L157
L158:
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L155:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L159
        sw      zero,-20(s0)
        jal     zero, L160
L163:
        # chess
        addi    a4,zero,0x100
        lw      a5,-20(s0)
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L161
        # chess
        addi    a4,zero,0x100
        lw      a5,-20(s0)
        addi    a5,a5,3
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L161
        # chess
        addi    a4,zero,0x100
        lw      a5,-20(s0)
        addi    a5,a5,6
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L161
        addi    a5,zero,1
        jal     zero, L157
L161:
        # chess
        addi    a4,zero,0x100
        lw      a5,-20(s0)
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,-1
        bne     a4,a5,L162
        # chess
        addi    a4,zero,0x100
        lw      a5,-20(s0)
        addi    a5,a5,3
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,-1
        bne     a4,a5,L162
        # chess
        addi    a4,zero,0x100
        lw      a5,-20(s0)
        addi    a5,a5,6
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        addi    a5,zero,-1
        bne     a4,a5,L162
        addi    a5,zero,-1
        jal     zero, L157
L162:
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L160:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L163
        # chess
        addi    a5,zero,0x100
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L164
        # chess
        addi    a5,zero,0x100
        lw      a4,16(a5)
        addi    a5,zero,1
        bne     a4,a5,L164
        # chess
        addi    a5,zero,0x100
        lw      a4,32(a5)
        addi    a5,zero,1
        beq     a4,a5,L165
L164:
        # chess
        addi    a5,zero,0x100
        lw      a4,24(a5)
        addi    a5,zero,1
        bne     a4,a5,L166
        # chess
        addi    a5,zero,0x100
        lw      a4,16(a5)
        addi    a5,zero,1
        bne     a4,a5,L166
        # chess
        addi    a5,zero,0x100
        lw      a4,8(a5)
        addi    a5,zero,1
        bne     a4,a5,L166
L165:
        addi    a5,zero,1
        jal     zero, L157
L166:
        # chess
        addi    a5,zero,0x100
        lw      a4,0(a5)
        addi    a5,zero,-1
        bne     a4,a5,L167
        # chess
        addi    a5,zero,0x100
        lw      a4,16(a5)
        addi    a5,zero,-1
        bne     a4,a5,L167
        # chess
        addi    a5,zero,0x100
        lw      a4,32(a5)
        addi    a5,zero,-1
        beq     a4,a5,L168
L167:
        # chess
        addi    a5,zero,0x100
        lw      a4,24(a5)
        addi    a5,zero,-1
        bne     a4,a5,L169
        # chess
        addi    a5,zero,0x100
        lw      a4,16(a5)
        addi    a5,zero,-1
        bne     a4,a5,L169
        # chess
        addi    a5,zero,0x100
        lw      a4,8(a5)
        addi    a5,zero,-1
        bne     a4,a5,L169
L168:
        addi    a5,zero,-1
        jal     zero, L157
L169:
        addi    a5,zero,0
L157:
        addi    a0,a5,0
        lw      s0,28(sp)
        addi    sp,sp,32
        jalr    zero,0(ra)

getInput00:
        addi    a7,zero,1
        lw      a1,0x100
        bne     a1,zero,return1
        lw      a1,-36(s0)
        sw      a1,0x100
        addi    a1,zero,2
        sw      a1,0x124
    return1:
        uret
getInput01:
        addi    a7,zero,1
        lw      a1,0x104
        bne     a1,zero,return2
        lw      a1,-36(s0)
        sw      a1,0x104
        addi    a1,zero,2
        sw      a1,0x128
    return2:
        uret
getInput02:
        addi    a7,zero,1
        lw      a1,0x108
        bne     a1,zero,return3
        lw      a1,-36(s0)
        sw      a1,0x108
        addi    a1,zero,2
        sw      a1,0x12c
    return3:
        uret
getInput10:
        addi    a7,zero,1
        lw      a1,0x10c
        bne     a1,zero,return4
        lw      a1,-36(s0)
        sw      a1,0x10c
        addi    a1,zero,2
        sw      a1,0x130
    return4:
        uret
getInput11:
        addi    a7,zero,1
        lw      a1,0x110
        bne     a1,zero,return5
        lw      a1,-36(s0)
        sw      a1,0x110
        addi    a1,zero,2
        sw      a1,0x134
    return5:
        uret
getInput12:
        addi    a7,zero,1
        lw      a1,0x114
        bne     a1,zero,return6
        lw      a1,-36(s0)
        sw      a1,0x114
        addi    a1,zero,2
        sw      a1,0x138
    return6:
        uret
getInput20:
        addi    a7,zero,1
        lw      a1,0x118
        bne     a1,zero,return7
        lw      a1,-36(s0)
        sw      a1,0x118
        addi    a1,zero,2
        sw      a1,0x13c
    return7:
        uret
getInput21:
        addi    a7,zero,1
        lw      a1,0x11c
        bne     a1,zero,return8
        lw      a1,-36(s0)
        sw      a1,0x11c
        addi    a1,zero,2
        sw      a1,0x140
    return8:
        uret
getInput22:
        addi    a7,zero,1
        lw      a1,0x120
        bne     a1,zero,return9
        lw      a1,-36(s0)
        sw      a1,0x120
        addi    a1,zero,2
        sw      a1,0x144
    return9:
        uret

PlayerInput:
        addi    sp,sp,-48
        sw      ra,44(sp)
        sw      s0,40(sp)
        addi    s0,sp,48
        sw      a0,-36(s0)
        
        #wait intr
        addi    a7,zero,0
    loop:
        bne     a7,zero,end
        jal     loop
    end:
        addi    a7,zero,0

        lw      a5,-20(s0)
        addi    a4,a5,-1
        lw      a5,-24(s0)
        addi    a2,a5,-1
        # chess
        addi    a3,zero,0x100
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,-36(s0)
        # sw      a4,0(a5)
        lw      a5,-20(s0)
        addi    a4,a5,-1
        lw      a5,-24(s0)
        addi    a2,a5,-1
        # chessboard
        addi    a3,zero,0x124
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        addi    a4,zero,2
        # sw      a4,0(a5)
        addi    zero,zero,0
        addi    zero,zero,0
        lw      ra,44(sp)
        lw      s0,40(sp)
        addi    sp,sp,48
        jalr    zero,0(ra)

showChessPieces:
        addi    a7,zero,34
        ecall
        jalr    zero,0(ra)

PrintChessboard:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        sw      zero,-20(s0)
        jal     zero, L172
L178:
        sw      zero,-24(s0)
        jal     zero, L173
L177:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,1
        bne     a4,a5,L174
        addi    a0,zero,1
        call    showChessPieces
        jal     zero, L175
L174:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        bne     a5,zero,L176
        addi    a0,zero,0
        call    showChessPieces
        jal     zero, L175
L176:
        # chess
        addi    a3,zero,0x100
        lw      a4,-20(s0)
        addi    a5,a4,0
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-24(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        addi    a5,zero,-1
        bne     a4,a5,L175
        addi    a0,zero,-1
        call    showChessPieces
L175:
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
L173:
        lw      a4,-24(s0)
        addi    a5,zero,2
        ble     a4,a5,L177
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
L172:
        lw      a4,-20(s0)
        addi    a5,zero,2
        ble     a4,a5,L178
        addi    zero,zero,0
        addi    zero,zero,0
        lw      ra,28(sp)
        lw      s0,24(sp)
        addi    sp,sp,32
        jalr    zero,0(ra)

PVPmode:
        addi    a7,zero,2
        sw      a7,-24(s0)
        uret

PVCmode:
        addi    a7,zero,1
        sw      a7,-24(s0)
        uret

showWinner:
        addi    a0,zero,3
        addi    a7,zero,34
        ecall
        jalr    zero,0(ra)

PlayTicTacToe:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        call	Reset
        
        #wait intr
        addi    a7,zero,0
    loop1:
        bne     a7,zero,end1
        jal     loop1
    end1:
        addi    a7,zero,0

L190:
        # myCount
        lw      a4,0x174
        srai    a5,a4,31
        srli    a5,a5,31
        add     a4,a4,a5
        andi    a4,a4,1
        sub     a5,a4,a5
        addi    a5,a5,1
        sw      a5,-20(s0)
        lw      a4,-20(s0)
        addi    a5,zero,2
        bne     a4,a5,L180
        addi    a5,zero,-1
        sw      a5,-20(s0)# player
L180:
        lw      a4,-24(s0) # option
        addi    a5,zero,2
        beq     a4,a5,L181
        lw      a4,-20(s0)
        addi    a5,zero,1
        bne     a4,a5,L182
L181:
        lw      a0,-20(s0)
        call    PlayerInput
        jal     zero, L183
L182:
        call	PcPlay
L183:
        call    PrintChessboard
        # myCount
        lw      a5,0x174
        addi    a4,a5,1
        # myCount
        sw      a4,0x174
        call    isWin
        sw      a0,-28(s0)
        lw      a4,-28(s0)
        addi    a5,zero,-1
        bne     a4,a5,L184
        addi    a0,zero,2
        call    showWinner
        addi    a5,zero,0
        jal     zero, L185
L184:
        lw      a4,-28(s0)
        addi    a5,zero,1
        bne     a4,a5,L186
        addi    a0,zero,1
        call    showWinner
        addi    a5,zero,0
        jal     zero, L185
L186:
        call    evaluate
        sw      a0,-28(s0)
        # y
        lw      a5,0x170
        bne     a5,zero,L187
        # x
        lw      a5,0x16c
        beq     a5,zero,L188
L187:
        # myCount
        lw      a4,0x174
        addi    a5,zero,9
        bne     a4,a5,L190
L188:
        addi    a0,zero,0
        call    showWinner
        addi    a5,zero,0
L185:
        addi    a0,a5,0
        lw      ra,28(sp)
        lw      s0,24(sp)
        addi    sp,sp,32
        jalr    zero,0(ra)

isRepeat:
        addi    a0,zero,1
        uret
notRepeat:
        addi    a0,zero,0
        uret
main:
        addi    sp,sp,-16
        sw      ra,12(sp)
        sw      s0,8(sp)
        addi    s0,sp,16
L192:
        call	PlayTicTacToe
        
        #wait intr
        # a0 indicate whether repeat
        addi    a7,zero,0
    loop2:
        bne     a7,zero,end2
        jal     loop2
    end2:
        addi    a7,zero,0
        beq     a0,zero,end3
        jal     zero,L192
end3:

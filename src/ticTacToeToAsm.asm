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
        j       .L11
.L14:
        sw      zero,-28(s0)
        j       .L12
.L13:
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-24(s0)
        mv      a5,a4
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
.L12:
        lw      a4,-28(s0)
        li      a5,2
        ble     a4,a5,.L13
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
.L11:
        lw      a4,-24(s0)
        li      a5,2
        ble     a4,a5,.L14
        sw      zero,-32(s0)
        j       .L15
.L42:
        sw      zero,-36(s0)
        j       .L16
.L17:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-32(s0)
        mv      a5,a4
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
.L16:
        lw      a4,-36(s0)
        li      a5,2
        ble     a4,a5,.L17
        lw      a4,-20(s0)
        li      a5,3
        bne     a4,a5,.L18
        sw      zero,-40(s0)
        j       .L19
.L21:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-40(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L20
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-40(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,1
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-40(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L20:
        lw      a5,-40(s0)
        addi    a5,a5,1
        sw      a5,-40(s0)
.L19:
        lw      a4,-40(s0)
        li      a5,2
        ble     a4,a5,.L21
        j       .L22
.L18:
        lw      a4,-20(s0)
        li      a5,4
        bne     a4,a5,.L23
        sw      zero,-44(s0)
        j       .L24
.L26:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-44(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L25
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-44(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,10
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-44(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L25:
        lw      a5,-44(s0)
        addi    a5,a5,1
        sw      a5,-44(s0)
.L24:
        lw      a4,-44(s0)
        li      a5,2
        ble     a4,a5,.L26
        j       .L22
.L23:
        lw      a4,-20(s0)
        li      a5,8
        bne     a4,a5,.L27
        sw      zero,-48(s0)
        j       .L28
.L30:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-48(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L29
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-48(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,50
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-48(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L29:
        lw      a5,-48(s0)
        addi    a5,a5,1
        sw      a5,-48(s0)
.L28:
        lw      a4,-48(s0)
        li      a5,2
        ble     a4,a5,.L30
        j       .L22
.L27:
        lw      a4,-20(s0)
        li      a5,7
        bne     a4,a5,.L31
        sw      zero,-52(s0)
        j       .L32
.L34:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-52(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L33
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-52(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,200
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-52(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L33:
        lw      a5,-52(s0)
        addi    a5,a5,1
        sw      a5,-52(s0)
.L32:
        lw      a4,-52(s0)
        li      a5,2
        ble     a4,a5,.L34
        j       .L22
.L31:
        lw      a4,-20(s0)
        li      a5,5
        bne     a4,a5,.L35
        sw      zero,-56(s0)
        j       .L36
.L38:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-56(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L37
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-56(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,500
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-56(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L37:
        lw      a5,-56(s0)
        addi    a5,a5,1
        sw      a5,-56(s0)
.L36:
        lw      a4,-56(s0)
        li      a5,2
        ble     a4,a5,.L38
        j       .L22
.L35:
        lw      a4,-20(s0)
        li      a5,11
        bne     a4,a5,.L22
        sw      zero,-60(s0)
        j       .L39
.L41:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-60(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L40
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-60(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,1000
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-32(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-60(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L40:
        lw      a5,-60(s0)
        addi    a5,a5,1
        sw      a5,-60(s0)
.L39:
        lw      a4,-60(s0)
        li      a5,2
        ble     a4,a5,.L41
.L22:
        sw      zero,-20(s0)
        lw      a5,-32(s0)
        addi    a5,a5,1
        sw      a5,-32(s0)
.L15:
        lw      a4,-32(s0)
        li      a5,2
        ble     a4,a5,.L42
        sw      zero,-64(s0)
        j       .L43
.L70:
        sw      zero,-68(s0)
        j       .L44
.L45:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-68(s0)
        mv      a5,a4
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
.L44:
        lw      a4,-68(s0)
        li      a5,2
        ble     a4,a5,.L45
        lw      a4,-20(s0)
        li      a5,3
        bne     a4,a5,.L46
        sw      zero,-72(s0)
        j       .L47
.L49:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-72(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L48
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-72(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,1
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-72(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L48:
        lw      a5,-72(s0)
        addi    a5,a5,1
        sw      a5,-72(s0)
.L47:
        lw      a4,-72(s0)
        li      a5,2
        ble     a4,a5,.L49
        j       .L50
.L46:
        lw      a4,-20(s0)
        li      a5,4
        bne     a4,a5,.L51
        sw      zero,-76(s0)
        j       .L52
.L54:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-76(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L53
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-76(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,10
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-76(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L53:
        lw      a5,-76(s0)
        addi    a5,a5,1
        sw      a5,-76(s0)
.L52:
        lw      a4,-76(s0)
        li      a5,2
        ble     a4,a5,.L54
        j       .L50
.L51:
        lw      a4,-20(s0)
        li      a5,8
        bne     a4,a5,.L55
        sw      zero,-80(s0)
        j       .L56
.L58:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-80(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L57
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-80(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,50
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-80(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L57:
        lw      a5,-80(s0)
        addi    a5,a5,1
        sw      a5,-80(s0)
.L56:
        lw      a4,-80(s0)
        li      a5,2
        ble     a4,a5,.L58
        j       .L50
.L55:
        lw      a4,-20(s0)
        li      a5,7
        bne     a4,a5,.L59
        sw      zero,-84(s0)
        j       .L60
.L62:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-84(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L61
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-84(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,200
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-84(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L61:
        lw      a5,-84(s0)
        addi    a5,a5,1
        sw      a5,-84(s0)
.L60:
        lw      a4,-84(s0)
        li      a5,2
        ble     a4,a5,.L62
        j       .L50
.L59:
        lw      a4,-20(s0)
        li      a5,5
        bne     a4,a5,.L63
        sw      zero,-88(s0)
        j       .L64
.L66:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-88(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L65
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-88(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,500
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-88(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L65:
        lw      a5,-88(s0)
        addi    a5,a5,1
        sw      a5,-88(s0)
.L64:
        lw      a4,-88(s0)
        li      a5,2
        ble     a4,a5,.L66
        j       .L50
.L63:
        lw      a4,-20(s0)
        li      a5,11
        bne     a4,a5,.L50
        sw      zero,-92(s0)
        j       .L67
.L69:
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-92(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L68
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-92(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        addi    a3,a5,1000
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-92(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-64(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L68:
        lw      a5,-92(s0)
        addi    a5,a5,1
        sw      a5,-92(s0)
.L67:
        lw      a4,-92(s0)
        li      a5,2
        ble     a4,a5,.L69
.L50:
        sw      zero,-20(s0)
        lw      a5,-64(s0)
        addi    a5,a5,1
        sw      a5,-64(s0)
.L43:
        lw      a4,-64(s0)
        li      a5,2
        ble     a4,a5,.L70
        sw      zero,-96(s0)
        j       .L71
.L72:
        lui     a5,0
        addi    a4,a5,0x124
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
.L71:
        lw      a4,-96(s0)
        li      a5,2
        ble     a4,a5,.L72
        lw      a4,-20(s0)
        li      a5,3
        bne     a4,a5,.L73
        sw      zero,-100(s0)
        j       .L74
.L76:
        lui     a5,0
        addi    a4,a5,0x124
        lw      a5,-100(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L75
        lui     a5,0
        addi    a4,a5,0x148
        lw      a5,-100(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,1
        lui     a5,0
        addi    a3,a5,0x148
        lw      a5,-100(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
.L75:
        lw      a5,-100(s0)
        addi    a5,a5,1
        sw      a5,-100(s0)
.L74:
        lw      a4,-100(s0)
        li      a5,2
        ble     a4,a5,.L76
        j       .L77
.L73:
        lw      a4,-20(s0)
        li      a5,4
        bne     a4,a5,.L78
        sw      zero,-104(s0)
        j       .L79
.L81:
        lui     a5,0
        addi    a4,a5,0x124
        lw      a5,-104(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L80
        lui     a5,0
        addi    a4,a5,0x148
        lw      a5,-104(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,10
        lui     a5,0
        addi    a3,a5,0x148
        lw      a5,-104(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
.L80:
        lw      a5,-104(s0)
        addi    a5,a5,1
        sw      a5,-104(s0)
.L79:
        lw      a4,-104(s0)
        li      a5,2
        ble     a4,a5,.L81
        j       .L77
.L78:
        lw      a4,-20(s0)
        li      a5,8
        bne     a4,a5,.L82
        sw      zero,-108(s0)
        j       .L83
.L85:
        lui     a5,0
        addi    a4,a5,0x124
        lw      a5,-108(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L84
        lui     a5,0
        addi    a4,a5,0x148
        lw      a5,-108(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,50
        lui     a5,0
        addi    a3,a5,0x148
        lw      a5,-108(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
.L84:
        lw      a5,-108(s0)
        addi    a5,a5,1
        sw      a5,-108(s0)
.L83:
        lw      a4,-108(s0)
        li      a5,2
        ble     a4,a5,.L85
        j       .L77
.L82:
        lw      a4,-20(s0)
        li      a5,7
        bne     a4,a5,.L86
        sw      zero,-112(s0)
        j       .L87
.L89:
        lui     a5,0
        addi    a4,a5,0x124
        lw      a5,-112(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L88
        lui     a5,0
        addi    a4,a5,0x148
        lw      a5,-112(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,100
        lui     a5,0
        addi    a3,a5,0x148
        lw      a5,-112(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
.L88:
        lw      a5,-112(s0)
        addi    a5,a5,1
        sw      a5,-112(s0)
.L87:
        lw      a4,-112(s0)
        li      a5,2
        ble     a4,a5,.L89
        j       .L77
.L86:
        lw      a4,-20(s0)
        li      a5,5
        bne     a4,a5,.L90
        sw      zero,-116(s0)
        j       .L91
.L93:
        lui     a5,0
        addi    a4,a5,0x124
        lw      a5,-116(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L92
        lui     a5,0
        addi    a4,a5,0x148
        lw      a5,-116(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,500
        lui     a5,0
        addi    a3,a5,0x148
        lw      a5,-116(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
.L92:
        lw      a5,-116(s0)
        addi    a5,a5,1
        sw      a5,-116(s0)
.L91:
        lw      a4,-116(s0)
        li      a5,2
        ble     a4,a5,.L93
        j       .L77
.L90:
        lw      a4,-20(s0)
        li      a5,11
        bne     a4,a5,.L77
        sw      zero,-120(s0)
        j       .L94
.L96:
        lui     a5,0
        addi    a4,a5,0x124
        lw      a5,-120(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L95
        lui     a5,0
        addi    a4,a5,0x148
        lw      a5,-120(s0)
        slli    a5,a5,4
        add     a5,a4,a5
        lw      a5,0(a5)
        addi    a4,a5,1000
        lui     a5,0
        addi    a3,a5,0x148
        lw      a5,-120(s0)
        slli    a5,a5,4
        add     a5,a3,a5
        sw      a4,0(a5)
.L95:
        lw      a5,-120(s0)
        addi    a5,a5,1
        sw      a5,-120(s0)
.L94:
        lw      a4,-120(s0)
        li      a5,2
        ble     a4,a5,.L96
.L77:
        sw      zero,-20(s0)
        sw      zero,-124(s0)
        j       .L97
.L98:
        li      a4,2
        lw      a5,-124(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-124(s0)
        mv      a5,a4
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
.L97:
        lw      a4,-124(s0)
        li      a5,2
        ble     a4,a5,.L98
        lw      a4,-20(s0)
        li      a5,3
        bne     a4,a5,.L99
        sw      zero,-128(s0)
        j       .L100
.L102:
        li      a4,2
        lw      a5,-128(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-128(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L101
        li      a4,2
        lw      a5,-128(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-128(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        li      a3,2
        lw      a4,-128(s0)
        sub     a1,a3,a4
        addi    a3,a5,1
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-128(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L101:
        lw      a5,-128(s0)
        addi    a5,a5,1
        sw      a5,-128(s0)
.L100:
        lw      a4,-128(s0)
        li      a5,2
        ble     a4,a5,.L102
        j       .L103
.L99:
        lw      a4,-20(s0)
        li      a5,4
        bne     a4,a5,.L104
        sw      zero,-132(s0)
        j       .L105
.L107:
        li      a4,2
        lw      a5,-132(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-132(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L106
        li      a4,2
        lw      a5,-132(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-132(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        li      a3,2
        lw      a4,-132(s0)
        sub     a1,a3,a4
        addi    a3,a5,10
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-132(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L106:
        lw      a5,-132(s0)
        addi    a5,a5,1
        sw      a5,-132(s0)
.L105:
        lw      a4,-132(s0)
        li      a5,2
        ble     a4,a5,.L107
        j       .L103
.L104:
        lw      a4,-20(s0)
        li      a5,8
        bne     a4,a5,.L108
        sw      zero,-136(s0)
        j       .L109
.L111:
        li      a4,2
        lw      a5,-136(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-136(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L110
        li      a4,2
        lw      a5,-136(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-136(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        li      a3,2
        lw      a4,-136(s0)
        sub     a1,a3,a4
        addi    a3,a5,50
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-136(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L110:
        lw      a5,-136(s0)
        addi    a5,a5,1
        sw      a5,-136(s0)
.L109:
        lw      a4,-136(s0)
        li      a5,2
        ble     a4,a5,.L111
        j       .L103
.L108:
        lw      a4,-20(s0)
        li      a5,7
        bne     a4,a5,.L112
        sw      zero,-140(s0)
        j       .L113
.L115:
        li      a4,2
        lw      a5,-140(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-140(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L114
        li      a4,2
        lw      a5,-140(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-140(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        li      a3,2
        lw      a4,-140(s0)
        sub     a1,a3,a4
        addi    a3,a5,100
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-140(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L114:
        lw      a5,-140(s0)
        addi    a5,a5,1
        sw      a5,-140(s0)
.L113:
        lw      a4,-140(s0)
        li      a5,2
        ble     a4,a5,.L115
        j       .L103
.L112:
        lw      a4,-20(s0)
        li      a5,5
        bne     a4,a5,.L116
        sw      zero,-144(s0)
        j       .L117
.L119:
        li      a4,2
        lw      a5,-144(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-144(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L118
        li      a4,2
        lw      a5,-144(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-144(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        li      a3,2
        lw      a4,-144(s0)
        sub     a1,a3,a4
        addi    a3,a5,500
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-144(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L118:
        lw      a5,-144(s0)
        addi    a5,a5,1
        sw      a5,-144(s0)
.L117:
        lw      a4,-144(s0)
        li      a5,2
        ble     a4,a5,.L119
        j       .L103
.L116:
        lw      a4,-20(s0)
        li      a5,11
        bne     a4,a5,.L103
        sw      zero,-148(s0)
        j       .L120
.L122:
        li      a4,2
        lw      a5,-148(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-148(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a4,0(a5)
        li      a5,1
        bne     a4,a5,.L121
        li      a4,2
        lw      a5,-148(s0)
        sub     a2,a4,a5
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-148(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a2
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        li      a3,2
        lw      a4,-148(s0)
        sub     a1,a3,a4
        addi    a3,a5,1000
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-148(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        add     a5,a5,a1
        slli    a5,a5,2
        add     a5,a2,a5
        sw      a3,0(a5)
.L121:
        lw      a5,-148(s0)
        addi    a5,a5,1
        sw      a5,-148(s0)
.L120:
        lw      a4,-148(s0)
        li      a5,2
        ble     a4,a5,.L122
.L103:
        sw      zero,-152(s0)
        sw      zero,-156(s0)
        sw      zero,-160(s0)
        j       .L123
.L127:
        sw      zero,-164(s0)
        j       .L124
.L126:
        lui     a5,0
        addi    a3,a5,0x148
        lw      a4,-160(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-164(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a3,0(a5)
        lui     a5,0
        addi    a2,a5,0x148
        lw      a4,-152(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-156(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a2,a5
        lw      a5,0(a5)
        ble     a3,a5,.L125
        lw      a5,-160(s0)
        sw      a5,-152(s0)
        lw      a5,-164(s0)
        sw      a5,-156(s0)
.L125:
        lw      a5,-164(s0)
        addi    a5,a5,1
        sw      a5,-164(s0)
.L124:
        lw      a4,-164(s0)
        li      a5,2
        ble     a4,a5,.L126
        lw      a5,-160(s0)
        addi    a5,a5,1
        sw      a5,-160(s0)
.L123:
        lw      a4,-160(s0)
        li      a5,2
        ble     a4,a5,.L127
        lui     a5,0
        addi    a3,a5,0x124
        lw      a4,-152(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-156(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        li      a4,5
        sw      a4,0(a5)
        lui     a5,0
        addi    a3,a5,0x100
        lw      a4,-152(s0)
        mv      a5,a4
        slli    a5,a5,1
        add     a5,a5,a4
        lw      a4,-156(s0)
        add     a5,a5,a4
        slli    a5,a5,2
        add     a5,a3,a5
        li      a4,-1
        sw      a4,0(a5)
        nop
        lw      s0,172(sp)
        addi    sp,sp,176
        jr      ra
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
        addi    a0,a0,3
        addi    a7,zero,34
        ecall
        jalr    zero,0(ra)

PlayTicTacToe:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        call	Reset
        call    PrintChessboard
        
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
        addi    a7,zero,1
        uret
notRepeat:
        addi    a0,zero,0
        addi    a7,zero,1
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

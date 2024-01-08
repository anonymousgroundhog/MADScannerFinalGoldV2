.class public Lorg/ejml/dense/fixed/CommonOps_FDF6;
.super Ljava/lang/Object;
.source "CommonOps_FDF6.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 2

    .line 106
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 107
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a2:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 108
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a3:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 109
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a4:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 110
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a5:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 111
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static add(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 52
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 53
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 54
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 55
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 56
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 57
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 58
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 59
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 60
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 61
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 62
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 63
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 64
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 65
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 66
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 67
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 68
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 69
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 70
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 71
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 72
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 73
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 74
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 75
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 76
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 77
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 78
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 79
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 80
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 81
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 82
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 83
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 84
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 85
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 86
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 87
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 2

    .line 174
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 175
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a2:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 176
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a3:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 177
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a4:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 178
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a5:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 179
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 125
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 126
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 127
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 128
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 129
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 130
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 131
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 132
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 133
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 134
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 135
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 136
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 137
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 138
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 139
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 140
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 141
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 142
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 143
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 144
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 145
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 146
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 147
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 148
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 149
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 150
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 151
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 152
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 153
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 154
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 155
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 156
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 157
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 158
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 159
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 160
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/FMatrix6;)V
    .locals 1

    .line 2133
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2134
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2135
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2136
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2137
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2138
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/FMatrix6x6;)V
    .locals 1

    .line 2114
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 2115
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 2116
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 2117
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 2118
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 2119
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static cholL(Lorg/ejml/data/FMatrix6x6;)Z
    .locals 4

    .line 1396
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    const/4 v0, 0x0

    .line 1397
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1398
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1399
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1400
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1401
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1402
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1403
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1404
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1405
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1406
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1407
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1408
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1409
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1410
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1411
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1412
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1413
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1414
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1415
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1416
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1417
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1418
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1419
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1420
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1421
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1422
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1423
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1424
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1425
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1426
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1427
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1428
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1429
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1430
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1431
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    .line 1432
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/FMatrix6x6;)Z
    .locals 4

    .line 1443
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    const/4 v0, 0x0

    .line 1444
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1445
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1446
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1447
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1448
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1449
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1450
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1451
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1452
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1453
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1454
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1455
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1456
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1457
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1458
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1459
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1460
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1461
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1462
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1463
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1464
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1465
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1466
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1467
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1468
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1469
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1470
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1471
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1472
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1473
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1474
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1475
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1476
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1477
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1478
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    .line 1479
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static diag(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6;)V
    .locals 1

    .line 1509
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1510
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1511
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1512
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1513
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1514
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iput p0, p1, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix6;F)V
    .locals 1

    .line 2055
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2056
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2057
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2058
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2059
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2060
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix6;FLorg/ejml/data/FMatrix6;)V
    .locals 1

    .line 2095
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2096
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2097
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2098
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2099
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2100
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix6x6;F)V
    .locals 1

    .line 2036
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 2037
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 2038
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 2039
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 2040
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 2041
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix6x6;FLorg/ejml/data/FMatrix6x6;)V
    .locals 1

    .line 2075
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 2076
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 2077
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 2078
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 2079
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 2080
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static dot(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)F
    .locals 3

    .line 1370
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 2

    .line 1903
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1904
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a2:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1905
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a3:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1906
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a4:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1907
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a5:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1908
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 2

    .line 1939
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1940
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a2:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1941
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a3:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1942
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a4:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1943
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a5:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1944
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 1886
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1887
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1888
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1889
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1890
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1891
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 1921
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1922
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1923
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1924
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1925
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1926
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/FMatrix6;)F
    .locals 2

    .line 1579
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1580
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1581
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1582
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1583
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1584
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    :cond_4
    return v0
.end method

.method public static elementMax(Lorg/ejml/data/FMatrix6x6;)F
    .locals 2

    .line 1528
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 1529
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1530
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1531
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1532
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1533
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1534
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_5

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1535
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1536
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1537
    :cond_7
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_8

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1538
    :cond_8
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_9

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1539
    :cond_9
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_a

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1540
    :cond_a
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_b

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1541
    :cond_b
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_c

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1542
    :cond_c
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_d

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1543
    :cond_d
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_e

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1544
    :cond_e
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_f

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1545
    :cond_f
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_10

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1546
    :cond_10
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_11

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1547
    :cond_11
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_12

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1548
    :cond_12
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_13

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1549
    :cond_13
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_14

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1550
    :cond_14
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_15

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1551
    :cond_15
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_16

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1552
    :cond_16
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_17

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1553
    :cond_17
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_18

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1554
    :cond_18
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_19

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1555
    :cond_19
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1a

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1556
    :cond_1a
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1b

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1557
    :cond_1b
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1c

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1558
    :cond_1c
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1d

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1559
    :cond_1d
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1e

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1560
    :cond_1e
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1f

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1561
    :cond_1f
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_20

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1562
    :cond_20
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_21

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1563
    :cond_21
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_22

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    :cond_22
    return v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrix6;)F
    .locals 3

    .line 1651
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1652
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 1653
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    .line 1654
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    move v0, v1

    .line 1655
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    move v0, v1

    .line 1656
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_4

    move v0, v1

    .line 1657
    :cond_4
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_5

    move v0, p0

    :cond_5
    return v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrix6x6;)F
    .locals 3

    .line 1600
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1601
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 1602
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    .line 1603
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    move v0, v1

    .line 1604
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    move v0, v1

    .line 1605
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_4

    move v0, v1

    .line 1606
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_5

    move v0, v1

    .line 1607
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_6

    move v0, v1

    .line 1608
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_7

    move v0, v1

    .line 1609
    :cond_7
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_8

    move v0, v1

    .line 1610
    :cond_8
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_9

    move v0, v1

    .line 1611
    :cond_9
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_a

    move v0, v1

    .line 1612
    :cond_a
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_b

    move v0, v1

    .line 1613
    :cond_b
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_c

    move v0, v1

    .line 1614
    :cond_c
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_d

    move v0, v1

    .line 1615
    :cond_d
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_e

    move v0, v1

    .line 1616
    :cond_e
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_f

    move v0, v1

    .line 1617
    :cond_f
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_10

    move v0, v1

    .line 1618
    :cond_10
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_11

    move v0, v1

    .line 1619
    :cond_11
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_12

    move v0, v1

    .line 1620
    :cond_12
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_13

    move v0, v1

    .line 1621
    :cond_13
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_14

    move v0, v1

    .line 1622
    :cond_14
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_15

    move v0, v1

    .line 1623
    :cond_15
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_16

    move v0, v1

    .line 1624
    :cond_16
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_17

    move v0, v1

    .line 1625
    :cond_17
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_18

    move v0, v1

    .line 1626
    :cond_18
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_19

    move v0, v1

    .line 1627
    :cond_19
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1a

    move v0, v1

    .line 1628
    :cond_1a
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1b

    move v0, v1

    .line 1629
    :cond_1b
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1c

    move v0, v1

    .line 1630
    :cond_1c
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1d

    move v0, v1

    .line 1631
    :cond_1d
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1e

    move v0, v1

    .line 1632
    :cond_1e
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1f

    move v0, v1

    .line 1633
    :cond_1f
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_20

    move v0, v1

    .line 1634
    :cond_20
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_21

    move v0, v1

    .line 1635
    :cond_21
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_22

    move v0, p0

    :cond_22
    return v0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrix6;)F
    .locals 2

    .line 1724
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1725
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1726
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1727
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1728
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1729
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    :cond_4
    return v0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrix6x6;)F
    .locals 2

    .line 1673
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 1674
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1675
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1676
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1677
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1678
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1679
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_5

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1680
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_6

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1681
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1682
    :cond_7
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_8

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1683
    :cond_8
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_9

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1684
    :cond_9
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_a

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1685
    :cond_a
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_b

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1686
    :cond_b
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_c

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1687
    :cond_c
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_d

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1688
    :cond_d
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_e

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1689
    :cond_e
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_f

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1690
    :cond_f
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_10

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1691
    :cond_10
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_11

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1692
    :cond_11
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_12

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1693
    :cond_12
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_13

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1694
    :cond_13
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_14

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1695
    :cond_14
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_15

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1696
    :cond_15
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_16

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1697
    :cond_16
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_17

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1698
    :cond_17
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_18

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1699
    :cond_18
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_19

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1700
    :cond_19
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1a

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1701
    :cond_1a
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1b

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1702
    :cond_1b
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1c

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1703
    :cond_1c
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1d

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1704
    :cond_1d
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1e

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1705
    :cond_1e
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1f

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1706
    :cond_1f
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_20

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1707
    :cond_20
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_21

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1708
    :cond_21
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_22

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    :cond_22
    return v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrix6;)F
    .locals 3

    .line 1796
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1797
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a1:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 1798
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    move v0, v1

    .line 1799
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    move v0, v1

    .line 1800
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    move v0, v1

    .line 1801
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_4

    move v0, v1

    .line 1802
    :cond_4
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_5

    move v0, p0

    :cond_5
    return v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrix6x6;)F
    .locals 3

    .line 1745
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1746
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 1747
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    move v0, v1

    .line 1748
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    move v0, v1

    .line 1749
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    move v0, v1

    .line 1750
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_4

    move v0, v1

    .line 1751
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_5

    move v0, v1

    .line 1752
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_6

    move v0, v1

    .line 1753
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_7

    move v0, v1

    .line 1754
    :cond_7
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_8

    move v0, v1

    .line 1755
    :cond_8
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_9

    move v0, v1

    .line 1756
    :cond_9
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_a

    move v0, v1

    .line 1757
    :cond_a
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_b

    move v0, v1

    .line 1758
    :cond_b
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_c

    move v0, v1

    .line 1759
    :cond_c
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_d

    move v0, v1

    .line 1760
    :cond_d
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_e

    move v0, v1

    .line 1761
    :cond_e
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_f

    move v0, v1

    .line 1762
    :cond_f
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_10

    move v0, v1

    .line 1763
    :cond_10
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_11

    move v0, v1

    .line 1764
    :cond_11
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_12

    move v0, v1

    .line 1765
    :cond_12
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_13

    move v0, v1

    .line 1766
    :cond_13
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_14

    move v0, v1

    .line 1767
    :cond_14
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_15

    move v0, v1

    .line 1768
    :cond_15
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_16

    move v0, v1

    .line 1769
    :cond_16
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_17

    move v0, v1

    .line 1770
    :cond_17
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_18

    move v0, v1

    .line 1771
    :cond_18
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_19

    move v0, v1

    .line 1772
    :cond_19
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1a

    move v0, v1

    .line 1773
    :cond_1a
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1b

    move v0, v1

    .line 1774
    :cond_1b
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1c

    move v0, v1

    .line 1775
    :cond_1c
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1d

    move v0, v1

    .line 1776
    :cond_1d
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1e

    move v0, v1

    .line 1777
    :cond_1e
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1f

    move v0, v1

    .line 1778
    :cond_1f
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_20

    move v0, v1

    .line 1779
    :cond_20
    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_21

    move v0, v1

    .line 1780
    :cond_21
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_22

    move v0, p0

    :cond_22
    return v0
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 2

    .line 1833
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1834
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1835
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1836
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1837
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1838
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 2

    .line 1869
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1870
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1871
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1872
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1873
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1874
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 1816
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1817
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1818
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1819
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1820
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1821
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 1851
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1852
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1853
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1854
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1855
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1856
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/FMatrix6x6;ILorg/ejml/data/FMatrix6;)Lorg/ejml/data/FMatrix6;
    .locals 1

    if-nez p2, :cond_0

    .line 2251
    new-instance p2, Lorg/ejml/data/FMatrix6;

    invoke-direct {p2}, Lorg/ejml/data/FMatrix6;-><init>()V

    :cond_0
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2294
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2295
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2296
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2297
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2298
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2299
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto/16 :goto_0

    .line 2302
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Out of bounds column. column = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2286
    :cond_2
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2287
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2288
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2289
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2290
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2291
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto :goto_0

    .line 2278
    :cond_3
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2279
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2280
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2281
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2282
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2283
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto :goto_0

    .line 2270
    :cond_4
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2271
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2272
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2273
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2274
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2275
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto :goto_0

    .line 2262
    :cond_5
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2263
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2264
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2265
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2266
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2267
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto :goto_0

    .line 2254
    :cond_6
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2255
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2256
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2257
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2258
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2259
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/FMatrix6x6;ILorg/ejml/data/FMatrix6;)Lorg/ejml/data/FMatrix6;
    .locals 1

    if-nez p2, :cond_0

    .line 2187
    new-instance p2, Lorg/ejml/data/FMatrix6;

    invoke-direct {p2}, Lorg/ejml/data/FMatrix6;-><init>()V

    :cond_0
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2230
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2231
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2232
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2233
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2234
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2235
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto/16 :goto_0

    .line 2238
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Out of bounds row. row = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2222
    :cond_2
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2223
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2224
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2225
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2226
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2227
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto :goto_0

    .line 2214
    :cond_3
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2215
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2216
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2217
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2218
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2219
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto :goto_0

    .line 2206
    :cond_4
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2207
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2208
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2209
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2210
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2211
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto :goto_0

    .line 2198
    :cond_5
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2199
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2200
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2201
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2202
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2203
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    goto :goto_0

    .line 2190
    :cond_6
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2191
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2192
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2193
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2194
    iget p1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2195
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/FMatrix6;F)V
    .locals 0

    .line 2171
    iput p1, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2172
    iput p1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2173
    iput p1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2174
    iput p1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2175
    iput p1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2176
    iput p1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static fill(Lorg/ejml/data/FMatrix6x6;F)V
    .locals 0

    .line 2152
    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 2153
    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 2154
    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 2155
    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 2156
    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 2157
    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iput p1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static mult(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 477
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 478
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 480
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 481
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 482
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 483
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 484
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 485
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 486
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 487
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 488
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 489
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 490
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 491
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 492
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 493
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 494
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 495
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 496
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 497
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 498
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 499
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 500
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 501
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 502
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 503
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 504
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 505
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 506
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 507
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 508
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 509
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 510
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 511
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 512
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 513
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 514
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6;)V
    .locals 3

    .line 1349
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1350
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1351
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1352
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1353
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1354
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 3

    .line 1328
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1329
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1330
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1331
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1332
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1333
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 423
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 426
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 427
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 428
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 429
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 430
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 431
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 432
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 433
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 434
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 435
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 436
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 437
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 438
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 439
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 440
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 441
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 442
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 443
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 444
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 445
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 446
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 447
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 448
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 449
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 450
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 451
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 452
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 453
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 454
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 455
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 456
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 457
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 458
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 459
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 460
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAdd(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 4

    .line 905
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 906
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 907
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 908
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 909
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 910
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 911
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 912
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 913
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 914
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 915
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 916
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 917
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 918
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 919
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 920
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 921
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 922
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 923
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 924
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 925
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 926
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 927
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 928
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 929
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 930
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 931
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 932
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 933
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 934
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 935
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 936
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 937
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 938
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 939
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 940
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 941
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 942
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 4

    .line 851
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 852
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 853
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 854
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 855
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 856
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 857
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 858
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 859
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 860
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 861
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 862
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 863
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 864
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 865
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 866
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 867
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 868
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 869
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 870
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 871
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 872
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 873
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 874
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 875
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 876
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 877
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 878
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 879
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 880
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 881
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 882
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 883
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 884
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 885
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 886
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 887
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 888
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAddOuter(FLorg/ejml/data/FMatrix6x6;FLorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 1277
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 1278
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1279
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1280
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1281
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1282
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1283
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1284
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1285
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1286
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1287
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1288
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1289
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1290
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1291
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1292
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1293
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1294
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1295
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1296
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1297
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1298
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1299
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1300
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1301
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1302
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1303
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1304
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1305
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1306
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1307
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1308
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1309
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1310
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1311
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1312
    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    iget p1, p3, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr p2, p1

    iget p1, p4, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    iput p0, p5, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAddTransA(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 4

    .line 1012
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1013
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1014
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 1015
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1016
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1017
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1018
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1019
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1020
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1021
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1022
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1023
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1024
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1025
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1026
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1027
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1028
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1029
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1030
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1031
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1032
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1033
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1034
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1035
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1036
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1037
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1038
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1039
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1040
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1041
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1042
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1043
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1044
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1045
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1046
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1047
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1048
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1049
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 4

    .line 958
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 959
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 960
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 961
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 962
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 963
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 964
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 965
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 966
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 967
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 968
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 969
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 970
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 971
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 972
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 973
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 974
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 975
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 976
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 977
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 978
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 979
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 980
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 981
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 982
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 983
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 984
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 985
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 986
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 987
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 988
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 989
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 990
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 991
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 992
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 993
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 994
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 995
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAddTransAB(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 4

    .line 1119
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1120
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1121
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 1122
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1123
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1124
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1125
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1126
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1127
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1128
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1129
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1130
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1131
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1132
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1133
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1134
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1135
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1136
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1137
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1138
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1139
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1140
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1141
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1142
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1143
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1144
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1145
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1146
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1147
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1148
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1149
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1150
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1151
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1152
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1153
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1154
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1155
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1156
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 4

    .line 1065
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1066
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1067
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 1068
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1069
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1070
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1071
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1072
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1073
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1074
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1075
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1076
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1077
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1078
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1079
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1080
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1081
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1082
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1083
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1084
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1085
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1086
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1087
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1088
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1089
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1090
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1091
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1092
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1093
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1094
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1095
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1096
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1097
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1098
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1099
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1100
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1101
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1102
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAddTransB(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 4

    .line 1226
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1228
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 1229
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1230
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1231
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1232
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1233
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1234
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1235
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1236
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1237
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1238
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1239
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1240
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1241
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1242
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1243
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1244
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1245
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1246
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1247
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1248
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1249
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1250
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1251
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1252
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1253
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1254
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1255
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1256
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1257
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1258
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1259
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1260
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1261
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1262
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1263
    iget v0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 4

    .line 1172
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1173
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1174
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 1175
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 1176
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 1177
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 1178
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 1179
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1180
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 1181
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 1182
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 1183
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 1184
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 1185
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1186
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 1187
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 1188
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 1189
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 1190
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 1191
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1192
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 1193
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 1194
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 1195
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 1196
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 1197
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1198
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 1199
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 1200
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 1201
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 1202
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 1203
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1204
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1205
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1206
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1207
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1208
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1209
    iget v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v3, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multTransA(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 584
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 587
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 588
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 589
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 590
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 591
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 592
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 593
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 594
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 595
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 596
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 597
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 598
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 599
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 600
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 601
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 602
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 603
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 604
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 605
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 606
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 607
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 608
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 609
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 610
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 611
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 612
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 613
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 614
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 615
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 616
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 617
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 618
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 619
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 620
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 621
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 530
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 533
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 534
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 535
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 536
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 537
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 538
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 539
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 540
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 541
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 542
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 543
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 544
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 545
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 546
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 547
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 548
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 549
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 550
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 551
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 552
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 553
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 554
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 555
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 556
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 557
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 558
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 559
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 560
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 561
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 562
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 563
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 564
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 565
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 566
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 567
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multTransAB(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 691
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 692
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 694
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 695
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 696
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 697
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 698
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 699
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 700
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 701
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 702
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 703
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 704
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 705
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 706
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 707
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 708
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 709
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 710
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 711
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 712
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 713
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 714
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 715
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 716
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 717
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 718
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 719
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 720
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 721
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 722
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 723
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 724
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 725
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 726
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 727
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 728
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 637
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 638
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 640
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 641
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 642
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 643
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 644
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 645
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 646
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 647
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 648
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 649
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 650
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 651
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 652
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 653
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 654
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 655
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 656
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 657
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 658
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 659
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 660
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 661
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 662
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 663
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 664
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 665
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 666
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 667
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 668
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 669
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 670
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 671
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 672
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 673
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 674
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multTransB(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 798
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 799
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 800
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 801
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 802
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 803
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 804
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 805
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 806
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 807
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 808
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 809
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 810
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 811
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 812
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 813
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 814
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 815
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 816
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 817
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 818
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 819
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 820
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 821
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 822
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 823
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 824
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 825
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 826
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 827
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 828
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 829
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 830
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 831
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 832
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 833
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 834
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 835
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p2, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 3

    .line 744
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 745
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 746
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 747
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 748
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 749
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 750
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 751
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 752
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 753
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 754
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 755
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 756
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 757
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 758
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 759
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 760
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 761
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 762
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 763
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 764
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 765
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 766
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 767
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 768
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 769
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 770
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 771
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 772
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 773
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 774
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 775
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 776
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 777
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 778
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 779
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 780
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 781
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix6;)V
    .locals 1

    .line 1977
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a1:F

    .line 1978
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a2:F

    .line 1979
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a3:F

    .line 1980
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a4:F

    .line 1981
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a5:F

    .line 1982
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 1

    .line 2017
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a1:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 2018
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a2:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 2019
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a3:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 2020
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a4:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 2021
    iget v0, p1, Lorg/ejml/data/FMatrix6;->a5:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 2022
    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix6x6;)V
    .locals 1

    .line 1958
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1959
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1960
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 1961
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 1962
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 1963
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 1

    .line 1997
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 1998
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 1999
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 2000
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 2001
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 2002
    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v0, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1380
    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 1381
    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 1382
    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 1383
    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 1384
    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 1385
    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static subtract(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 2

    .line 252
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a1:F

    .line 253
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a2:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a2:F

    .line 254
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a3:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a3:F

    .line 255
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a4:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a4:F

    .line 256
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a5:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6;->a5:F

    .line 257
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static subtract(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 198
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 199
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 200
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 201
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 202
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 203
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 204
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 205
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 206
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 207
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 208
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 209
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 210
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 211
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 212
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 213
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 214
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 215
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 216
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 217
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 218
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 219
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 220
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 221
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 222
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 223
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 224
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 225
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 226
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 227
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 228
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 229
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 230
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 231
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 232
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 233
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;)V
    .locals 2

    .line 320
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    .line 321
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a2:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    .line 322
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a3:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    .line 323
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a4:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    .line 324
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a5:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    .line 325
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 271
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 272
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 273
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 274
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 275
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 276
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 277
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 278
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 279
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 280
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 281
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 282
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 283
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 284
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 285
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 286
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 287
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 288
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 289
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 290
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 291
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 292
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 293
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 294
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 295
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 296
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 297
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 298
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 299
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 300
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 301
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 302
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 303
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 304
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 305
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 306
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-void
.end method

.method public static trace(Lorg/ejml/data/FMatrix6x6;)F
    .locals 2

    .line 1495
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    add-float/2addr v0, p0

    return v0
.end method

.method public static transpose(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;)Lorg/ejml/data/FMatrix6x6;
    .locals 1

    if-nez p0, :cond_0

    .line 367
    new-instance p0, Lorg/ejml/data/FMatrix6x6;

    invoke-direct {p0}, Lorg/ejml/data/FMatrix6x6;-><init>()V

    .line 369
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 371
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 372
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 373
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 374
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 375
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 376
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 377
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 378
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 379
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 380
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 381
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 382
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 383
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 384
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 385
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 386
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 387
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 388
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 389
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 390
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 391
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 392
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 393
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 394
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 395
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 396
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 397
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 398
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 399
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 400
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 401
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 402
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 403
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 404
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 405
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iput p0, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/FMatrix6x6;)V
    .locals 2

    .line 336
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 337
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 338
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 339
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 340
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 341
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 342
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 343
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 344
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 345
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 346
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 347
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 348
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 349
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 350
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iput v1, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iput v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    return-void
.end method

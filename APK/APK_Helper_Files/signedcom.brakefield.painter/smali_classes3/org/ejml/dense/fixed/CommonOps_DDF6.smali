.class public Lorg/ejml/dense/fixed/CommonOps_DDF6;
.super Ljava/lang/Object;
.source "CommonOps_DDF6.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 4

    .line 106
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 107
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 108
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a3:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 109
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a4:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 110
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a5:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 111
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 52
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 53
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 54
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 55
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 56
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 57
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 58
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 59
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 60
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 61
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 62
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 63
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 64
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 65
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 66
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 67
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 68
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 69
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 70
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 71
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 72
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 73
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 74
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 75
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 76
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 77
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 78
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 79
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 80
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 81
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 82
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 83
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 84
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 85
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 86
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 87
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 4

    .line 174
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 175
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 176
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a3:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 177
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a4:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 178
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a5:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 179
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a6:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 125
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 126
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 127
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 128
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 129
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 130
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 131
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 132
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 133
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 134
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 135
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 136
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 137
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 138
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 139
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 140
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 141
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 142
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 143
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 144
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 145
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 146
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 147
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 148
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 149
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 150
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 151
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 152
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 153
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 154
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 155
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 156
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 157
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 158
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 159
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 160
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix6;)V
    .locals 2

    .line 2133
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2134
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2135
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2136
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2137
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2138
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix6x6;)V
    .locals 2

    .line 2114
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 2115
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 2116
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 2117
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 2118
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 2119
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static cholL(Lorg/ejml/data/DMatrix6x6;)Z
    .locals 8

    .line 1396
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    const-wide/16 v0, 0x0

    .line 1397
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1398
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1399
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1400
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1401
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1402
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1403
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1404
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1405
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1406
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1407
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1408
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1409
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1410
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1411
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1412
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1413
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1414
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1415
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1416
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1417
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1418
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1419
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1420
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1421
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1422
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1423
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1424
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1425
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1426
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1427
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1428
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1429
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1430
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1431
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    .line 1432
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/DMatrix6x6;)Z
    .locals 8

    .line 1443
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    const-wide/16 v0, 0x0

    .line 1444
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1445
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1446
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1447
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1448
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1449
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1450
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1451
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1452
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1453
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1454
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1455
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1456
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1457
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1458
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1459
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1460
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1461
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1462
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1463
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1464
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1465
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1466
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1467
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1468
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1469
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1470
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1471
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1472
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1473
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1474
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1475
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1476
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1477
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1478
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    .line 1479
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static diag(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6;)V
    .locals 2

    .line 1509
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1510
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1511
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1512
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1513
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1514
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix6;D)V
    .locals 2

    .line 2055
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2056
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2057
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2058
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2059
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2060
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix6;DLorg/ejml/data/DMatrix6;)V
    .locals 2

    .line 2095
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2096
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2097
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2098
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2099
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2100
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix6x6;D)V
    .locals 2

    .line 2036
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 2037
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 2038
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 2039
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 2040
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 2041
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix6x6;DLorg/ejml/data/DMatrix6x6;)V
    .locals 2

    .line 2075
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 2076
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 2077
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 2078
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 2079
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 2080
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static dot(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)D
    .locals 6

    .line 1370
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 4

    .line 1903
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1904
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1905
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a3:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1906
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a4:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1907
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a5:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1908
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a6:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 4

    .line 1939
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1940
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1941
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a3:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1942
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a4:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1943
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a5:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1944
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 1886
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1887
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1888
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1889
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1890
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1891
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 1921
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1922
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1923
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1924
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1925
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1926
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix6;)D
    .locals 4

    .line 1579
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1580
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1581
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1582
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1583
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1584
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    :cond_4
    return-wide v0
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix6x6;)D
    .locals 4

    .line 1528
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 1529
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1530
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1531
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1532
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1533
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1534
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_5

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1535
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_6

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1536
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_7

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1537
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_8

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1538
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_9

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1539
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_a

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1540
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_b

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1541
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_c

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1542
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_d

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1543
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_e

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1544
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_f

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1545
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_10

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1546
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_11

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1547
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_12

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1548
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_13

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1549
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_14

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1550
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_15

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1551
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_16

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1552
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_17

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1553
    :cond_17
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_18

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1554
    :cond_18
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_19

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1555
    :cond_19
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1a

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1556
    :cond_1a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1b

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1557
    :cond_1b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1c

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1558
    :cond_1c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1d

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1559
    :cond_1d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1e

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1560
    :cond_1e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1f

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1561
    :cond_1f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_20

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1562
    :cond_20
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_21

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1563
    :cond_21
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_22

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    :cond_22
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix6;)D
    .locals 5

    .line 1651
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1652
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 1653
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1654
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    move-wide v0, v2

    .line 1655
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_3

    move-wide v0, v2

    .line 1656
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_4

    move-wide v0, v2

    .line 1657
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_5

    move-wide v0, v2

    :cond_5
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix6x6;)D
    .locals 5

    .line 1600
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1601
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 1602
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1603
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    move-wide v0, v2

    .line 1604
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_3

    move-wide v0, v2

    .line 1605
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_4

    move-wide v0, v2

    .line 1606
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_5

    move-wide v0, v2

    .line 1607
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_6

    move-wide v0, v2

    .line 1608
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_7

    move-wide v0, v2

    .line 1609
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_8

    move-wide v0, v2

    .line 1610
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_9

    move-wide v0, v2

    .line 1611
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_a

    move-wide v0, v2

    .line 1612
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_b

    move-wide v0, v2

    .line 1613
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_c

    move-wide v0, v2

    .line 1614
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_d

    move-wide v0, v2

    .line 1615
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_e

    move-wide v0, v2

    .line 1616
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_f

    move-wide v0, v2

    .line 1617
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_10

    move-wide v0, v2

    .line 1618
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_11

    move-wide v0, v2

    .line 1619
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_12

    move-wide v0, v2

    .line 1620
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_13

    move-wide v0, v2

    .line 1621
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_14

    move-wide v0, v2

    .line 1622
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_15

    move-wide v0, v2

    .line 1623
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_16

    move-wide v0, v2

    .line 1624
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_17

    move-wide v0, v2

    .line 1625
    :cond_17
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_18

    move-wide v0, v2

    .line 1626
    :cond_18
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_19

    move-wide v0, v2

    .line 1627
    :cond_19
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1a

    move-wide v0, v2

    .line 1628
    :cond_1a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1b

    move-wide v0, v2

    .line 1629
    :cond_1b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1c

    move-wide v0, v2

    .line 1630
    :cond_1c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1d

    move-wide v0, v2

    .line 1631
    :cond_1d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1e

    move-wide v0, v2

    .line 1632
    :cond_1e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1f

    move-wide v0, v2

    .line 1633
    :cond_1f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_20

    move-wide v0, v2

    .line 1634
    :cond_20
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_21

    move-wide v0, v2

    .line 1635
    :cond_21
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_22

    move-wide v0, v2

    :cond_22
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix6;)D
    .locals 4

    .line 1724
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1725
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1726
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1727
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1728
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1729
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    :cond_4
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix6x6;)D
    .locals 4

    .line 1673
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 1674
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1675
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1676
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1677
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1678
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1679
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_5

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1680
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_6

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1681
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_7

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1682
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_8

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1683
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_9

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1684
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_a

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1685
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_b

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1686
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_c

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1687
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_d

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1688
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_e

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1689
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_f

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1690
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_10

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1691
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_11

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1692
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_12

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1693
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_13

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1694
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_14

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1695
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_15

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1696
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_16

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1697
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_17

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1698
    :cond_17
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_18

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1699
    :cond_18
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_19

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1700
    :cond_19
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1a

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1701
    :cond_1a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1b

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1702
    :cond_1b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1c

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1703
    :cond_1c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1d

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1704
    :cond_1d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1e

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1705
    :cond_1e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1f

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1706
    :cond_1f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_20

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1707
    :cond_20
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_21

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1708
    :cond_21
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_22

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    :cond_22
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix6;)D
    .locals 5

    .line 1796
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1797
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a1:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 1798
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 1799
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 1800
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    move-wide v0, v2

    .line 1801
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_4

    move-wide v0, v2

    .line 1802
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_5

    move-wide v0, v2

    :cond_5
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix6x6;)D
    .locals 5

    .line 1745
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1746
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 1747
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 1748
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 1749
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    move-wide v0, v2

    .line 1750
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_4

    move-wide v0, v2

    .line 1751
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_5

    move-wide v0, v2

    .line 1752
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_6

    move-wide v0, v2

    .line 1753
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_7

    move-wide v0, v2

    .line 1754
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_8

    move-wide v0, v2

    .line 1755
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_9

    move-wide v0, v2

    .line 1756
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_a

    move-wide v0, v2

    .line 1757
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_b

    move-wide v0, v2

    .line 1758
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_c

    move-wide v0, v2

    .line 1759
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_d

    move-wide v0, v2

    .line 1760
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_e

    move-wide v0, v2

    .line 1761
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_f

    move-wide v0, v2

    .line 1762
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_10

    move-wide v0, v2

    .line 1763
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_11

    move-wide v0, v2

    .line 1764
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_12

    move-wide v0, v2

    .line 1765
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_13

    move-wide v0, v2

    .line 1766
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_14

    move-wide v0, v2

    .line 1767
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_15

    move-wide v0, v2

    .line 1768
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_16

    move-wide v0, v2

    .line 1769
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_17

    move-wide v0, v2

    .line 1770
    :cond_17
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_18

    move-wide v0, v2

    .line 1771
    :cond_18
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_19

    move-wide v0, v2

    .line 1772
    :cond_19
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1a

    move-wide v0, v2

    .line 1773
    :cond_1a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1b

    move-wide v0, v2

    .line 1774
    :cond_1b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1c

    move-wide v0, v2

    .line 1775
    :cond_1c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1d

    move-wide v0, v2

    .line 1776
    :cond_1d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1e

    move-wide v0, v2

    .line 1777
    :cond_1e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1f

    move-wide v0, v2

    .line 1778
    :cond_1f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_20

    move-wide v0, v2

    .line 1779
    :cond_20
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_21

    move-wide v0, v2

    .line 1780
    :cond_21
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_22

    move-wide v0, v2

    :cond_22
    return-wide v0
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 4

    .line 1833
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1834
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1835
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1836
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1837
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1838
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 4

    .line 1869
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1870
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1871
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1872
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1873
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1874
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 1816
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1817
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1818
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1819
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1820
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1821
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 1851
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1852
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1853
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1854
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1855
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1856
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/DMatrix6x6;ILorg/ejml/data/DMatrix6;)Lorg/ejml/data/DMatrix6;
    .locals 2

    if-nez p2, :cond_0

    .line 2251
    new-instance p2, Lorg/ejml/data/DMatrix6;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix6;-><init>()V

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
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2295
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2296
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2297
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2298
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2299
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

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
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2287
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2288
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2289
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2290
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2291
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 2278
    :cond_3
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2279
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2280
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2281
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2282
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2283
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 2270
    :cond_4
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2271
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2272
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2273
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2274
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2275
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 2262
    :cond_5
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2263
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2264
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2265
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2266
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2267
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 2254
    :cond_6
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2255
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2256
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2257
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2258
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2259
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/DMatrix6x6;ILorg/ejml/data/DMatrix6;)Lorg/ejml/data/DMatrix6;
    .locals 2

    if-nez p2, :cond_0

    .line 2187
    new-instance p2, Lorg/ejml/data/DMatrix6;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix6;-><init>()V

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
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2231
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2232
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2233
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2234
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2235
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

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
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2223
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2224
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2225
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2226
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2227
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 2214
    :cond_3
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2215
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2216
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2217
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2218
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2219
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 2206
    :cond_4
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2207
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2208
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2209
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2210
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2211
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 2198
    :cond_5
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2199
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2200
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2201
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2202
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2203
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    goto :goto_0

    .line 2190
    :cond_6
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2191
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2192
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2193
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2194
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2195
    iget-wide p0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/DMatrix6;D)V
    .locals 0

    .line 2171
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2172
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2173
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2174
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2175
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2176
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static fill(Lorg/ejml/data/DMatrix6x6;D)V
    .locals 0

    .line 2152
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 2153
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 2154
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 2155
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 2156
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 2157
    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static mult(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 477
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 478
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 480
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 481
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 482
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 483
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 484
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 485
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 486
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 487
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 488
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 489
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 490
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 491
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 492
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 493
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 494
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 495
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 496
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 497
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 498
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 499
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 500
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 501
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 502
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 503
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 504
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 505
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 506
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 507
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 508
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 509
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 510
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 511
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 512
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 513
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 514
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6;)V
    .locals 6

    .line 1349
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1350
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1351
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1352
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1353
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1354
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 6

    .line 1328
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1329
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1330
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1331
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1332
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1333
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 423
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 426
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 427
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 428
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 429
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 430
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 431
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 432
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 433
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 434
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 435
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 436
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 437
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 438
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 439
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 440
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 441
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 442
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 443
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 444
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 445
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 446
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 447
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 448
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 449
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 450
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 451
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 452
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 453
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 454
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 455
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 456
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 457
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 458
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 459
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 460
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAdd(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 8

    .line 905
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 906
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 907
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 908
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 909
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 910
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 911
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 912
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 913
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 914
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 915
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 916
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 917
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 918
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 919
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 920
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 921
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 922
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 923
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 924
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 925
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 926
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 927
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 928
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 929
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 930
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 931
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 932
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 933
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 934
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 935
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 936
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 937
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 938
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 939
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 940
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 941
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 942
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 8

    .line 851
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 852
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 853
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 854
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 855
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 856
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 857
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 858
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 859
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 860
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 861
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 862
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 863
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 864
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 865
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 866
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 867
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 868
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 869
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 870
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 871
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 872
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 873
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 874
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 875
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 876
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 877
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 878
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 879
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 880
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 881
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 882
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 883
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 884
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 885
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 886
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 887
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 888
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAddOuter(DLorg/ejml/data/DMatrix6x6;DLorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 1277
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 1278
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1279
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1280
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1281
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1282
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1283
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1284
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1285
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1286
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1287
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1288
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1289
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1290
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1291
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1292
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1293
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1294
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1295
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1296
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1297
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1298
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1299
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1300
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1301
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1302
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1303
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1304
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1305
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1306
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1307
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1308
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1309
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1310
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1311
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1312
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr p0, v0

    iget-wide v0, p5, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr p3, v0

    iget-wide p5, p6, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr p3, p5

    add-double/2addr p0, p3

    iput-wide p0, p7, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAddTransA(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 8

    .line 1012
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1013
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1014
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 1015
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1016
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1017
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1018
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1019
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1020
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1021
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1022
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1023
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1024
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1025
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1026
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1027
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1028
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1029
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1030
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1031
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1032
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1033
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1034
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1035
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1036
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1037
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1038
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1039
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1040
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1041
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1042
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1043
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1044
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1045
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1046
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1047
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1048
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1049
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 8

    .line 958
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 959
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 960
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 961
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 962
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 963
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 964
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 965
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 966
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 967
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 968
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 969
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 970
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 971
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 972
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 973
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 974
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 975
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 976
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 977
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 978
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 979
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 980
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 981
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 982
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 983
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 984
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 985
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 986
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 987
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 988
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 989
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 990
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 991
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 992
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 993
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 994
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 995
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 8

    .line 1119
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1120
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1121
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 1122
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1123
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1124
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1125
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1126
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1127
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1128
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1129
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1130
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1131
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1132
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1133
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1134
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1135
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1136
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1137
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1138
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1139
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1140
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1141
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1142
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1143
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1144
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1145
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1146
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1147
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1148
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1149
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1150
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1151
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1152
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1153
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1154
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1155
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1156
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 8

    .line 1065
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1066
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1067
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 1068
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1069
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1070
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1071
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1072
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1073
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1074
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1075
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1076
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1077
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1078
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1079
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1080
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1081
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1082
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1083
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1084
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1085
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1086
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1087
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1088
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1089
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1090
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1091
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1092
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1093
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1094
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1095
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1096
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1097
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1098
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1099
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1100
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1101
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1102
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 8

    .line 1226
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1228
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 1229
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1230
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1231
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1232
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1233
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1234
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1235
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1236
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1237
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1238
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1239
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1240
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1241
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1242
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1243
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1244
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1245
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1246
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1247
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1248
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1249
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1250
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1251
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1252
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1253
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1254
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1255
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1256
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1257
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1258
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1259
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1260
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1261
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1262
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1263
    iget-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 8

    .line 1172
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1173
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1174
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 1175
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 1176
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 1177
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 1178
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 1179
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1180
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 1181
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 1182
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 1183
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 1184
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 1185
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1186
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 1187
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 1188
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 1189
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 1190
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 1191
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1192
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 1193
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 1194
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 1195
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 1196
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 1197
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1198
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 1199
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 1200
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 1201
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 1202
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 1203
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1204
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1205
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1206
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1207
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1208
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1209
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multTransA(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 584
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 587
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 588
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 589
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 590
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 591
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 592
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 593
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 594
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 595
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 596
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 597
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 598
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 599
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 600
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 601
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 602
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 603
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 604
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 605
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 606
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 607
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 608
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 609
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 610
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 611
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 612
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 613
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 614
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 615
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 616
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 617
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 618
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 619
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 620
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 621
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 530
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 533
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 534
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 535
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 536
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 537
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 538
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 539
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 540
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 541
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 542
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 543
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 544
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 545
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 546
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 547
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 548
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 549
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 550
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 551
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 552
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 553
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 554
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 555
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 556
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 557
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 558
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 559
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 560
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 561
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 562
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 563
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 564
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 565
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 566
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 567
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 691
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 692
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 694
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 695
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 696
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 697
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 698
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 699
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 700
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 701
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 702
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 703
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 704
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 705
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 706
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 707
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 708
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 709
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 710
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 711
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 712
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 713
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 714
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 715
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 716
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 717
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 718
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 719
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 720
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 721
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 722
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 723
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 724
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 725
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 726
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 727
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 728
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 637
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 638
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 640
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 641
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 642
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 643
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 644
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 645
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 646
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 647
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 648
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 649
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 650
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 651
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 652
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 653
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 654
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 655
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 656
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 657
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 658
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 659
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 660
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 661
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 662
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 663
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 664
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 665
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 666
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 667
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 668
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 669
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 670
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 671
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 672
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 673
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 674
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 798
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 799
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 800
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 801
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 802
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 803
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 804
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 805
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 806
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 807
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 808
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 809
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 810
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 811
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 812
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 813
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 814
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 815
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 816
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 817
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 818
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 819
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 820
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 821
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 822
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 823
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 824
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 825
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 826
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 827
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 828
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 829
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 830
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 831
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 832
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 833
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 834
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 835
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 6

    .line 744
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 745
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 746
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 747
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 748
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 749
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 750
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 751
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 752
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 753
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 754
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 755
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 756
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 757
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 758
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 759
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 760
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 761
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 762
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 763
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 764
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 765
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 766
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 767
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 768
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 769
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 770
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 771
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 772
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 773
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 774
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 775
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 776
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 777
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 778
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 779
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 780
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 781
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix6;)V
    .locals 2

    .line 1977
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 1978
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 1979
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 1980
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 1981
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 1982
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 2

    .line 2017
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a1:D

    .line 2018
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a2:D

    .line 2019
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a3:D

    .line 2020
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a4:D

    .line 2021
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a5:D

    .line 2022
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix6x6;)V
    .locals 2

    .line 1958
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1959
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1960
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 1961
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 1962
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 1963
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 2

    .line 1997
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 1998
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 1999
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 2000
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 2001
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 2002
    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1380
    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 1381
    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 1382
    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 1383
    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 1384
    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 1385
    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 4

    .line 252
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a1:D

    .line 253
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a2:D

    .line 254
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a3:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a3:D

    .line 255
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a4:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a4:D

    .line 256
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a5:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a5:D

    .line 257
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 198
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 199
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 200
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 201
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 202
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 203
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 204
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 205
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 206
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 207
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 208
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 209
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 210
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 211
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 212
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 213
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 214
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 215
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 216
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 217
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 218
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 219
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 220
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 221
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 222
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 223
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 224
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 225
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 226
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 227
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 228
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 229
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 230
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 231
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 232
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 233
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;)V
    .locals 4

    .line 320
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    .line 321
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a2:D

    .line 322
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a3:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a3:D

    .line 323
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a4:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a4:D

    .line 324
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a5:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a5:D

    .line 325
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a6:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6;->a6:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 271
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 272
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 273
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 274
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 275
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 276
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 277
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 278
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 279
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 280
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 281
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 282
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 283
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 284
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 285
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 286
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 287
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 288
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 289
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 290
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 291
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 292
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 293
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 294
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 295
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 296
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 297
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 298
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 299
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 300
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 301
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 302
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 303
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 304
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 305
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 306
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-void
.end method

.method public static trace(Lorg/ejml/data/DMatrix6x6;)D
    .locals 4

    .line 1495
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static transpose(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;)Lorg/ejml/data/DMatrix6x6;
    .locals 2

    if-nez p0, :cond_0

    .line 367
    new-instance p0, Lorg/ejml/data/DMatrix6x6;

    invoke-direct {p0}, Lorg/ejml/data/DMatrix6x6;-><init>()V

    .line 369
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 371
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 372
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 373
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 374
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 375
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 376
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 377
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 378
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 379
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 380
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 381
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 382
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 383
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 384
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 385
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 386
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 387
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 388
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 389
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 390
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 391
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 392
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 393
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 394
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 395
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 396
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 397
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 398
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 399
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 400
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 401
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 402
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 403
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 404
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 405
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/DMatrix6x6;)V
    .locals 4

    .line 336
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 337
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 338
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 339
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 340
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 341
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 342
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 343
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 344
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 345
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 346
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 347
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 348
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 349
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 350
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    return-void
.end method

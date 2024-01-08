.class public Lorg/ejml/dense/fixed/CommonOps_DDF5;
.super Ljava/lang/Object;
.source "CommonOps_DDF5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 4

    .line 95
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 96
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 97
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a3:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 98
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a4:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 99
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 52
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 53
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 54
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 55
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 56
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 57
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 58
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 59
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 60
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 61
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 62
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 63
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 64
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 65
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 66
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 67
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 68
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 69
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 70
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 71
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 72
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 73
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 74
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 75
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 76
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 4

    .line 151
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 152
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 153
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a3:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 154
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a4:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 155
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a5:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 113
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 114
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 115
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 116
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 117
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 118
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 119
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 120
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 121
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 122
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 123
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 124
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 125
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 126
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 127
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 128
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 129
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 130
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 131
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 132
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 133
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 134
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 135
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 136
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 137
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix5;)V
    .locals 2

    .line 1940
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1941
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1942
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1943
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1944
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix5x5;)V
    .locals 2

    .line 1922
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1923
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1924
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1925
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1926
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static cholL(Lorg/ejml/data/DMatrix5x5;)Z
    .locals 8

    .line 1291
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    const-wide/16 v0, 0x0

    .line 1292
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 1293
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 1294
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 1295
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1296
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 1297
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 1298
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 1299
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 1300
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1301
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 1302
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 1303
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 1304
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 1305
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1306
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 1307
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 1308
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 1309
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 1310
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1311
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 1312
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 1313
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 1314
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 1315
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    .line 1316
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/DMatrix5x5;)Z
    .locals 8

    .line 1327
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    const-wide/16 v0, 0x0

    .line 1328
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 1329
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 1330
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 1331
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 1332
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 1333
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 1334
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 1335
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 1336
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 1337
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 1338
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 1339
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 1340
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 1341
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 1342
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 1343
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 1344
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 1345
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 1346
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 1347
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1348
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1349
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1350
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1351
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    .line 1352
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static det(Lorg/ejml/data/DMatrix5x5;)D
    .locals 53

    move-object/from16 v0, p0

    .line 1240
    iget-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 1241
    iget-wide v3, v0, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 1242
    iget-wide v5, v0, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 1243
    iget-wide v7, v0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1244
    iget-wide v9, v0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 1245
    iget-wide v11, v0, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 1246
    iget-wide v13, v0, Lorg/ejml/data/DMatrix5x5;->a34:D

    move-wide v15, v7

    .line 1247
    iget-wide v7, v0, Lorg/ejml/data/DMatrix5x5;->a35:D

    move-wide/from16 v17, v5

    .line 1248
    iget-wide v5, v0, Lorg/ejml/data/DMatrix5x5;->a42:D

    move-wide/from16 v19, v3

    .line 1249
    iget-wide v3, v0, Lorg/ejml/data/DMatrix5x5;->a43:D

    move-wide/from16 v21, v5

    .line 1250
    iget-wide v5, v0, Lorg/ejml/data/DMatrix5x5;->a44:D

    move-wide/from16 v23, v9

    .line 1251
    iget-wide v9, v0, Lorg/ejml/data/DMatrix5x5;->a45:D

    move-wide/from16 v25, v1

    .line 1252
    iget-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a52:D

    move-wide/from16 v27, v1

    .line 1253
    iget-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a53:D

    move-wide/from16 v29, v7

    .line 1254
    iget-wide v7, v0, Lorg/ejml/data/DMatrix5x5;->a54:D

    move-wide/from16 v31, v13

    .line 1255
    iget-wide v13, v0, Lorg/ejml/data/DMatrix5x5;->a55:D

    move-wide/from16 v33, v1

    .line 1258
    iget-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double v35, v5, v13

    mul-double v37, v9, v7

    sub-double v35, v35, v37

    mul-double v37, v11, v35

    mul-double v39, v3, v13

    mul-double v41, v9, v33

    sub-double v39, v39, v41

    mul-double v41, v31, v39

    sub-double v37, v37, v41

    mul-double v41, v3, v7

    mul-double v43, v5, v33

    sub-double v41, v41, v43

    mul-double v43, v29, v41

    add-double v37, v37, v43

    mul-double v25, v25, v37

    mul-double v43, v23, v35

    mul-double v45, v21, v13

    mul-double v47, v9, v27

    sub-double v45, v45, v47

    mul-double v47, v31, v45

    sub-double v43, v43, v47

    mul-double v47, v21, v7

    mul-double v49, v5, v27

    sub-double v47, v47, v49

    mul-double v49, v29, v47

    add-double v43, v43, v49

    mul-double v43, v43, v19

    sub-double v25, v25, v43

    mul-double v43, v23, v39

    mul-double v45, v45, v11

    sub-double v43, v43, v45

    mul-double v21, v21, v33

    mul-double v27, v27, v3

    sub-double v21, v21, v27

    mul-double v27, v29, v21

    add-double v43, v43, v27

    mul-double v27, v17, v43

    add-double v25, v25, v27

    mul-double v23, v23, v41

    mul-double v47, v47, v11

    sub-double v23, v23, v47

    mul-double v21, v21, v31

    add-double v23, v23, v21

    mul-double v21, v15, v23

    sub-double v25, v25, v21

    mul-double v1, v1, v25

    const-wide/16 v21, 0x0

    add-double v1, v1, v21

    move-wide/from16 v21, v1

    .line 1259
    iget-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a21:D

    move-wide/from16 v23, v3

    .line 1260
    iget-wide v3, v0, Lorg/ejml/data/DMatrix5x5;->a31:D

    move-wide/from16 v25, v11

    .line 1261
    iget-wide v11, v0, Lorg/ejml/data/DMatrix5x5;->a41:D

    move-wide/from16 v27, v5

    .line 1262
    iget-wide v5, v0, Lorg/ejml/data/DMatrix5x5;->a51:D

    move-wide/from16 v43, v7

    .line 1263
    iget-wide v7, v0, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double v37, v37, v1

    mul-double v45, v3, v35

    mul-double v47, v11, v13

    mul-double v49, v9, v5

    sub-double v47, v47, v49

    mul-double v49, v31, v47

    sub-double v45, v45, v49

    mul-double v49, v11, v43

    mul-double v51, v27, v5

    sub-double v49, v49, v51

    mul-double v51, v29, v49

    add-double v45, v45, v51

    mul-double v19, v19, v45

    sub-double v37, v37, v19

    mul-double v39, v39, v3

    mul-double v19, v25, v47

    sub-double v39, v39, v19

    mul-double v19, v11, v33

    mul-double v23, v23, v5

    sub-double v19, v19, v23

    mul-double v23, v29, v19

    add-double v39, v39, v23

    mul-double v23, v17, v39

    add-double v37, v37, v23

    mul-double v41, v41, v3

    mul-double v23, v25, v49

    sub-double v41, v41, v23

    mul-double v19, v19, v31

    add-double v41, v41, v19

    mul-double v19, v15, v41

    sub-double v37, v37, v19

    mul-double v7, v7, v37

    sub-double v7, v21, v7

    move-wide/from16 v19, v7

    .line 1264
    iget-wide v7, v0, Lorg/ejml/data/DMatrix5x5;->a22:D

    move-wide/from16 v21, v5

    .line 1265
    iget-wide v5, v0, Lorg/ejml/data/DMatrix5x5;->a32:D

    move-wide/from16 v23, v11

    .line 1266
    iget-wide v11, v0, Lorg/ejml/data/DMatrix5x5;->a42:D

    move-wide/from16 v25, v3

    .line 1267
    iget-wide v3, v0, Lorg/ejml/data/DMatrix5x5;->a52:D

    move-wide/from16 v33, v7

    .line 1268
    iget-wide v7, v0, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double v35, v35, v5

    mul-double v37, v11, v13

    mul-double v39, v9, v3

    sub-double v37, v37, v39

    mul-double v39, v31, v37

    sub-double v35, v35, v39

    mul-double v39, v11, v43

    mul-double v27, v27, v3

    sub-double v39, v39, v27

    mul-double v27, v29, v39

    add-double v35, v35, v27

    mul-double v35, v35, v1

    mul-double v27, v33, v45

    sub-double v35, v35, v27

    mul-double v27, v25, v37

    mul-double v41, v5, v47

    sub-double v27, v27, v41

    mul-double v41, v23, v3

    mul-double v43, v11, v21

    sub-double v41, v41, v43

    mul-double v43, v29, v41

    add-double v27, v27, v43

    mul-double v17, v17, v27

    add-double v35, v35, v17

    mul-double v17, v25, v39

    mul-double v49, v49, v5

    sub-double v17, v17, v49

    mul-double v31, v31, v41

    add-double v17, v17, v31

    mul-double v17, v17, v15

    sub-double v35, v35, v17

    mul-double v7, v7, v35

    add-double v7, v19, v7

    move-wide/from16 v17, v7

    .line 1269
    iget-wide v7, v0, Lorg/ejml/data/DMatrix5x5;->a23:D

    move-wide/from16 v19, v7

    .line 1270
    iget-wide v7, v0, Lorg/ejml/data/DMatrix5x5;->a33:D

    move-wide/from16 v31, v1

    .line 1271
    iget-wide v1, v0, Lorg/ejml/data/DMatrix5x5;->a43:D

    move-wide/from16 v35, v3

    .line 1272
    iget-wide v3, v0, Lorg/ejml/data/DMatrix5x5;->a53:D

    move-wide/from16 v39, v11

    .line 1273
    iget-wide v11, v0, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v13, v1

    mul-double/2addr v9, v3

    sub-double/2addr v13, v9

    mul-double v9, v5, v13

    mul-double v37, v37, v7

    sub-double v9, v9, v37

    mul-double v37, v39, v3

    mul-double v43, v1, v35

    sub-double v37, v37, v43

    mul-double v43, v29, v37

    add-double v9, v9, v43

    mul-double v9, v9, v31

    mul-double v13, v13, v25

    mul-double v47, v47, v7

    sub-double v13, v13, v47

    mul-double v43, v23, v3

    mul-double v45, v1, v21

    sub-double v43, v43, v45

    mul-double v29, v29, v43

    add-double v13, v13, v29

    mul-double v13, v13, v33

    sub-double/2addr v9, v13

    mul-double v13, v19, v27

    add-double/2addr v9, v13

    mul-double v13, v25, v37

    mul-double v27, v5, v43

    sub-double v13, v13, v27

    mul-double v27, v7, v41

    add-double v13, v13, v27

    mul-double/2addr v15, v13

    sub-double/2addr v9, v15

    mul-double/2addr v11, v9

    sub-double v9, v17, v11

    .line 1274
    iget-wide v11, v0, Lorg/ejml/data/DMatrix5x5;->a24:D

    move-wide v15, v9

    .line 1275
    iget-wide v9, v0, Lorg/ejml/data/DMatrix5x5;->a34:D

    move-wide/from16 v17, v11

    .line 1276
    iget-wide v11, v0, Lorg/ejml/data/DMatrix5x5;->a44:D

    move-wide/from16 v27, v13

    .line 1277
    iget-wide v13, v0, Lorg/ejml/data/DMatrix5x5;->a54:D

    move-wide/from16 v29, v9

    .line 1278
    iget-wide v9, v0, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v1, v13

    mul-double/2addr v3, v11

    sub-double/2addr v1, v3

    mul-double v3, v5, v1

    mul-double v39, v39, v13

    mul-double v35, v35, v11

    sub-double v39, v39, v35

    mul-double v35, v7, v39

    sub-double v3, v3, v35

    mul-double v35, v29, v37

    add-double v3, v3, v35

    mul-double v3, v3, v31

    mul-double v0, v25, v1

    mul-double v13, v13, v23

    mul-double v11, v11, v21

    sub-double/2addr v13, v11

    mul-double/2addr v7, v13

    sub-double/2addr v0, v7

    mul-double v7, v29, v43

    add-double/2addr v0, v7

    mul-double v7, v33, v0

    sub-double/2addr v3, v7

    mul-double v0, v25, v39

    mul-double/2addr v5, v13

    sub-double/2addr v0, v5

    mul-double v5, v29, v41

    add-double/2addr v0, v5

    mul-double v7, v19, v0

    add-double/2addr v3, v7

    mul-double v11, v17, v27

    sub-double/2addr v3, v11

    mul-double/2addr v9, v3

    add-double/2addr v9, v15

    return-wide v9
.end method

.method public static diag(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5;)V
    .locals 2

    .line 1382
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1383
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1384
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1385
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1386
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix5;D)V
    .locals 2

    .line 1866
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1867
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1868
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1869
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1870
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix5;DLorg/ejml/data/DMatrix5;)V
    .locals 2

    .line 1904
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1905
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1906
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1907
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1908
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix5x5;D)V
    .locals 2

    .line 1848
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1849
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1850
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1851
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1852
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix5x5;DLorg/ejml/data/DMatrix5x5;)V
    .locals 2

    .line 1885
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1886
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1887
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1888
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1889
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static dot(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)D
    .locals 6

    .line 1117
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 4

    .line 1722
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1723
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1724
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a3:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1725
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a4:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1726
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a5:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 4

    .line 1756
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1757
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1758
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a3:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1759
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a4:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1760
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 1706
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1707
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1708
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1709
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1710
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 1739
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1740
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1741
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1742
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1743
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix5;)D
    .locals 4

    .line 1440
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1441
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1442
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1443
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1444
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    :cond_3
    return-wide v0
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix5x5;)D
    .locals 4

    .line 1400
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 1401
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 1402
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 1403
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 1404
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1405
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 1406
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_5

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 1407
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_6

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 1408
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_7

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 1409
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_8

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1410
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_9

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 1411
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_a

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 1412
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_b

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 1413
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_c

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 1414
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_d

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1415
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_e

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 1416
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_f

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 1417
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_10

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 1418
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_11

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 1419
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_12

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1420
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_13

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 1421
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_14

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 1422
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_15

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 1423
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_16

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 1424
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_17

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    :cond_17
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix5;)D
    .locals 5

    .line 1500
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1501
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 1502
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1503
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    move-wide v0, v2

    .line 1504
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_3

    move-wide v0, v2

    .line 1505
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_4

    move-wide v0, v2

    :cond_4
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix5x5;)D
    .locals 5

    .line 1460
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1461
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 1462
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1463
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    move-wide v0, v2

    .line 1464
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_3

    move-wide v0, v2

    .line 1465
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_4

    move-wide v0, v2

    .line 1466
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_5

    move-wide v0, v2

    .line 1467
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_6

    move-wide v0, v2

    .line 1468
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_7

    move-wide v0, v2

    .line 1469
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_8

    move-wide v0, v2

    .line 1470
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_9

    move-wide v0, v2

    .line 1471
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_a

    move-wide v0, v2

    .line 1472
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_b

    move-wide v0, v2

    .line 1473
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_c

    move-wide v0, v2

    .line 1474
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_d

    move-wide v0, v2

    .line 1475
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_e

    move-wide v0, v2

    .line 1476
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_f

    move-wide v0, v2

    .line 1477
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_10

    move-wide v0, v2

    .line 1478
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_11

    move-wide v0, v2

    .line 1479
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_12

    move-wide v0, v2

    .line 1480
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_13

    move-wide v0, v2

    .line 1481
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_14

    move-wide v0, v2

    .line 1482
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_15

    move-wide v0, v2

    .line 1483
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_16

    move-wide v0, v2

    .line 1484
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_17

    move-wide v0, v2

    :cond_17
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix5;)D
    .locals 4

    .line 1561
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1562
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1563
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1564
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1565
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    :cond_3
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix5x5;)D
    .locals 4

    .line 1521
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 1522
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 1523
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 1524
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 1525
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1526
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 1527
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_5

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 1528
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_6

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 1529
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_7

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 1530
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_8

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1531
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_9

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 1532
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_a

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 1533
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_b

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 1534
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_c

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 1535
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_d

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1536
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_e

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 1537
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_f

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 1538
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_10

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 1539
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_11

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 1540
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_12

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1541
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_13

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 1542
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_14

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 1543
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_15

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 1544
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_16

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 1545
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_17

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    :cond_17
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix5;)D
    .locals 5

    .line 1621
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1622
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a1:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 1623
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 1624
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 1625
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    move-wide v0, v2

    .line 1626
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_4

    move-wide v0, v2

    :cond_4
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix5x5;)D
    .locals 5

    .line 1581
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1582
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 1583
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 1584
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 1585
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    move-wide v0, v2

    .line 1586
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_4

    move-wide v0, v2

    .line 1587
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_5

    move-wide v0, v2

    .line 1588
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_6

    move-wide v0, v2

    .line 1589
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_7

    move-wide v0, v2

    .line 1590
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_8

    move-wide v0, v2

    .line 1591
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_9

    move-wide v0, v2

    .line 1592
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_a

    move-wide v0, v2

    .line 1593
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_b

    move-wide v0, v2

    .line 1594
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_c

    move-wide v0, v2

    .line 1595
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_d

    move-wide v0, v2

    .line 1596
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_e

    move-wide v0, v2

    .line 1597
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_f

    move-wide v0, v2

    .line 1598
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_10

    move-wide v0, v2

    .line 1599
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_11

    move-wide v0, v2

    .line 1600
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_12

    move-wide v0, v2

    .line 1601
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_13

    move-wide v0, v2

    .line 1602
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_14

    move-wide v0, v2

    .line 1603
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_15

    move-wide v0, v2

    .line 1604
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_16

    move-wide v0, v2

    .line 1605
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_17

    move-wide v0, v2

    :cond_17
    return-wide v0
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 4

    .line 1656
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1657
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1658
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1659
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1660
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 4

    .line 1690
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1691
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1692
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1693
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1694
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 1640
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1641
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1642
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1643
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1644
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 1673
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1674
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1675
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1676
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1677
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/DMatrix5x5;ILorg/ejml/data/DMatrix5;)Lorg/ejml/data/DMatrix5;
    .locals 2

    if-nez p2, :cond_0

    .line 2042
    new-instance p2, Lorg/ejml/data/DMatrix5;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix5;-><init>()V

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2073
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2074
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2075
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2076
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2077
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 2080
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

    .line 2066
    :cond_2
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2067
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2068
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2069
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2070
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 2059
    :cond_3
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2060
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2061
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2062
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2063
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 2052
    :cond_4
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2053
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2054
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2055
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2056
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 2045
    :cond_5
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2046
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2047
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2048
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2049
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/DMatrix5x5;ILorg/ejml/data/DMatrix5;)Lorg/ejml/data/DMatrix5;
    .locals 2

    if-nez p2, :cond_0

    .line 1991
    new-instance p2, Lorg/ejml/data/DMatrix5;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix5;-><init>()V

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2022
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2023
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2024
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2025
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2026
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 2029
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

    .line 2015
    :cond_2
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2016
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2017
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2018
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2019
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 2008
    :cond_3
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2009
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2010
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2011
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2012
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 2001
    :cond_4
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 2002
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 2003
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 2004
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 2005
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    goto :goto_0

    .line 1994
    :cond_5
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1995
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1996
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1997
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1998
    iget-wide p0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/DMatrix5;D)V
    .locals 0

    .line 1976
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1977
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1978
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1979
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1980
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static fill(Lorg/ejml/data/DMatrix5x5;D)V
    .locals 0

    .line 1958
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1959
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1960
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1961
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1962
    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static invert(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)Z
    .locals 108

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1146
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_DDF5;->elementMaxAbs(Lorg/ejml/data/DMatrix5x5;)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 1148
    iget-wide v4, v0, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v4, v2

    .line 1149
    iget-wide v6, v0, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v6, v2

    .line 1150
    iget-wide v8, v0, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v8, v2

    .line 1151
    iget-wide v10, v0, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v10, v2

    .line 1152
    iget-wide v12, v0, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v12, v2

    .line 1153
    iget-wide v14, v0, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v14, v2

    move-wide/from16 v16, v4

    .line 1154
    iget-wide v4, v0, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v2

    move-wide/from16 v18, v12

    .line 1155
    iget-wide v12, v0, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v12, v2

    move-wide/from16 v20, v10

    .line 1156
    iget-wide v10, v0, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v10, v2

    move-wide/from16 v22, v8

    .line 1157
    iget-wide v8, v0, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v8, v2

    move-wide/from16 v24, v6

    .line 1158
    iget-wide v6, v0, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v6, v2

    move-wide/from16 v26, v6

    .line 1159
    iget-wide v6, v0, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v6, v2

    move-wide/from16 v28, v14

    .line 1160
    iget-wide v14, v0, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v14, v2

    move-wide/from16 v30, v8

    .line 1161
    iget-wide v8, v0, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v8, v2

    move-wide/from16 v32, v10

    .line 1162
    iget-wide v10, v0, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v10, v2

    move-wide/from16 v34, v12

    .line 1163
    iget-wide v12, v0, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v12, v2

    move-wide/from16 v36, v12

    .line 1164
    iget-wide v12, v0, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v12, v2

    move-wide/from16 v38, v12

    .line 1165
    iget-wide v12, v0, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v12, v2

    move-wide/from16 v40, v6

    .line 1166
    iget-wide v6, v0, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v6, v2

    move-wide/from16 v42, v4

    .line 1167
    iget-wide v4, v0, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v2

    move-wide/from16 v44, v10

    .line 1168
    iget-wide v10, v0, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v10, v2

    move-wide/from16 v46, v10

    .line 1169
    iget-wide v10, v0, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v10, v2

    move-wide/from16 v48, v10

    .line 1170
    iget-wide v10, v0, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v10, v2

    move-wide/from16 v50, v8

    .line 1171
    iget-wide v8, v0, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v8, v2

    .line 1172
    iget-wide v0, v0, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v0, v2

    mul-double v52, v6, v0

    mul-double v54, v4, v8

    sub-double v52, v52, v54

    mul-double v54, v14, v52

    mul-double v56, v12, v0

    mul-double v58, v4, v10

    sub-double v56, v56, v58

    mul-double v58, v50, v56

    sub-double v54, v54, v58

    mul-double v58, v12, v8

    mul-double v60, v6, v10

    sub-double v58, v58, v60

    mul-double v60, v44, v58

    add-double v54, v54, v60

    mul-double v60, v42, v54

    mul-double v62, v40, v52

    mul-double v64, v38, v0

    mul-double v66, v4, v48

    sub-double v64, v64, v66

    mul-double v66, v50, v64

    sub-double v62, v62, v66

    mul-double v66, v38, v8

    mul-double v68, v6, v48

    sub-double v66, v66, v68

    mul-double v68, v44, v66

    add-double v62, v62, v68

    mul-double v68, v34, v62

    sub-double v60, v60, v68

    mul-double v68, v40, v56

    mul-double v70, v14, v64

    sub-double v68, v68, v70

    mul-double v70, v38, v10

    mul-double v72, v12, v48

    sub-double v70, v70, v72

    mul-double v72, v44, v70

    add-double v68, v68, v72

    mul-double v72, v32, v68

    add-double v60, v60, v72

    mul-double v72, v40, v58

    mul-double v74, v14, v66

    sub-double v72, v72, v74

    mul-double v74, v50, v70

    add-double v72, v72, v74

    mul-double v74, v30, v72

    sub-double v60, v60, v74

    mul-double v74, v28, v54

    mul-double v76, v26, v52

    mul-double v78, v36, v0

    mul-double v80, v4, v46

    sub-double v78, v78, v80

    mul-double v80, v50, v78

    sub-double v76, v76, v80

    mul-double v80, v36, v8

    mul-double v82, v6, v46

    sub-double v80, v80, v82

    mul-double v82, v44, v80

    add-double v76, v76, v82

    mul-double v82, v34, v76

    sub-double v74, v74, v82

    mul-double v82, v26, v56

    mul-double v84, v14, v78

    sub-double v82, v82, v84

    mul-double v84, v36, v10

    mul-double v86, v12, v46

    sub-double v84, v84, v86

    mul-double v86, v44, v84

    add-double v82, v82, v86

    mul-double v86, v32, v82

    add-double v74, v74, v86

    mul-double v86, v26, v58

    mul-double v88, v14, v80

    sub-double v86, v86, v88

    mul-double v88, v50, v84

    add-double v86, v86, v88

    mul-double v88, v30, v86

    move-wide/from16 v90, v2

    sub-double v2, v74, v88

    neg-double v2, v2

    mul-double v74, v28, v62

    mul-double v88, v42, v76

    sub-double v74, v74, v88

    mul-double v88, v26, v64

    mul-double v92, v40, v78

    sub-double v88, v88, v92

    mul-double v92, v36, v48

    mul-double v94, v38, v46

    sub-double v92, v92, v94

    mul-double v94, v44, v92

    add-double v88, v88, v94

    mul-double v94, v32, v88

    add-double v74, v74, v94

    mul-double v94, v26, v66

    mul-double v96, v40, v80

    sub-double v94, v94, v96

    mul-double v96, v50, v92

    add-double v94, v94, v96

    mul-double v96, v30, v94

    sub-double v74, v74, v96

    mul-double v96, v28, v68

    mul-double v98, v42, v82

    sub-double v96, v96, v98

    mul-double v98, v34, v88

    add-double v96, v96, v98

    mul-double v98, v26, v70

    mul-double v100, v40, v84

    sub-double v98, v98, v100

    mul-double v100, v14, v92

    add-double v98, v98, v100

    mul-double v100, v30, v98

    move-wide/from16 v102, v2

    sub-double v2, v96, v100

    neg-double v2, v2

    mul-double v96, v28, v72

    mul-double v100, v42, v86

    sub-double v96, v96, v100

    mul-double v100, v34, v94

    add-double v96, v96, v100

    mul-double v100, v32, v98

    sub-double v96, v96, v100

    mul-double v100, v24, v54

    mul-double v104, v22, v62

    sub-double v100, v100, v104

    mul-double v104, v20, v68

    add-double v100, v100, v104

    mul-double v104, v18, v72

    move-wide/from16 v106, v2

    sub-double v2, v100, v104

    neg-double v2, v2

    mul-double v54, v54, v16

    mul-double v100, v22, v76

    sub-double v54, v54, v100

    mul-double v100, v20, v82

    add-double v54, v54, v100

    mul-double v100, v18, v86

    sub-double v54, v54, v100

    mul-double v62, v62, v16

    mul-double v76, v76, v24

    sub-double v62, v62, v76

    mul-double v76, v20, v88

    add-double v62, v62, v76

    mul-double v76, v18, v94

    move-wide/from16 v100, v2

    sub-double v2, v62, v76

    neg-double v2, v2

    mul-double v62, v16, v68

    mul-double v68, v24, v82

    sub-double v62, v62, v68

    mul-double v68, v22, v88

    add-double v62, v62, v68

    mul-double v68, v18, v98

    sub-double v62, v62, v68

    mul-double v68, v16, v72

    mul-double v72, v24, v86

    sub-double v68, v68, v72

    mul-double v72, v22, v94

    add-double v68, v68, v72

    mul-double v72, v20, v98

    move-wide/from16 v76, v2

    sub-double v2, v68, v72

    neg-double v2, v2

    mul-double v68, v34, v52

    mul-double v72, v32, v56

    sub-double v68, v68, v72

    mul-double v72, v30, v58

    add-double v68, v68, v72

    mul-double v72, v24, v68

    mul-double v82, v42, v52

    mul-double v86, v32, v64

    sub-double v82, v82, v86

    mul-double v86, v30, v66

    add-double v82, v82, v86

    mul-double v86, v22, v82

    sub-double v72, v72, v86

    mul-double v86, v42, v56

    mul-double v88, v34, v64

    sub-double v86, v86, v88

    mul-double v88, v30, v70

    add-double v86, v86, v88

    mul-double v88, v20, v86

    add-double v72, v72, v88

    mul-double v88, v42, v58

    mul-double v94, v34, v66

    sub-double v88, v88, v94

    mul-double v94, v32, v70

    add-double v88, v88, v94

    mul-double v94, v18, v88

    sub-double v72, v72, v94

    mul-double v68, v68, v16

    mul-double v52, v52, v28

    mul-double v94, v32, v78

    sub-double v52, v52, v94

    mul-double v94, v30, v80

    add-double v52, v52, v94

    mul-double v94, v22, v52

    sub-double v68, v68, v94

    mul-double v56, v56, v28

    mul-double v94, v34, v78

    sub-double v56, v56, v94

    mul-double v94, v30, v84

    add-double v56, v56, v94

    mul-double v94, v20, v56

    add-double v68, v68, v94

    mul-double v58, v58, v28

    mul-double v94, v34, v80

    sub-double v58, v58, v94

    mul-double v94, v32, v84

    add-double v58, v58, v94

    mul-double v94, v18, v58

    move-wide/from16 v98, v2

    sub-double v2, v68, v94

    neg-double v2, v2

    mul-double v68, v16, v82

    mul-double v52, v52, v24

    sub-double v68, v68, v52

    mul-double v52, v28, v64

    mul-double v64, v42, v78

    sub-double v52, v52, v64

    mul-double v64, v30, v92

    add-double v52, v52, v64

    mul-double v64, v20, v52

    add-double v68, v68, v64

    mul-double v64, v28, v66

    mul-double v66, v42, v80

    sub-double v64, v64, v66

    mul-double v66, v32, v92

    add-double v64, v64, v66

    mul-double v66, v18, v64

    sub-double v68, v68, v66

    mul-double v66, v16, v86

    mul-double v56, v56, v24

    sub-double v66, v66, v56

    mul-double v52, v52, v22

    add-double v66, v66, v52

    mul-double v52, v28, v70

    mul-double v56, v42, v84

    sub-double v52, v52, v56

    mul-double v56, v34, v92

    add-double v52, v52, v56

    mul-double v56, v18, v52

    move-wide/from16 v70, v2

    sub-double v2, v66, v56

    neg-double v2, v2

    mul-double v56, v16, v88

    mul-double v58, v58, v24

    sub-double v56, v56, v58

    mul-double v58, v22, v64

    add-double v56, v56, v58

    mul-double v52, v52, v20

    sub-double v56, v56, v52

    mul-double v52, v50, v0

    mul-double v58, v44, v8

    sub-double v52, v52, v58

    mul-double v58, v34, v52

    mul-double v64, v14, v0

    mul-double v66, v44, v10

    sub-double v64, v64, v66

    mul-double v66, v32, v64

    sub-double v58, v58, v66

    mul-double v66, v14, v8

    mul-double v78, v50, v10

    sub-double v66, v66, v78

    mul-double v78, v30, v66

    add-double v58, v58, v78

    mul-double v78, v24, v58

    mul-double v80, v42, v52

    mul-double v82, v40, v0

    mul-double v84, v44, v48

    sub-double v82, v82, v84

    mul-double v84, v32, v82

    sub-double v80, v80, v84

    mul-double v84, v40, v8

    mul-double v86, v50, v48

    sub-double v84, v84, v86

    mul-double v86, v30, v84

    add-double v80, v80, v86

    mul-double v86, v22, v80

    sub-double v78, v78, v86

    mul-double v86, v42, v64

    mul-double v88, v34, v82

    sub-double v86, v86, v88

    mul-double v88, v40, v10

    mul-double v92, v14, v48

    sub-double v88, v88, v92

    mul-double v92, v30, v88

    add-double v86, v86, v92

    mul-double v92, v20, v86

    add-double v78, v78, v92

    mul-double v92, v42, v66

    mul-double v94, v34, v84

    sub-double v92, v92, v94

    mul-double v94, v32, v88

    add-double v92, v92, v94

    mul-double v94, v18, v92

    move-wide/from16 v104, v2

    sub-double v2, v78, v94

    neg-double v2, v2

    mul-double v58, v58, v16

    mul-double v52, v52, v28

    mul-double v0, v0, v26

    mul-double v78, v44, v46

    sub-double v0, v0, v78

    mul-double v78, v32, v0

    sub-double v52, v52, v78

    mul-double v8, v8, v26

    mul-double v78, v50, v46

    sub-double v8, v8, v78

    mul-double v78, v30, v8

    add-double v52, v52, v78

    mul-double v78, v22, v52

    sub-double v58, v58, v78

    mul-double v64, v64, v28

    mul-double v78, v34, v0

    sub-double v64, v64, v78

    mul-double v10, v10, v26

    mul-double v78, v14, v46

    sub-double v10, v10, v78

    mul-double v78, v30, v10

    add-double v64, v64, v78

    mul-double v78, v20, v64

    add-double v58, v58, v78

    mul-double v66, v66, v28

    mul-double v78, v34, v8

    sub-double v66, v66, v78

    mul-double v78, v32, v10

    add-double v66, v66, v78

    mul-double v78, v18, v66

    sub-double v58, v58, v78

    mul-double v78, v16, v80

    mul-double v52, v52, v24

    sub-double v78, v78, v52

    mul-double v52, v28, v82

    mul-double v0, v0, v42

    sub-double v52, v52, v0

    mul-double v0, v26, v48

    mul-double v46, v46, v40

    sub-double v0, v0, v46

    mul-double v46, v30, v0

    add-double v52, v52, v46

    mul-double v46, v20, v52

    add-double v78, v78, v46

    mul-double v46, v28, v84

    mul-double v8, v8, v42

    sub-double v46, v46, v8

    mul-double v8, v32, v0

    add-double v46, v46, v8

    mul-double v8, v18, v46

    sub-double v8, v78, v8

    neg-double v8, v8

    mul-double v48, v16, v86

    mul-double v64, v64, v24

    sub-double v48, v48, v64

    mul-double v52, v52, v22

    add-double v48, v48, v52

    mul-double v52, v28, v88

    mul-double v10, v10, v42

    sub-double v52, v52, v10

    mul-double v0, v0, v34

    add-double v52, v52, v0

    mul-double v0, v18, v52

    sub-double v48, v48, v0

    mul-double v0, v16, v92

    mul-double v10, v24, v66

    sub-double/2addr v0, v10

    mul-double v10, v22, v46

    add-double/2addr v0, v10

    mul-double v10, v20, v52

    sub-double/2addr v0, v10

    neg-double v0, v0

    mul-double v10, v50, v4

    mul-double v46, v44, v6

    sub-double v10, v10, v46

    mul-double v46, v34, v10

    mul-double v52, v14, v4

    mul-double v64, v44, v12

    sub-double v52, v52, v64

    mul-double v64, v32, v52

    sub-double v46, v46, v64

    mul-double v64, v14, v6

    mul-double v66, v50, v12

    sub-double v64, v64, v66

    mul-double v66, v30, v64

    add-double v46, v46, v66

    mul-double v66, v24, v46

    mul-double v78, v42, v10

    mul-double v80, v40, v4

    mul-double v82, v44, v38

    sub-double v80, v80, v82

    mul-double v82, v32, v80

    sub-double v78, v78, v82

    mul-double v82, v40, v6

    mul-double v84, v50, v38

    sub-double v82, v82, v84

    mul-double v84, v30, v82

    add-double v78, v78, v84

    mul-double v84, v22, v78

    sub-double v66, v66, v84

    mul-double v84, v42, v52

    mul-double v86, v34, v80

    sub-double v84, v84, v86

    mul-double v86, v40, v12

    mul-double v88, v14, v38

    sub-double v86, v86, v88

    mul-double v88, v30, v86

    add-double v84, v84, v88

    mul-double v88, v20, v84

    add-double v66, v66, v88

    mul-double v88, v42, v64

    mul-double v92, v34, v82

    sub-double v88, v88, v92

    mul-double v92, v32, v86

    add-double v88, v88, v92

    mul-double v92, v18, v88

    sub-double v66, v66, v92

    mul-double v46, v46, v16

    mul-double v10, v10, v28

    mul-double v4, v4, v26

    mul-double v44, v44, v36

    sub-double v4, v4, v44

    mul-double v44, v32, v4

    sub-double v10, v10, v44

    mul-double v6, v6, v26

    mul-double v44, v50, v36

    sub-double v6, v6, v44

    mul-double v44, v30, v6

    add-double v10, v10, v44

    mul-double v44, v22, v10

    sub-double v46, v46, v44

    mul-double v44, v28, v52

    mul-double v50, v34, v4

    sub-double v44, v44, v50

    mul-double v12, v12, v26

    mul-double v14, v14, v36

    sub-double/2addr v12, v14

    mul-double v14, v30, v12

    add-double v44, v44, v14

    mul-double v14, v20, v44

    add-double v46, v46, v14

    mul-double v14, v28, v64

    mul-double v50, v34, v6

    sub-double v14, v14, v50

    mul-double v50, v32, v12

    add-double v14, v14, v50

    mul-double v50, v18, v14

    move-wide/from16 v52, v0

    sub-double v0, v46, v50

    neg-double v0, v0

    mul-double v46, v16, v78

    mul-double v10, v10, v24

    sub-double v46, v46, v10

    mul-double v10, v28, v80

    mul-double v4, v4, v42

    sub-double/2addr v10, v4

    mul-double v4, v26, v38

    mul-double v26, v40, v36

    sub-double v4, v4, v26

    mul-double v26, v30, v4

    add-double v10, v10, v26

    mul-double v26, v20, v10

    add-double v46, v46, v26

    mul-double v26, v28, v82

    mul-double v6, v6, v42

    sub-double v26, v26, v6

    mul-double v6, v32, v4

    add-double v26, v26, v6

    mul-double v6, v18, v26

    sub-double v46, v46, v6

    mul-double v6, v16, v84

    mul-double v30, v24, v44

    sub-double v6, v6, v30

    mul-double v10, v10, v22

    add-double/2addr v6, v10

    mul-double v10, v28, v86

    mul-double v12, v12, v42

    sub-double/2addr v10, v12

    mul-double v12, v34, v4

    add-double/2addr v10, v12

    mul-double v12, v18, v10

    sub-double/2addr v6, v12

    neg-double v4, v6

    mul-double v6, v16, v88

    mul-double v12, v24, v14

    sub-double/2addr v6, v12

    mul-double v12, v22, v26

    add-double/2addr v6, v12

    mul-double v10, v10, v20

    sub-double/2addr v6, v10

    mul-double v10, v16, v60

    mul-double v12, v24, v102

    add-double/2addr v10, v12

    mul-double v12, v22, v74

    add-double/2addr v10, v12

    mul-double v12, v20, v106

    add-double/2addr v10, v12

    mul-double v12, v18, v96

    add-double/2addr v10, v12

    div-double v10, v10, v90

    div-double v12, v60, v10

    move-object/from16 v14, p1

    .line 1202
    iput-wide v12, v14, Lorg/ejml/data/DMatrix5x5;->a11:D

    div-double v12, v100, v10

    .line 1203
    iput-wide v12, v14, Lorg/ejml/data/DMatrix5x5;->a12:D

    div-double v12, v72, v10

    .line 1204
    iput-wide v12, v14, Lorg/ejml/data/DMatrix5x5;->a13:D

    div-double/2addr v2, v10

    .line 1205
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a14:D

    div-double v2, v66, v10

    .line 1206
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a15:D

    div-double v2, v102, v10

    .line 1207
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a21:D

    div-double v2, v54, v10

    .line 1208
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a22:D

    div-double v2, v70, v10

    .line 1209
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a23:D

    div-double v2, v58, v10

    .line 1210
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a24:D

    div-double/2addr v0, v10

    .line 1211
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a25:D

    div-double v0, v74, v10

    .line 1212
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a31:D

    div-double v2, v76, v10

    .line 1213
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a32:D

    div-double v0, v68, v10

    .line 1214
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a33:D

    div-double/2addr v8, v10

    .line 1215
    iput-wide v8, v14, Lorg/ejml/data/DMatrix5x5;->a34:D

    div-double v0, v46, v10

    .line 1216
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a35:D

    div-double v2, v106, v10

    .line 1217
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a41:D

    div-double v0, v62, v10

    .line 1218
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a42:D

    div-double v2, v104, v10

    .line 1219
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a43:D

    div-double v0, v48, v10

    .line 1220
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a44:D

    div-double/2addr v4, v10

    .line 1221
    iput-wide v4, v14, Lorg/ejml/data/DMatrix5x5;->a45:D

    div-double v0, v96, v10

    .line 1222
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a51:D

    div-double v2, v98, v10

    .line 1223
    iput-wide v2, v14, Lorg/ejml/data/DMatrix5x5;->a52:D

    div-double v0, v56, v10

    .line 1224
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a53:D

    div-double v0, v52, v10

    .line 1225
    iput-wide v0, v14, Lorg/ejml/data/DMatrix5x5;->a54:D

    div-double/2addr v6, v10

    .line 1226
    iput-wide v6, v14, Lorg/ejml/data/DMatrix5x5;->a55:D

    .line 1228
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static mult(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 402
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 405
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 406
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 407
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 408
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 409
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 410
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 411
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 412
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 413
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 414
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 415
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 416
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 417
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 418
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 419
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 420
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 421
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 422
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 423
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 424
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 425
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 426
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 427
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 428
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5;)V
    .locals 6

    .line 1097
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1098
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1099
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1100
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1101
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 6

    .line 1077
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1078
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1079
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1080
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1081
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 359
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 362
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 363
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 364
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 365
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 366
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 367
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 368
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 369
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 370
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 371
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 372
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 373
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 374
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 375
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 376
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 377
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 378
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 379
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 380
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 381
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 382
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 383
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 384
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 385
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAdd(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 8

    .line 742
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 744
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 745
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 746
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 747
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 748
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 749
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 750
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 751
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 752
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 753
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 754
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 755
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 756
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 757
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 758
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 759
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 760
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 761
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 762
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 763
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 764
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 765
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 766
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 767
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 768
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 8

    .line 699
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 701
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 702
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 703
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 704
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 705
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 706
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 707
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 708
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 709
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 710
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 711
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 712
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 713
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 714
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 715
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 716
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 717
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 718
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 719
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 720
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 721
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 722
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 723
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 724
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 725
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAddOuter(DLorg/ejml/data/DMatrix5x5;DLorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 1037
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 1038
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 1039
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 1040
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 1041
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1042
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 1043
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 1044
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 1045
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 1046
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1047
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 1048
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 1049
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 1050
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 1051
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1052
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 1053
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 1054
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 1055
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 1056
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1057
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 1058
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 1059
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 1060
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 1061
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr p0, v0

    iget-wide v0, p5, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr p3, v0

    iget-wide p5, p6, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr p3, p5

    add-double/2addr p0, p3

    iput-wide p0, p7, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAddTransA(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 8

    .line 827
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 828
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 829
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 830
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 831
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 832
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 833
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 834
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 835
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 836
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 837
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 838
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 839
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 840
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 841
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 842
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 843
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 844
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 845
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 846
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 847
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 848
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 849
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 850
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 851
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 852
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 853
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 8

    .line 784
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 785
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 786
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 787
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 788
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 789
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 790
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 791
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 792
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 793
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 794
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 795
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 796
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 797
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 798
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 799
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 800
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 801
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 802
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 803
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 804
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 805
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 806
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 807
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 808
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 809
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 810
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 8

    .line 912
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 913
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 914
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 915
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 916
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 917
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 918
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 919
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 920
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 921
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 922
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 923
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 924
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 925
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 926
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 927
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 928
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 929
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 930
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 931
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 932
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 933
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 934
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 935
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 936
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 937
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 938
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 8

    .line 869
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 870
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 871
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 872
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 873
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 874
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 875
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 876
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 877
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 878
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 879
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 880
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 881
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 882
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 883
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 884
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 885
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 886
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 887
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 888
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 889
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 890
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 891
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 892
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 893
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 894
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 895
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 8

    .line 997
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 998
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 999
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 1000
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 1001
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 1002
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 1003
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1004
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 1005
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 1006
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 1007
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 1008
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1009
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 1010
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 1011
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 1012
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 1013
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1014
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 1015
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 1016
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 1017
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 1018
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1019
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 1020
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 1021
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 1022
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 1023
    iget-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 8

    .line 954
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 955
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 957
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 958
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 959
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 960
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 961
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 962
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 963
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 964
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 965
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 966
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 967
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 968
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 969
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 970
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 971
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 972
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 973
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 974
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 975
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 976
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 977
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 978
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 979
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 980
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multTransA(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 487
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 490
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 491
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 492
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 493
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 494
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 495
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 496
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 497
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 498
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 499
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 500
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 501
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 502
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 503
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 504
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 505
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 506
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 507
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 508
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 509
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 510
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 511
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 512
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 513
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 444
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 447
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 448
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 449
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 450
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 451
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 452
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 453
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 454
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 455
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 456
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 457
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 458
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 459
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 460
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 461
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 462
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 463
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 464
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 465
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 466
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 467
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 468
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 469
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 470
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 572
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 573
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 574
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 575
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 576
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 577
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 578
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 579
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 580
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 581
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 582
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 583
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 584
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 585
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 586
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 587
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 588
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 589
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 590
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 591
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 592
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 593
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 594
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 595
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 596
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 597
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 598
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 529
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 532
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 533
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 534
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 535
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 536
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 537
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 538
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 539
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 540
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 541
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 542
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 543
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 544
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 545
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 546
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 547
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 548
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 549
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 550
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 551
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 552
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 553
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 554
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 555
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 657
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 659
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 660
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 661
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 662
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 663
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 664
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 665
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 666
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 667
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 668
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 669
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 670
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 671
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 672
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 673
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 674
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 675
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 676
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 677
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 678
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 679
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 680
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 681
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 682
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 683
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 6

    .line 614
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 615
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 617
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 618
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 619
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 620
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 621
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 622
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 623
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 624
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 625
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 626
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 627
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 628
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 629
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 630
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 631
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 632
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 633
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 634
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 635
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 636
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 637
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 638
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 639
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 640
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix5;)V
    .locals 2

    .line 1792
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1793
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1794
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1795
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1796
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 2

    .line 1830
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a1:D

    .line 1831
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a2:D

    .line 1832
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a3:D

    .line 1833
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a4:D

    .line 1834
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix5x5;)V
    .locals 2

    .line 1774
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1775
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1776
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1777
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1778
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 2

    .line 1811
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 1812
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 1813
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 1814
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 1815
    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1127
    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 1128
    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 1129
    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 1130
    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 1131
    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 4

    .line 217
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a1:D

    .line 218
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a2:D

    .line 219
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a3:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a3:D

    .line 220
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a4:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a4:D

    .line 221
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 174
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 175
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 176
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 177
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 178
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 179
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 180
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 181
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 182
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 183
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 184
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 185
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 186
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 187
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 188
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 189
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 190
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 191
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 192
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 193
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 194
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 195
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 196
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 197
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 198
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;)V
    .locals 4

    .line 273
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    .line 274
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a2:D

    .line 275
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a3:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a3:D

    .line 276
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a4:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a4:D

    .line 277
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a5:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5;->a5:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 235
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 236
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 237
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 238
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 239
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 240
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 241
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 242
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 243
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 244
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 245
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 246
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 247
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 248
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 249
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 250
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 251
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 252
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 253
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 254
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 255
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 256
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 257
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 258
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 259
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-void
.end method

.method public static trace(Lorg/ejml/data/DMatrix5x5;)D
    .locals 4

    .line 1368
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static transpose(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;)Lorg/ejml/data/DMatrix5x5;
    .locals 2

    if-nez p0, :cond_0

    .line 314
    new-instance p0, Lorg/ejml/data/DMatrix5x5;

    invoke-direct {p0}, Lorg/ejml/data/DMatrix5x5;-><init>()V

    .line 316
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 318
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 319
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 320
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 321
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 322
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 323
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 324
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 325
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 326
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 327
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 328
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 329
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 330
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 331
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 332
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 333
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 334
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 335
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 336
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 337
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 338
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 339
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 340
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 341
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/DMatrix5x5;)V
    .locals 4

    .line 288
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 289
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 290
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 291
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 292
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 293
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 294
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 295
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 296
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 297
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    return-void
.end method

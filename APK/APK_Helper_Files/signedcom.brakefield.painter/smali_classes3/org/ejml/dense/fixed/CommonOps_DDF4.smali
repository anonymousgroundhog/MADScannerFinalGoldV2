.class public Lorg/ejml/dense/fixed/CommonOps_DDF4;
.super Ljava/lang/Object;
.source "CommonOps_DDF4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 4

    .line 86
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 87
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 88
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a3:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 89
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4;->a4:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 52
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 53
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 54
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 55
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 56
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 57
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 58
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 59
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 60
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 61
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 62
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 63
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 64
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 65
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 66
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 67
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 4

    .line 132
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 133
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 134
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a3:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 135
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a4:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 103
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 104
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 105
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 106
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 107
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 108
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 109
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 110
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 111
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 112
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 113
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 114
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 115
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 116
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 117
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 118
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix4;)V
    .locals 2

    .line 1613
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1614
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1615
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1616
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix4x4;)V
    .locals 2

    .line 1596
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1597
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1598
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1599
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static cholL(Lorg/ejml/data/DMatrix4x4;)Z
    .locals 8

    .line 1040
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    const-wide/16 v0, 0x0

    .line 1041
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 1042
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 1043
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1044
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 1045
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 1046
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 1047
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1048
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 1049
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 1050
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 1051
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1052
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 1053
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 1054
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 1055
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    .line 1056
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/DMatrix4x4;)Z
    .locals 8

    .line 1067
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    const-wide/16 v0, 0x0

    .line 1068
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 1069
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 1070
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 1071
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 1072
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 1073
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 1074
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 1075
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 1076
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 1077
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 1078
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 1079
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1080
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1081
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1082
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    .line 1083
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static det(Lorg/ejml/data/DMatrix4x4;)D
    .locals 29

    move-object/from16 v0, p0

    .line 1004
    iget-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 1005
    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 1006
    iget-wide v5, v0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1007
    iget-wide v7, v0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 1008
    iget-wide v9, v0, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 1009
    iget-wide v11, v0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1010
    iget-wide v13, v0, Lorg/ejml/data/DMatrix4x4;->a42:D

    move-wide v15, v5

    .line 1011
    iget-wide v5, v0, Lorg/ejml/data/DMatrix4x4;->a43:D

    move-wide/from16 v17, v3

    .line 1012
    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a44:D

    move-wide/from16 v19, v13

    .line 1015
    iget-wide v13, v0, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double v21, v9, v3

    mul-double v23, v11, v5

    sub-double v21, v21, v23

    mul-double v1, v1, v21

    mul-double v23, v7, v3

    mul-double v25, v11, v19

    sub-double v23, v23, v25

    mul-double v23, v23, v17

    sub-double v1, v1, v23

    mul-double/2addr v7, v5

    mul-double v19, v19, v9

    sub-double v7, v7, v19

    mul-double/2addr v7, v15

    add-double/2addr v1, v7

    mul-double/2addr v13, v1

    const-wide/16 v1, 0x0

    add-double/2addr v13, v1

    .line 1016
    iget-wide v1, v0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 1017
    iget-wide v7, v0, Lorg/ejml/data/DMatrix4x4;->a31:D

    move-wide/from16 v19, v13

    .line 1018
    iget-wide v13, v0, Lorg/ejml/data/DMatrix4x4;->a41:D

    move-wide/from16 v23, v9

    .line 1019
    iget-wide v9, v0, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double v21, v21, v1

    mul-double v25, v7, v3

    mul-double v27, v11, v13

    sub-double v25, v25, v27

    mul-double v17, v17, v25

    sub-double v21, v21, v17

    mul-double/2addr v5, v7

    mul-double v17, v23, v13

    sub-double v5, v5, v17

    mul-double/2addr v5, v15

    add-double v21, v21, v5

    mul-double v9, v9, v21

    sub-double v5, v19, v9

    .line 1020
    iget-wide v9, v0, Lorg/ejml/data/DMatrix4x4;->a22:D

    move-wide/from16 v17, v5

    .line 1021
    iget-wide v5, v0, Lorg/ejml/data/DMatrix4x4;->a32:D

    move-wide/from16 v19, v13

    .line 1022
    iget-wide v13, v0, Lorg/ejml/data/DMatrix4x4;->a42:D

    move-wide/from16 v21, v7

    .line 1023
    iget-wide v7, v0, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v3, v5

    mul-double/2addr v11, v13

    sub-double/2addr v3, v11

    mul-double/2addr v3, v1

    mul-double v25, v25, v9

    sub-double v3, v3, v25

    mul-double v11, v21, v13

    mul-double v23, v5, v19

    sub-double v11, v11, v23

    mul-double/2addr v15, v11

    add-double/2addr v3, v15

    mul-double/2addr v7, v3

    add-double v3, v17, v7

    .line 1024
    iget-wide v7, v0, Lorg/ejml/data/DMatrix4x4;->a23:D

    move-wide v15, v3

    .line 1025
    iget-wide v3, v0, Lorg/ejml/data/DMatrix4x4;->a33:D

    move-wide/from16 v17, v7

    .line 1026
    iget-wide v7, v0, Lorg/ejml/data/DMatrix4x4;->a43:D

    move-wide/from16 v23, v11

    .line 1027
    iget-wide v11, v0, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v5, v7

    mul-double/2addr v13, v3

    sub-double/2addr v5, v13

    mul-double/2addr v1, v5

    mul-double v7, v7, v21

    mul-double v3, v3, v19

    sub-double/2addr v7, v3

    mul-double/2addr v9, v7

    sub-double/2addr v1, v9

    mul-double v7, v17, v23

    add-double/2addr v1, v7

    mul-double/2addr v11, v1

    sub-double v3, v15, v11

    return-wide v3
.end method

.method public static diag(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4;)V
    .locals 2

    .line 1113
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1114
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1115
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1116
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix4;D)V
    .locals 2

    .line 1543
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1544
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1545
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1546
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix4;DLorg/ejml/data/DMatrix4;)V
    .locals 2

    .line 1579
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1580
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1581
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1582
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix4x4;D)V
    .locals 2

    .line 1526
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1527
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1528
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1529
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix4x4;DLorg/ejml/data/DMatrix4x4;)V
    .locals 2

    .line 1561
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1562
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1563
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1564
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static dot(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)D
    .locals 6

    .line 909
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 4

    .line 1407
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1408
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1409
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a3:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1410
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a4:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 4

    .line 1439
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1440
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1441
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a3:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1442
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4;->a4:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 1392
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1393
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1394
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1395
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 1423
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1424
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1425
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1426
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix4;)D
    .locals 4

    .line 1161
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1162
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1163
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1164
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    :cond_2
    return-wide v0
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix4x4;)D
    .locals 4

    .line 1130
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 1131
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 1132
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 1133
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1134
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 1135
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 1136
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_5

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 1137
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_6

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1138
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_7

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 1139
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_8

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 1140
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_9

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 1141
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_a

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1142
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_b

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 1143
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_c

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 1144
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_d

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 1145
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_e

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    :cond_e
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix4;)D
    .locals 5

    .line 1211
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1212
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 1213
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1214
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    move-wide v0, v2

    .line 1215
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_3

    move-wide v0, v2

    :cond_3
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix4x4;)D
    .locals 5

    .line 1180
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1181
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 1182
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 1183
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    move-wide v0, v2

    .line 1184
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_3

    move-wide v0, v2

    .line 1185
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_4

    move-wide v0, v2

    .line 1186
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_5

    move-wide v0, v2

    .line 1187
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_6

    move-wide v0, v2

    .line 1188
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_7

    move-wide v0, v2

    .line 1189
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_8

    move-wide v0, v2

    .line 1190
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_9

    move-wide v0, v2

    .line 1191
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_a

    move-wide v0, v2

    .line 1192
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_b

    move-wide v0, v2

    .line 1193
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_c

    move-wide v0, v2

    .line 1194
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_d

    move-wide v0, v2

    .line 1195
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_e

    move-wide v0, v2

    :cond_e
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix4;)D
    .locals 4

    .line 1262
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1263
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1264
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1265
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    :cond_2
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix4x4;)D
    .locals 4

    .line 1231
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 1232
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 1233
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 1234
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1235
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 1236
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 1237
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_5

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 1238
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_6

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1239
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_7

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 1240
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_8

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 1241
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_9

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 1242
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_a

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1243
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_b

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 1244
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_c

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 1245
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_d

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 1246
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_e

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    :cond_e
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix4;)D
    .locals 5

    .line 1312
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1313
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a1:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 1314
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 1315
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 1316
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_3

    move-wide v0, v2

    :cond_3
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix4x4;)D
    .locals 5

    .line 1281
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1282
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 1283
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 1284
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 1285
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    move-wide v0, v2

    .line 1286
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_4

    move-wide v0, v2

    .line 1287
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_5

    move-wide v0, v2

    .line 1288
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_6

    move-wide v0, v2

    .line 1289
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_7

    move-wide v0, v2

    .line 1290
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_8

    move-wide v0, v2

    .line 1291
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_9

    move-wide v0, v2

    .line 1292
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_a

    move-wide v0, v2

    .line 1293
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_b

    move-wide v0, v2

    .line 1294
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_c

    move-wide v0, v2

    .line 1295
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_d

    move-wide v0, v2

    .line 1296
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_e

    move-wide v0, v2

    :cond_e
    return-wide v0
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 4

    .line 1345
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1346
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1347
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1348
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 4

    .line 1377
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1378
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1379
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1380
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 1330
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1331
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1332
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1333
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 1361
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1362
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1363
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1364
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/DMatrix4x4;ILorg/ejml/data/DMatrix4;)Lorg/ejml/data/DMatrix4;
    .locals 2

    if-nez p2, :cond_0

    .line 1701
    new-instance p2, Lorg/ejml/data/DMatrix4;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix4;-><init>()V

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1722
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1723
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1724
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1725
    iget-wide p0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    goto :goto_0

    .line 1728
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

    .line 1716
    :cond_2
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1717
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1718
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1719
    iget-wide p0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    goto :goto_0

    .line 1710
    :cond_3
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1711
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1712
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1713
    iget-wide p0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    goto :goto_0

    .line 1704
    :cond_4
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1705
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1706
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1707
    iget-wide p0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/DMatrix4x4;ILorg/ejml/data/DMatrix4;)Lorg/ejml/data/DMatrix4;
    .locals 2

    if-nez p2, :cond_0

    .line 1661
    new-instance p2, Lorg/ejml/data/DMatrix4;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix4;-><init>()V

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1682
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1683
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1684
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1685
    iget-wide p0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    goto :goto_0

    .line 1688
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

    .line 1676
    :cond_2
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1677
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1678
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1679
    iget-wide p0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    goto :goto_0

    .line 1670
    :cond_3
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1671
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1672
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1673
    iget-wide p0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    goto :goto_0

    .line 1664
    :cond_4
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1665
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1666
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1667
    iget-wide p0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/DMatrix4;D)V
    .locals 0

    .line 1647
    iput-wide p1, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1648
    iput-wide p1, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1649
    iput-wide p1, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1650
    iput-wide p1, p0, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static fill(Lorg/ejml/data/DMatrix4x4;D)V
    .locals 0

    .line 1630
    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1631
    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1632
    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1633
    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static invert(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)Z
    .locals 62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 937
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_DDF4;->elementMaxAbs(Lorg/ejml/data/DMatrix4x4;)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 939
    iget-wide v4, v0, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v4, v2

    .line 940
    iget-wide v6, v0, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v6, v2

    .line 941
    iget-wide v8, v0, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v8, v2

    .line 942
    iget-wide v10, v0, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v10, v2

    .line 943
    iget-wide v12, v0, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v12, v2

    .line 944
    iget-wide v14, v0, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v14, v2

    move-wide/from16 v16, v4

    .line 945
    iget-wide v4, v0, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v2

    move-wide/from16 v18, v10

    .line 946
    iget-wide v10, v0, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v10, v2

    move-wide/from16 v20, v8

    .line 947
    iget-wide v8, v0, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v8, v2

    move-wide/from16 v22, v6

    .line 948
    iget-wide v6, v0, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v6, v2

    move-wide/from16 v24, v8

    .line 949
    iget-wide v8, v0, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v8, v2

    move-wide/from16 v26, v12

    .line 950
    iget-wide v12, v0, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v12, v2

    move-wide/from16 v28, v10

    .line 951
    iget-wide v10, v0, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v10, v2

    move-wide/from16 v30, v10

    .line 952
    iget-wide v10, v0, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v10, v2

    move-wide/from16 v32, v4

    .line 953
    iget-wide v4, v0, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v2

    .line 954
    iget-wide v0, v0, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v0, v2

    mul-double v34, v8, v0

    mul-double v36, v12, v4

    sub-double v34, v34, v36

    mul-double v36, v14, v34

    mul-double v38, v6, v0

    mul-double v40, v12, v10

    sub-double v38, v38, v40

    mul-double v40, v32, v38

    sub-double v36, v36, v40

    mul-double v40, v6, v4

    mul-double v42, v8, v10

    sub-double v40, v40, v42

    mul-double v42, v28, v40

    add-double v36, v36, v42

    mul-double v42, v26, v34

    mul-double v44, v24, v0

    mul-double v46, v12, v30

    sub-double v44, v44, v46

    mul-double v46, v32, v44

    sub-double v42, v42, v46

    mul-double v46, v24, v4

    mul-double v48, v8, v30

    sub-double v46, v46, v48

    mul-double v48, v28, v46

    move-wide/from16 v50, v2

    add-double v2, v42, v48

    neg-double v2, v2

    mul-double v42, v26, v38

    mul-double v48, v14, v44

    sub-double v42, v42, v48

    mul-double v48, v24, v10

    mul-double v52, v6, v30

    sub-double v48, v48, v52

    mul-double v52, v28, v48

    add-double v42, v42, v52

    mul-double v52, v26, v40

    mul-double v54, v14, v46

    sub-double v52, v52, v54

    mul-double v54, v32, v48

    move-wide/from16 v56, v2

    add-double v2, v52, v54

    neg-double v2, v2

    mul-double v52, v22, v34

    mul-double v54, v20, v38

    sub-double v52, v52, v54

    mul-double v54, v18, v40

    move-wide/from16 v58, v2

    add-double v2, v52, v54

    neg-double v2, v2

    mul-double v34, v34, v16

    mul-double v52, v20, v44

    sub-double v34, v34, v52

    mul-double v52, v18, v46

    add-double v34, v34, v52

    mul-double v38, v38, v16

    mul-double v44, v44, v22

    sub-double v38, v38, v44

    mul-double v44, v18, v48

    move-wide/from16 v52, v2

    add-double v2, v38, v44

    neg-double v2, v2

    mul-double v38, v16, v40

    mul-double v40, v22, v46

    sub-double v38, v38, v40

    mul-double v40, v20, v48

    add-double v38, v38, v40

    mul-double v40, v32, v0

    mul-double v44, v28, v4

    sub-double v40, v40, v44

    mul-double v44, v22, v40

    mul-double v46, v14, v0

    mul-double v48, v28, v10

    sub-double v46, v46, v48

    mul-double v48, v20, v46

    sub-double v44, v44, v48

    mul-double v48, v14, v4

    mul-double v54, v32, v10

    sub-double v48, v48, v54

    mul-double v54, v18, v48

    add-double v44, v44, v54

    mul-double v40, v40, v16

    mul-double v0, v0, v26

    mul-double v54, v28, v30

    sub-double v0, v0, v54

    mul-double v54, v20, v0

    sub-double v40, v40, v54

    mul-double v4, v4, v26

    mul-double v54, v32, v30

    sub-double v4, v4, v54

    mul-double v54, v18, v4

    move-wide/from16 v60, v2

    add-double v2, v40, v54

    neg-double v2, v2

    mul-double v40, v16, v46

    mul-double v0, v0, v22

    sub-double v40, v40, v0

    mul-double v0, v26, v10

    mul-double v10, v14, v30

    sub-double/2addr v0, v10

    mul-double v10, v18, v0

    add-double v40, v40, v10

    mul-double v10, v16, v48

    mul-double v4, v4, v22

    sub-double/2addr v10, v4

    mul-double v0, v0, v20

    add-double/2addr v10, v0

    neg-double v0, v10

    mul-double v4, v32, v12

    mul-double v10, v28, v8

    sub-double/2addr v4, v10

    mul-double v10, v22, v4

    mul-double v30, v14, v12

    mul-double v46, v28, v6

    sub-double v30, v30, v46

    mul-double v46, v20, v30

    sub-double v10, v10, v46

    mul-double v46, v14, v8

    mul-double v48, v32, v6

    sub-double v46, v46, v48

    mul-double v48, v18, v46

    add-double v10, v10, v48

    neg-double v10, v10

    mul-double v4, v4, v16

    mul-double v12, v12, v26

    mul-double v28, v28, v24

    sub-double v12, v12, v28

    mul-double v28, v20, v12

    sub-double v4, v4, v28

    mul-double v8, v8, v26

    mul-double v28, v32, v24

    sub-double v8, v8, v28

    mul-double v28, v18, v8

    add-double v4, v4, v28

    mul-double v28, v16, v30

    mul-double v12, v12, v22

    sub-double v28, v28, v12

    mul-double v12, v26, v6

    mul-double v14, v14, v24

    sub-double/2addr v12, v14

    mul-double v6, v18, v12

    add-double v6, v28, v6

    neg-double v6, v6

    mul-double v14, v16, v46

    mul-double v8, v8, v22

    sub-double/2addr v14, v8

    mul-double v8, v20, v12

    add-double/2addr v14, v8

    mul-double v8, v16, v36

    mul-double v12, v22, v56

    add-double/2addr v8, v12

    mul-double v12, v20, v42

    add-double/2addr v8, v12

    mul-double v12, v18, v58

    add-double/2addr v8, v12

    div-double v8, v8, v50

    div-double v12, v36, v8

    move-wide/from16 v16, v14

    move-object/from16 v14, p1

    .line 975
    iput-wide v12, v14, Lorg/ejml/data/DMatrix4x4;->a11:D

    div-double v12, v52, v8

    .line 976
    iput-wide v12, v14, Lorg/ejml/data/DMatrix4x4;->a12:D

    div-double v12, v44, v8

    .line 977
    iput-wide v12, v14, Lorg/ejml/data/DMatrix4x4;->a13:D

    div-double/2addr v10, v8

    .line 978
    iput-wide v10, v14, Lorg/ejml/data/DMatrix4x4;->a14:D

    div-double v10, v56, v8

    .line 979
    iput-wide v10, v14, Lorg/ejml/data/DMatrix4x4;->a21:D

    div-double v10, v34, v8

    .line 980
    iput-wide v10, v14, Lorg/ejml/data/DMatrix4x4;->a22:D

    div-double/2addr v2, v8

    .line 981
    iput-wide v2, v14, Lorg/ejml/data/DMatrix4x4;->a23:D

    div-double/2addr v4, v8

    .line 982
    iput-wide v4, v14, Lorg/ejml/data/DMatrix4x4;->a24:D

    div-double v2, v42, v8

    .line 983
    iput-wide v2, v14, Lorg/ejml/data/DMatrix4x4;->a31:D

    div-double v2, v60, v8

    .line 984
    iput-wide v2, v14, Lorg/ejml/data/DMatrix4x4;->a32:D

    div-double v2, v40, v8

    .line 985
    iput-wide v2, v14, Lorg/ejml/data/DMatrix4x4;->a33:D

    div-double/2addr v6, v8

    .line 986
    iput-wide v6, v14, Lorg/ejml/data/DMatrix4x4;->a34:D

    div-double v2, v58, v8

    .line 987
    iput-wide v2, v14, Lorg/ejml/data/DMatrix4x4;->a41:D

    div-double v2, v38, v8

    .line 988
    iput-wide v2, v14, Lorg/ejml/data/DMatrix4x4;->a42:D

    div-double/2addr v0, v8

    .line 989
    iput-wide v0, v14, Lorg/ejml/data/DMatrix4x4;->a43:D

    div-double v0, v16, v8

    .line 990
    iput-wide v0, v14, Lorg/ejml/data/DMatrix4x4;->a44:D

    .line 992
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static mult(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 340
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 343
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 344
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 345
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 346
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 347
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 348
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 349
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 350
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 351
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 352
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 353
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 354
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 355
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 356
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 357
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4;)V
    .locals 6

    .line 890
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 891
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 892
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 893
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 6

    .line 871
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 872
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 873
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 874
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 306
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 309
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 310
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 311
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 312
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 313
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 314
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 315
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 316
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 317
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 318
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 319
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 320
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 321
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 322
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 323
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAdd(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 8

    .line 608
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 611
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 612
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 613
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 614
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 615
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 616
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 617
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 618
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 619
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 620
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 621
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 622
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 623
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 624
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 625
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 8

    .line 574
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 576
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 577
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 578
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 579
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 580
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 581
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 582
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 583
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 584
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 585
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 586
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 587
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 588
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 589
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 590
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 591
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAddOuter(DLorg/ejml/data/DMatrix4x4;DLorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 840
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 841
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 842
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 843
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 844
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 845
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 846
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 847
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 848
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 849
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 850
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 851
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 852
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 853
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 854
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 855
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr p0, v0

    iget-wide v0, p5, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr p3, v0

    iget-wide p5, p6, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr p3, p5

    add-double/2addr p0, p3

    iput-wide p0, p7, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAddTransA(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 8

    .line 675
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 676
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 677
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 678
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 679
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 680
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 681
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 682
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 683
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 684
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 685
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 686
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 687
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 688
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 689
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 690
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 691
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 692
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 8

    .line 641
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 643
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 644
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 645
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 646
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 647
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 648
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 649
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 650
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 651
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 652
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 653
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 654
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 655
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 656
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 657
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 658
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 8

    .line 742
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 744
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 745
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 746
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 747
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 748
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 749
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 750
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 751
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 752
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 753
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 754
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 755
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 756
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 757
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 758
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 759
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 8

    .line 708
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 709
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 711
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 712
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 713
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 714
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 715
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 716
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 717
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 718
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 719
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 720
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 721
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 722
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 723
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 724
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 725
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 8

    .line 809
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 810
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 812
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 813
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 814
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 815
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 816
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 817
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 818
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 819
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 820
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 821
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 822
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 823
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 824
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 825
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 826
    iget-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 8

    .line 775
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 776
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 777
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 778
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 779
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 780
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 781
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 782
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 783
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 784
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 785
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 786
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 787
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 788
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 789
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 790
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 791
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 792
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multTransA(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 407
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 410
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 411
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 412
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 413
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 414
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 415
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 416
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 417
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 418
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 419
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 420
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 421
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 422
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 423
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 424
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 373
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 376
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 377
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 378
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 379
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 380
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 381
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 382
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 383
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 384
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 385
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 386
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 387
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 388
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 389
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 390
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 474
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 475
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 477
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 478
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 479
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 480
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 481
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 482
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 483
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 484
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 485
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 486
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 487
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 488
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 489
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 490
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 491
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 440
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 441
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 443
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 444
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 445
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 446
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 447
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 448
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 449
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 450
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 451
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 452
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 453
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 454
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 455
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 456
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 457
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 541
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 544
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 545
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 546
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 547
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 548
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 549
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 550
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 551
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 552
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 553
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 554
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 555
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 556
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 557
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 558
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 6

    .line 507
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 510
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 511
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 512
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 513
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 514
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 515
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 516
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 517
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 518
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 519
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 520
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 521
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 522
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 523
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 524
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix4;)V
    .locals 2

    .line 1473
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1474
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1475
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1476
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 2

    .line 1509
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4;->a1:D

    .line 1510
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4;->a2:D

    .line 1511
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4;->a3:D

    .line 1512
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix4x4;)V
    .locals 2

    .line 1456
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1457
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1458
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1459
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 2

    .line 1491
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 1492
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 1493
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 1494
    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 919
    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 920
    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 921
    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 922
    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 4

    .line 188
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a1:D

    .line 189
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a2:D

    .line 190
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a3:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a3:D

    .line 191
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4;->a4:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 154
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 155
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 156
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 157
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 158
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 159
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 160
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 161
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 162
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 163
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 164
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 165
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 166
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 167
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 168
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 169
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrix4;)V
    .locals 4

    .line 234
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a1:D

    .line 235
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a2:D

    .line 236
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a3:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a3:D

    .line 237
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4;->a4:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4;->a4:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 205
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 206
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 207
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 208
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 209
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 210
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 211
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 212
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 213
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 214
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 215
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 216
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 217
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 218
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 219
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 220
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-void
.end method

.method public static trace(Lorg/ejml/data/DMatrix4x4;)D
    .locals 4

    .line 1099
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static transpose(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrix4x4;)Lorg/ejml/data/DMatrix4x4;
    .locals 2

    if-nez p0, :cond_0

    .line 270
    new-instance p0, Lorg/ejml/data/DMatrix4x4;

    invoke-direct {p0}, Lorg/ejml/data/DMatrix4x4;-><init>()V

    .line 272
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 274
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 275
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 276
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 277
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 278
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 279
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 280
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 281
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 282
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 283
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 284
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 285
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 286
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 287
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 288
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/DMatrix4x4;)V
    .locals 4

    .line 248
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 249
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 250
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 251
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 252
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 253
    iget-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    return-void
.end method

.class public Lorg/ejml/dense/fixed/CommonOps_FDF4;
.super Ljava/lang/Object;
.source "CommonOps_FDF4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 2

    .line 86
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 87
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a2:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 88
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a3:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 89
    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static add(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 52
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 53
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 54
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 55
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 56
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 57
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 58
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 59
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 60
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 61
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 62
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 63
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 64
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 65
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 66
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 67
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 2

    .line 132
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 133
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a2:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 134
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a3:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 135
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 103
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 104
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 105
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 106
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 107
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 108
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 109
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 110
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 111
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 112
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 113
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 114
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 115
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 116
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 117
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 118
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/FMatrix4;)V
    .locals 1

    .line 1613
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1614
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1615
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1616
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/FMatrix4x4;)V
    .locals 1

    .line 1596
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1597
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1598
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1599
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static cholL(Lorg/ejml/data/FMatrix4x4;)Z
    .locals 4

    .line 1040
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    const/4 v0, 0x0

    .line 1041
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 1042
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 1043
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1044
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 1045
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 1046
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 1047
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1048
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 1049
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 1050
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 1051
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1052
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 1053
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 1054
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 1055
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    .line 1056
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/FMatrix4x4;)Z
    .locals 4

    .line 1067
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    const/4 v0, 0x0

    .line 1068
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 1069
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 1070
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 1071
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 1072
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 1073
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 1074
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 1075
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 1076
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 1077
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 1078
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 1079
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1080
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1081
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1082
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    .line 1083
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static det(Lorg/ejml/data/FMatrix4x4;)F
    .locals 14

    .line 1004
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 1005
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 1006
    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1007
    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 1008
    iget v4, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 1009
    iget v5, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1010
    iget v6, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 1011
    iget v7, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 1012
    iget v8, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    .line 1015
    iget v9, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float v10, v4, v8

    mul-float v11, v5, v7

    sub-float/2addr v10, v11

    mul-float/2addr v0, v10

    mul-float v11, v3, v8

    mul-float v12, v5, v6

    sub-float/2addr v11, v12

    mul-float/2addr v11, v1

    sub-float/2addr v0, v11

    mul-float/2addr v3, v7

    mul-float/2addr v6, v4

    sub-float/2addr v3, v6

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    mul-float/2addr v9, v0

    const/4 v0, 0x0

    add-float/2addr v9, v0

    .line 1016
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 1017
    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 1018
    iget v6, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 1019
    iget v11, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v10, v0

    mul-float v12, v3, v8

    mul-float v13, v5, v6

    sub-float/2addr v12, v13

    mul-float/2addr v1, v12

    sub-float/2addr v10, v1

    mul-float/2addr v7, v3

    mul-float/2addr v4, v6

    sub-float/2addr v7, v4

    mul-float/2addr v7, v2

    add-float/2addr v10, v7

    mul-float/2addr v11, v10

    sub-float/2addr v9, v11

    .line 1020
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 1021
    iget v4, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 1022
    iget v7, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 1023
    iget v10, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v8, v4

    mul-float/2addr v5, v7

    sub-float/2addr v8, v5

    mul-float/2addr v8, v0

    mul-float/2addr v12, v1

    sub-float/2addr v8, v12

    mul-float v5, v3, v7

    mul-float v11, v4, v6

    sub-float/2addr v5, v11

    mul-float/2addr v2, v5

    add-float/2addr v8, v2

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    .line 1024
    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 1025
    iget v8, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 1026
    iget v10, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 1027
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v4, v10

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    mul-float/2addr v0, v4

    mul-float/2addr v3, v10

    mul-float/2addr v8, v6

    sub-float/2addr v3, v8

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    mul-float/2addr p0, v0

    sub-float/2addr v9, p0

    return v9
.end method

.method public static diag(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4;)V
    .locals 1

    .line 1113
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1114
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1115
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1116
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iput p0, p1, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix4;F)V
    .locals 1

    .line 1543
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1544
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1545
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1546
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix4;FLorg/ejml/data/FMatrix4;)V
    .locals 1

    .line 1579
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1580
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1581
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1582
    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix4x4;F)V
    .locals 1

    .line 1526
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1527
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1528
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1529
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix4x4;FLorg/ejml/data/FMatrix4x4;)V
    .locals 1

    .line 1561
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1562
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1563
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1564
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static dot(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)F
    .locals 3

    .line 909
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 2

    .line 1407
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1408
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a2:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1409
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a3:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1410
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 2

    .line 1439
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1440
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a2:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1441
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a3:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1442
    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 1392
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1393
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1394
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1395
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 1423
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1424
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1425
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1426
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/FMatrix4;)F
    .locals 2

    .line 1161
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1162
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1163
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1164
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    :cond_2
    return v0
.end method

.method public static elementMax(Lorg/ejml/data/FMatrix4x4;)F
    .locals 2

    .line 1130
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 1131
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 1132
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 1133
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1134
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 1135
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 1136
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_5

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 1137
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1138
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 1139
    :cond_7
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_8

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 1140
    :cond_8
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_9

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 1141
    :cond_9
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_a

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1142
    :cond_a
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_b

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 1143
    :cond_b
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_c

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 1144
    :cond_c
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_d

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 1145
    :cond_d
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_e

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    :cond_e
    return v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrix4;)F
    .locals 3

    .line 1211
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1212
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 1213
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    .line 1214
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    move v0, v1

    .line 1215
    :cond_2
    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_3

    move v0, p0

    :cond_3
    return v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrix4x4;)F
    .locals 3

    .line 1180
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1181
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 1182
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    .line 1183
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    move v0, v1

    .line 1184
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    move v0, v1

    .line 1185
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_4

    move v0, v1

    .line 1186
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_5

    move v0, v1

    .line 1187
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_6

    move v0, v1

    .line 1188
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_7

    move v0, v1

    .line 1189
    :cond_7
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_8

    move v0, v1

    .line 1190
    :cond_8
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_9

    move v0, v1

    .line 1191
    :cond_9
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_a

    move v0, v1

    .line 1192
    :cond_a
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_b

    move v0, v1

    .line 1193
    :cond_b
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_c

    move v0, v1

    .line 1194
    :cond_c
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_d

    move v0, v1

    .line 1195
    :cond_d
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_e

    move v0, p0

    :cond_e
    return v0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrix4;)F
    .locals 2

    .line 1262
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1263
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1264
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1265
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    :cond_2
    return v0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrix4x4;)F
    .locals 2

    .line 1231
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 1232
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 1233
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 1234
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1235
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 1236
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 1237
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_5

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 1238
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_6

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1239
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 1240
    :cond_7
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_8

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 1241
    :cond_8
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_9

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 1242
    :cond_9
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_a

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1243
    :cond_a
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_b

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 1244
    :cond_b
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_c

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 1245
    :cond_c
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_d

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 1246
    :cond_d
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_e

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    :cond_e
    return v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrix4;)F
    .locals 3

    .line 1312
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1313
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a1:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 1314
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    move v0, v1

    .line 1315
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    move v0, v1

    .line 1316
    :cond_2
    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_3

    move v0, p0

    :cond_3
    return v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrix4x4;)F
    .locals 3

    .line 1281
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1282
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 1283
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    move v0, v1

    .line 1284
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    move v0, v1

    .line 1285
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    move v0, v1

    .line 1286
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_4

    move v0, v1

    .line 1287
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_5

    move v0, v1

    .line 1288
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_6

    move v0, v1

    .line 1289
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_7

    move v0, v1

    .line 1290
    :cond_7
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_8

    move v0, v1

    .line 1291
    :cond_8
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_9

    move v0, v1

    .line 1292
    :cond_9
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_a

    move v0, v1

    .line 1293
    :cond_a
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_b

    move v0, v1

    .line 1294
    :cond_b
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_c

    move v0, v1

    .line 1295
    :cond_c
    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_d

    move v0, v1

    .line 1296
    :cond_d
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_e

    move v0, p0

    :cond_e
    return v0
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 2

    .line 1345
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1346
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1347
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1348
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 2

    .line 1377
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1378
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1379
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1380
    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 1330
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1331
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1332
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1333
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 1361
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1362
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1363
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1364
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/FMatrix4x4;ILorg/ejml/data/FMatrix4;)Lorg/ejml/data/FMatrix4;
    .locals 1

    if-nez p2, :cond_0

    .line 1701
    new-instance p2, Lorg/ejml/data/FMatrix4;

    invoke-direct {p2}, Lorg/ejml/data/FMatrix4;-><init>()V

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1722
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1723
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1724
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1725
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

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
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1717
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1718
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1719
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    goto :goto_0

    .line 1710
    :cond_3
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1711
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1712
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1713
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    goto :goto_0

    .line 1704
    :cond_4
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1705
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1706
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1707
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/FMatrix4x4;ILorg/ejml/data/FMatrix4;)Lorg/ejml/data/FMatrix4;
    .locals 1

    if-nez p2, :cond_0

    .line 1661
    new-instance p2, Lorg/ejml/data/FMatrix4;

    invoke-direct {p2}, Lorg/ejml/data/FMatrix4;-><init>()V

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1682
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1683
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1684
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1685
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

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
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1677
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1678
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1679
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    goto :goto_0

    .line 1670
    :cond_3
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1671
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1672
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1673
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    goto :goto_0

    .line 1664
    :cond_4
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1665
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1666
    iget p1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1667
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/FMatrix4;F)V
    .locals 0

    .line 1647
    iput p1, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1648
    iput p1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1649
    iput p1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1650
    iput p1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static fill(Lorg/ejml/data/FMatrix4x4;F)V
    .locals 0

    .line 1630
    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1631
    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1632
    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1633
    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iput p1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static invert(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 937
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_FDF4;->elementMaxAbs(Lorg/ejml/data/FMatrix4x4;)F

    move-result v3

    div-float/2addr v2, v3

    .line 939
    iget v3, v0, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v3, v2

    .line 940
    iget v4, v0, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v4, v2

    .line 941
    iget v5, v0, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v5, v2

    .line 942
    iget v6, v0, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v6, v2

    .line 943
    iget v7, v0, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v7, v2

    .line 944
    iget v8, v0, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v8, v2

    .line 945
    iget v9, v0, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v9, v2

    .line 946
    iget v10, v0, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v10, v2

    .line 947
    iget v11, v0, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v11, v2

    .line 948
    iget v12, v0, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v12, v2

    .line 949
    iget v13, v0, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v13, v2

    .line 950
    iget v14, v0, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v14, v2

    .line 951
    iget v15, v0, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v15, v2

    .line 952
    iget v1, v0, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    move/from16 v16, v3

    .line 953
    iget v3, v0, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v3, v2

    .line 954
    iget v0, v0, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v0, v2

    mul-float v17, v13, v0

    mul-float v18, v14, v3

    sub-float v17, v17, v18

    mul-float v18, v8, v17

    mul-float v19, v12, v0

    mul-float v20, v14, v1

    sub-float v19, v19, v20

    mul-float v20, v9, v19

    sub-float v18, v18, v20

    mul-float v20, v12, v3

    mul-float v21, v13, v1

    sub-float v20, v20, v21

    mul-float v21, v10, v20

    add-float v18, v18, v21

    mul-float v21, v7, v17

    mul-float v22, v11, v0

    mul-float v23, v14, v15

    sub-float v22, v22, v23

    mul-float v23, v9, v22

    sub-float v21, v21, v23

    mul-float v23, v11, v3

    mul-float v24, v13, v15

    sub-float v23, v23, v24

    mul-float v24, v10, v23

    move/from16 v25, v2

    add-float v2, v21, v24

    neg-float v2, v2

    mul-float v21, v7, v19

    mul-float v24, v8, v22

    sub-float v21, v21, v24

    mul-float v24, v11, v1

    mul-float v26, v12, v15

    sub-float v24, v24, v26

    mul-float v26, v10, v24

    add-float v21, v21, v26

    mul-float v26, v7, v20

    mul-float v27, v8, v23

    sub-float v26, v26, v27

    mul-float v27, v9, v24

    move/from16 p0, v2

    add-float v2, v26, v27

    neg-float v2, v2

    mul-float v26, v4, v17

    mul-float v27, v5, v19

    sub-float v26, v26, v27

    mul-float v27, v6, v20

    move/from16 v28, v2

    add-float v2, v26, v27

    neg-float v2, v2

    mul-float v17, v17, v16

    mul-float v26, v5, v22

    sub-float v17, v17, v26

    mul-float v26, v6, v23

    add-float v17, v17, v26

    mul-float v19, v19, v16

    mul-float v22, v22, v4

    sub-float v19, v19, v22

    mul-float v22, v6, v24

    move/from16 v26, v2

    add-float v2, v19, v22

    neg-float v2, v2

    mul-float v19, v16, v20

    mul-float v23, v23, v4

    sub-float v19, v19, v23

    mul-float v24, v24, v5

    add-float v19, v19, v24

    mul-float v20, v9, v0

    mul-float v22, v10, v3

    sub-float v20, v20, v22

    mul-float v22, v4, v20

    mul-float v23, v8, v0

    mul-float v24, v10, v1

    sub-float v23, v23, v24

    mul-float v24, v5, v23

    sub-float v22, v22, v24

    mul-float v24, v8, v3

    mul-float v27, v9, v1

    sub-float v24, v24, v27

    mul-float v27, v6, v24

    add-float v22, v22, v27

    mul-float v20, v20, v16

    mul-float/2addr v0, v7

    mul-float v27, v10, v15

    sub-float v0, v0, v27

    mul-float v27, v5, v0

    sub-float v20, v20, v27

    mul-float/2addr v3, v7

    mul-float v27, v9, v15

    sub-float v3, v3, v27

    mul-float v27, v6, v3

    move/from16 v29, v2

    add-float v2, v20, v27

    neg-float v2, v2

    mul-float v20, v16, v23

    mul-float/2addr v0, v4

    sub-float v20, v20, v0

    mul-float/2addr v1, v7

    mul-float/2addr v15, v8

    sub-float/2addr v1, v15

    mul-float v0, v6, v1

    add-float v20, v20, v0

    mul-float v0, v16, v24

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    neg-float v0, v0

    mul-float v1, v9, v14

    mul-float v3, v10, v13

    sub-float/2addr v1, v3

    mul-float v3, v4, v1

    mul-float v15, v8, v14

    mul-float v23, v10, v12

    sub-float v15, v15, v23

    mul-float v23, v5, v15

    sub-float v3, v3, v23

    mul-float v23, v8, v13

    mul-float v24, v9, v12

    sub-float v23, v23, v24

    mul-float v24, v6, v23

    add-float v3, v3, v24

    neg-float v3, v3

    mul-float v1, v1, v16

    mul-float/2addr v14, v7

    mul-float/2addr v10, v11

    sub-float/2addr v14, v10

    mul-float v10, v5, v14

    sub-float/2addr v1, v10

    mul-float/2addr v13, v7

    mul-float/2addr v9, v11

    sub-float/2addr v13, v9

    mul-float v9, v6, v13

    add-float/2addr v1, v9

    mul-float v9, v16, v15

    mul-float/2addr v14, v4

    sub-float/2addr v9, v14

    mul-float/2addr v7, v12

    mul-float/2addr v8, v11

    sub-float/2addr v7, v8

    mul-float v8, v6, v7

    add-float/2addr v9, v8

    neg-float v8, v9

    mul-float v9, v16, v23

    mul-float/2addr v13, v4

    sub-float/2addr v9, v13

    mul-float/2addr v7, v5

    add-float/2addr v9, v7

    mul-float v7, v16, v18

    mul-float v4, v4, p0

    add-float/2addr v7, v4

    mul-float v5, v5, v21

    add-float/2addr v7, v5

    mul-float v6, v6, v28

    add-float/2addr v7, v6

    div-float v7, v7, v25

    div-float v4, v18, v7

    move-object/from16 v5, p1

    .line 975
    iput v4, v5, Lorg/ejml/data/FMatrix4x4;->a11:F

    div-float v4, v26, v7

    .line 976
    iput v4, v5, Lorg/ejml/data/FMatrix4x4;->a12:F

    div-float v4, v22, v7

    .line 977
    iput v4, v5, Lorg/ejml/data/FMatrix4x4;->a13:F

    div-float/2addr v3, v7

    .line 978
    iput v3, v5, Lorg/ejml/data/FMatrix4x4;->a14:F

    div-float v3, p0, v7

    .line 979
    iput v3, v5, Lorg/ejml/data/FMatrix4x4;->a21:F

    div-float v3, v17, v7

    .line 980
    iput v3, v5, Lorg/ejml/data/FMatrix4x4;->a22:F

    div-float/2addr v2, v7

    .line 981
    iput v2, v5, Lorg/ejml/data/FMatrix4x4;->a23:F

    div-float/2addr v1, v7

    .line 982
    iput v1, v5, Lorg/ejml/data/FMatrix4x4;->a24:F

    div-float v1, v21, v7

    .line 983
    iput v1, v5, Lorg/ejml/data/FMatrix4x4;->a31:F

    div-float v2, v29, v7

    .line 984
    iput v2, v5, Lorg/ejml/data/FMatrix4x4;->a32:F

    div-float v1, v20, v7

    .line 985
    iput v1, v5, Lorg/ejml/data/FMatrix4x4;->a33:F

    div-float/2addr v8, v7

    .line 986
    iput v8, v5, Lorg/ejml/data/FMatrix4x4;->a34:F

    div-float v2, v28, v7

    .line 987
    iput v2, v5, Lorg/ejml/data/FMatrix4x4;->a41:F

    div-float v1, v19, v7

    .line 988
    iput v1, v5, Lorg/ejml/data/FMatrix4x4;->a42:F

    div-float/2addr v0, v7

    .line 989
    iput v0, v5, Lorg/ejml/data/FMatrix4x4;->a43:F

    div-float/2addr v9, v7

    .line 990
    iput v9, v5, Lorg/ejml/data/FMatrix4x4;->a44:F

    .line 992
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static mult(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 340
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 343
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 344
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 345
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 346
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 347
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 348
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 349
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 350
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 351
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 352
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 353
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 354
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 355
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 356
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 357
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4;)V
    .locals 3

    .line 890
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 891
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 892
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 893
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 3

    .line 871
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 872
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 873
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 874
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 306
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 309
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 310
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 311
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 312
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 313
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 314
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 315
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 316
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 317
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 318
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 319
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 320
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 321
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 322
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 323
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAdd(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 4

    .line 608
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 611
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 612
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 613
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 614
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 615
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 616
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 617
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 618
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 619
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 620
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 621
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 622
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 623
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 624
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 625
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 4

    .line 574
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 576
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 577
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 578
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 579
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 580
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 581
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 582
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 583
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 584
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 585
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 586
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 587
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 588
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 589
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 590
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 591
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAddOuter(FLorg/ejml/data/FMatrix4x4;FLorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 840
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 841
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 842
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 843
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 844
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 845
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 846
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 847
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 848
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 849
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 850
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 851
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 852
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 853
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 854
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 855
    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    iget p1, p3, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr p2, p1

    iget p1, p4, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    iput p0, p5, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAddTransA(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 4

    .line 675
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 676
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 677
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 678
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 679
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 680
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 681
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 682
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 683
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 684
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 685
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 686
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 687
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 688
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 689
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 690
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 691
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 692
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 4

    .line 641
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 643
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 644
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 645
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 646
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 647
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 648
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 649
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 650
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 651
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 652
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 653
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 654
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 655
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 656
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 657
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 658
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAddTransAB(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 4

    .line 742
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 744
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 745
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 746
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 747
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 748
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 749
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 750
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 751
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 752
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 753
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 754
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 755
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 756
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 757
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 758
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 759
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 4

    .line 708
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 709
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 711
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 712
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 713
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 714
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 715
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 716
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 717
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 718
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 719
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 720
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 721
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 722
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 723
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 724
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 725
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAddTransB(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 4

    .line 809
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 810
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 812
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 813
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 814
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 815
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 816
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 817
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 818
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 819
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 820
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 821
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 822
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 823
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 824
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 825
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 826
    iget v0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 4

    .line 775
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 776
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 777
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 778
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 779
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 780
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 781
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 782
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 783
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 784
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 785
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 786
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 787
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 788
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 789
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 790
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 791
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 792
    iget v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v3, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multTransA(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 407
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 410
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 411
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 412
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 413
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 414
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 415
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 416
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 417
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 418
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 419
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 420
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 421
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 422
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 423
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 424
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 373
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 376
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 377
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 378
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 379
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 380
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 381
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 382
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 383
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 384
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 385
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 386
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 387
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 388
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 389
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 390
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multTransAB(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 474
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 475
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 477
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 478
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 479
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 480
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 481
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 482
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 483
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 484
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 485
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 486
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 487
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 488
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 489
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 490
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 491
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 440
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 441
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 442
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 443
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 444
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 445
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 446
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 447
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 448
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 449
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 450
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 451
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 452
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 453
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 454
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 455
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 456
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 457
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multTransB(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 541
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 544
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 545
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 546
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 547
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 548
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 549
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 550
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 551
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 552
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 553
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 554
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 555
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 556
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 557
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 558
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p2, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 3

    .line 507
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 510
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 511
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 512
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 513
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 514
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 515
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 516
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 517
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 518
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 519
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 520
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 521
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 522
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 523
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 524
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix4;)V
    .locals 1

    .line 1473
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1474
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1475
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1476
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 1

    .line 1509
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a1:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 1510
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a2:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 1511
    iget v0, p1, Lorg/ejml/data/FMatrix4;->a3:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 1512
    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix4x4;)V
    .locals 1

    .line 1456
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1457
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1458
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1459
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 1

    .line 1491
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 1492
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 1493
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 1494
    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v0, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 919
    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 920
    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 921
    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 922
    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static subtract(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 2

    .line 188
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a1:F

    .line 189
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a2:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a2:F

    .line 190
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a3:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4;->a3:F

    .line 191
    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static subtract(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 154
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 155
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 156
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 157
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 158
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 159
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 160
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 161
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 162
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 163
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 164
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 165
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 166
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 167
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 168
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 169
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrix4;)V
    .locals 2

    .line 234
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a1:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a1:F

    .line 235
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a2:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a2:F

    .line 236
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    iget v1, p1, Lorg/ejml/data/FMatrix4;->a3:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a3:F

    .line 237
    iget v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    iget p1, p1, Lorg/ejml/data/FMatrix4;->a4:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 205
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 206
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 207
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 208
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 209
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 210
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 211
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 212
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 213
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 214
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 215
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 216
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 217
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 218
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 219
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iget v1, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 220
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iget p1, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-void
.end method

.method public static trace(Lorg/ejml/data/FMatrix4x4;)F
    .locals 2

    .line 1099
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    add-float/2addr v0, p0

    return v0
.end method

.method public static transpose(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrix4x4;)Lorg/ejml/data/FMatrix4x4;
    .locals 1

    if-nez p0, :cond_0

    .line 270
    new-instance p0, Lorg/ejml/data/FMatrix4x4;

    invoke-direct {p0}, Lorg/ejml/data/FMatrix4x4;-><init>()V

    .line 272
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 274
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 275
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 276
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 277
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 278
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 279
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 280
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 281
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 282
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 283
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 284
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 285
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 286
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 287
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 288
    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    iput p0, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/FMatrix4x4;)V
    .locals 2

    .line 248
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 249
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 250
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 251
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 252
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 253
    iget v0, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iget v1, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    iput v1, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    iput v0, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    return-void
.end method

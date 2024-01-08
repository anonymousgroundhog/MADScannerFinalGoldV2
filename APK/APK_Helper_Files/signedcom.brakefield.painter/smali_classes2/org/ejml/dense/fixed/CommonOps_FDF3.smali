.class public Lorg/ejml/dense/fixed/CommonOps_FDF3;
.super Ljava/lang/Object;
.source "CommonOps_FDF3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 2

    .line 79
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 80
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a2:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 81
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static add(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 52
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 53
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 54
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 55
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 56
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 57
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 58
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 59
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 60
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 2

    .line 117
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 118
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a2:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 119
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 95
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 96
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 97
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 98
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 99
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 100
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 101
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 102
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 103
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/FMatrix3;)V
    .locals 1

    .line 1343
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1344
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1345
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/FMatrix3x3;)V
    .locals 1

    .line 1327
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1328
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1329
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static cholL(Lorg/ejml/data/FMatrix3x3;)Z
    .locals 4

    .line 834
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    const/4 v0, 0x0

    .line 835
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 836
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 837
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 838
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 839
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 840
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 841
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 842
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    .line 843
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/FMatrix3x3;)Z
    .locals 4

    .line 854
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    const/4 v0, 0x0

    .line 855
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 856
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 857
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 858
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 859
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 860
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 861
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 862
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    .line 863
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static det(Lorg/ejml/data/FMatrix3x3;)F
    .locals 5

    .line 819
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 820
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v4, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 821
    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v4, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v4, p0

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static diag(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3;)V
    .locals 1

    .line 893
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput v0, p1, Lorg/ejml/data/FMatrix3;->a1:F

    .line 894
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput v0, p1, Lorg/ejml/data/FMatrix3;->a2:F

    .line 895
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iput p0, p1, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix3;F)V
    .locals 1

    .line 1277
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1278
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1279
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix3;FLorg/ejml/data/FMatrix3;)V
    .locals 1

    .line 1311
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1312
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1313
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix3x3;F)V
    .locals 1

    .line 1261
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1262
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1263
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix3x3;FLorg/ejml/data/FMatrix3x3;)V
    .locals 1

    .line 1294
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1295
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1296
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static dot(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)F
    .locals 3

    .line 746
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 2

    .line 1149
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1150
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a2:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1151
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 2

    .line 1179
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1180
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a2:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1181
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 1135
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1136
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1137
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 1164
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1165
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1166
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/FMatrix3;)F
    .locals 2

    .line 933
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 934
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 935
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a3:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    :cond_1
    return v0
.end method

.method public static elementMax(Lorg/ejml/data/FMatrix3x3;)F
    .locals 2

    .line 909
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 910
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 911
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 912
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 913
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 914
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 915
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_5

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 916
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 917
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    :cond_7
    return v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrix3;)F
    .locals 3

    .line 975
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 976
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 977
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    .line 978
    :cond_1
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_2

    move v0, p0

    :cond_2
    return v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrix3x3;)F
    .locals 3

    .line 951
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 952
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 953
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    .line 954
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    move v0, v1

    .line 955
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    move v0, v1

    .line 956
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_4

    move v0, v1

    .line 957
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_5

    move v0, v1

    .line 958
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_6

    move v0, v1

    .line 959
    :cond_6
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_7

    move v0, p0

    :cond_7
    return v0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrix3;)F
    .locals 2

    .line 1018
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1019
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1020
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a3:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    :cond_1
    return v0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrix3x3;)F
    .locals 2

    .line 994
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 995
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 996
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 997
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 998
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 999
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1000
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_5

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 1001
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_6

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 1002
    :cond_6
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    :cond_7
    return v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrix3;)F
    .locals 3

    .line 1060
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1061
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a1:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 1062
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    move v0, v1

    .line 1063
    :cond_1
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_2

    move v0, p0

    :cond_2
    return v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrix3x3;)F
    .locals 3

    .line 1036
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1037
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 1038
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    move v0, v1

    .line 1039
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    move v0, v1

    .line 1040
    :cond_2
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    move v0, v1

    .line 1041
    :cond_3
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_4

    move v0, v1

    .line 1042
    :cond_4
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_5

    move v0, v1

    .line 1043
    :cond_5
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_6

    move v0, v1

    .line 1044
    :cond_6
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_7

    move v0, p0

    :cond_7
    return v0
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 2

    .line 1091
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1092
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1093
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 2

    .line 1121
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1122
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1123
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 1077
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1078
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1079
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 1106
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1107
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1108
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/FMatrix3x3;ILorg/ejml/data/FMatrix3;)Lorg/ejml/data/FMatrix3;
    .locals 1

    if-nez p2, :cond_0

    .line 1419
    new-instance p2, Lorg/ejml/data/FMatrix3;

    invoke-direct {p2}, Lorg/ejml/data/FMatrix3;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1432
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1433
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1434
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    goto :goto_0

    .line 1437
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

    .line 1427
    :cond_2
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1428
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1429
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    goto :goto_0

    .line 1422
    :cond_3
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1423
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1424
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/FMatrix3x3;ILorg/ejml/data/FMatrix3;)Lorg/ejml/data/FMatrix3;
    .locals 1

    if-nez p2, :cond_0

    .line 1388
    new-instance p2, Lorg/ejml/data/FMatrix3;

    invoke-direct {p2}, Lorg/ejml/data/FMatrix3;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1401
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1402
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1403
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    goto :goto_0

    .line 1406
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

    .line 1396
    :cond_2
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1397
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1398
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    goto :goto_0

    .line 1391
    :cond_3
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1392
    iget p1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1393
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/FMatrix3;F)V
    .locals 0

    .line 1375
    iput p1, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1376
    iput p1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1377
    iput p1, p0, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static fill(Lorg/ejml/data/FMatrix3x3;F)V
    .locals 0

    .line 1359
    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1360
    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1361
    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput p1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static invert(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)Z
    .locals 14

    const/high16 v0, 0x3f800000    # 1.0f

    .line 773
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF3;->elementMaxAbs(Lorg/ejml/data/FMatrix3x3;)F

    move-result v1

    div-float/2addr v0, v1

    .line 775
    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v0

    .line 776
    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v0

    .line 777
    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v3, v0

    .line 778
    iget v4, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v4, v0

    .line 779
    iget v5, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v5, v0

    .line 780
    iget v6, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v6, v0

    .line 781
    iget v7, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v7, v0

    .line 782
    iget v8, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v8, v0

    .line 783
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, v0

    mul-float v9, v5, p0

    mul-float v10, v6, v8

    sub-float/2addr v9, v10

    mul-float v10, v4, p0

    mul-float v11, v6, v7

    sub-float/2addr v10, v11

    neg-float v10, v10

    mul-float v11, v4, v8

    mul-float v12, v5, v7

    sub-float/2addr v11, v12

    mul-float v12, v2, p0

    mul-float v13, v3, v8

    sub-float/2addr v12, v13

    neg-float v12, v12

    mul-float/2addr p0, v1

    mul-float v13, v3, v7

    sub-float/2addr p0, v13

    mul-float/2addr v8, v1

    mul-float/2addr v7, v2

    sub-float/2addr v8, v7

    neg-float v7, v8

    mul-float v8, v2, v6

    mul-float v13, v3, v5

    sub-float/2addr v8, v13

    mul-float/2addr v6, v1

    mul-float v13, v3, v4

    sub-float/2addr v6, v13

    neg-float v6, v6

    mul-float/2addr v5, v1

    mul-float/2addr v4, v2

    sub-float/2addr v5, v4

    mul-float/2addr v1, v9

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    mul-float/2addr v3, v11

    add-float/2addr v1, v3

    div-float/2addr v1, v0

    div-float/2addr v9, v1

    .line 797
    iput v9, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    div-float/2addr v12, v1

    .line 798
    iput v12, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    div-float/2addr v8, v1

    .line 799
    iput v8, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    div-float/2addr v10, v1

    .line 800
    iput v10, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    div-float/2addr p0, v1

    .line 801
    iput p0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    div-float/2addr v6, v1

    .line 802
    iput v6, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    div-float/2addr v11, v1

    .line 803
    iput v11, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    div-float/2addr v7, v1

    .line 804
    iput v7, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    div-float/2addr v5, v1

    .line 805
    iput v5, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    .line 807
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mult(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 291
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 294
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 295
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 296
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 297
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 298
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 299
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 300
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 301
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3;)V
    .locals 3

    .line 728
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 729
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 730
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 3

    .line 710
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 711
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 712
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 264
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 267
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 268
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 269
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 270
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 271
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 272
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 273
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 274
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAdd(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 4

    .line 503
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 506
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 507
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 508
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 509
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 510
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 511
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 512
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 513
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 4

    .line 476
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 478
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 479
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 480
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 481
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 482
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 483
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 484
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 485
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 486
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAddOuter(FLorg/ejml/data/FMatrix3x3;FLorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 686
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 687
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 688
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 689
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 690
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 691
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 692
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 693
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 694
    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    iget p1, p3, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr p2, p1

    iget p1, p4, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    iput p0, p5, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAddTransA(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 4

    .line 556
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 559
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 560
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 561
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 562
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 563
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 564
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 565
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 566
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 4

    .line 529
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 532
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 533
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 534
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 535
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 536
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 537
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 538
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 539
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAddTransAB(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 4

    .line 609
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 612
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 613
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 614
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 615
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 616
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 617
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 618
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 619
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 4

    .line 582
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 583
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 585
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 586
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 587
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 588
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 589
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 590
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 591
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 592
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAddTransB(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 4

    .line 662
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 665
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 666
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 667
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 668
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 669
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 670
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 671
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 672
    iget v0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 4

    .line 635
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 638
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 639
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 640
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 641
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 642
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 643
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 644
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 645
    iget v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v3, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multTransA(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 344
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 347
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 348
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 349
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 350
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 351
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 352
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 353
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 354
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 317
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 320
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 321
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 322
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 323
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 324
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 325
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 326
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 327
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multTransAB(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 397
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 400
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 401
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 402
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 403
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 404
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 405
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 406
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 407
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 370
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 373
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 374
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 375
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 376
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 377
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 378
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 379
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 380
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multTransB(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 450
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 453
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 454
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 455
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 456
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 457
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 458
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 459
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 460
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p2, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 3

    .line 423
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 426
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 427
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 428
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 429
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 430
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 431
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 432
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 433
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix3;)V
    .locals 1

    .line 1211
    iget v0, p1, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1212
    iget v0, p1, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1213
    iget v0, p1, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 1

    .line 1245
    iget v0, p1, Lorg/ejml/data/FMatrix3;->a1:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 1246
    iget v0, p1, Lorg/ejml/data/FMatrix3;->a2:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 1247
    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix3x3;)V
    .locals 1

    .line 1195
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1196
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1197
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 1

    .line 1228
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 1229
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 1230
    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v0, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 756
    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 757
    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 758
    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static subtract(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 2

    .line 165
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a1:F

    .line 166
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a2:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3;->a2:F

    .line 167
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static subtract(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 138
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 139
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 140
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 141
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 142
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 143
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 144
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 145
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 146
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;)V
    .locals 2

    .line 203
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    .line 204
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a2:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    .line 205
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 181
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 182
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 183
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 184
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 185
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 186
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 187
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 188
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 189
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-void
.end method

.method public static trace(Lorg/ejml/data/FMatrix3x3;)F
    .locals 2

    .line 879
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    add-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    add-float/2addr v0, p0

    return v0
.end method

.method public static transpose(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;)Lorg/ejml/data/FMatrix3x3;
    .locals 1

    if-nez p0, :cond_0

    .line 235
    new-instance p0, Lorg/ejml/data/FMatrix3x3;

    invoke-direct {p0}, Lorg/ejml/data/FMatrix3x3;-><init>()V

    .line 237
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 239
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 240
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 241
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 242
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 243
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 244
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 245
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 246
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iput p0, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/FMatrix3x3;)V
    .locals 2

    .line 216
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 217
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 218
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iput v1, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iput v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    return-void
.end method

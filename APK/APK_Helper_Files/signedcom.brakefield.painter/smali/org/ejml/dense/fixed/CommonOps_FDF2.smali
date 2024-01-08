.class public Lorg/ejml/dense/fixed/CommonOps_FDF2;
.super Ljava/lang/Object;
.source "CommonOps_FDF2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 2

    .line 74
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 75
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static add(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 52
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 53
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 54
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 55
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 2

    .line 106
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 107
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 89
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 90
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 91
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 92
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/FMatrix2;)V
    .locals 1

    .line 1153
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1154
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/FMatrix2x2;)V
    .locals 1

    .line 1138
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 1139
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    neg-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static cholL(Lorg/ejml/data/FMatrix2x2;)Z
    .locals 3

    .line 696
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    const/4 v0, 0x0

    .line 697
    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 698
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 699
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    .line 700
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/FMatrix2x2;)Z
    .locals 3

    .line 711
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    const/4 v0, 0x0

    .line 712
    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 713
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 714
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    .line 715
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static det(Lorg/ejml/data/FMatrix2x2;)F
    .locals 2

    .line 685
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method public static diag(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2;)V
    .locals 1

    .line 745
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput v0, p1, Lorg/ejml/data/FMatrix2;->a1:F

    .line 746
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iput p0, p1, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix2;F)V
    .locals 1

    .line 1091
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1092
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix2;FLorg/ejml/data/FMatrix2;)V
    .locals 1

    .line 1123
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1124
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix2x2;F)V
    .locals 1

    .line 1076
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 1077
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/FMatrix2x2;FLorg/ejml/data/FMatrix2x2;)V
    .locals 1

    .line 1107
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 1108
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    div-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static dot(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)F
    .locals 2

    .line 628
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 2

    .line 971
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 972
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 2

    .line 999
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1000
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 958
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 959
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    div-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 985
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 986
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    div-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/FMatrix2;)F
    .locals 2

    .line 779
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 780
    iget v1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    :cond_0
    return v0
.end method

.method public static elementMax(Lorg/ejml/data/FMatrix2x2;)F
    .locals 2

    .line 760
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 761
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 762
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 763
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    :cond_2
    return v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrix2;)F
    .locals 3

    .line 815
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 816
    iget v1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 817
    :cond_0
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/FMatrix2x2;)F
    .locals 3

    .line 796
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 797
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 798
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v0, v1

    .line 799
    :cond_1
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float v1, p0, v0

    if-lez v1, :cond_2

    move v0, p0

    :cond_2
    return v0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrix2;)F
    .locals 2

    .line 852
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 853
    iget v1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    :cond_0
    return v0
.end method

.method public static elementMin(Lorg/ejml/data/FMatrix2x2;)F
    .locals 2

    .line 833
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 834
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 835
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 836
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    :cond_2
    return v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrix2;)F
    .locals 3

    .line 888
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 889
    iget v1, p0, Lorg/ejml/data/FMatrix2;->a1:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 890
    :cond_0
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/FMatrix2x2;)F
    .locals 3

    .line 869
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 870
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v0, v1

    .line 871
    :cond_0
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    move v0, v1

    .line 872
    :cond_1
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_2

    move v0, p0

    :cond_2
    return v0
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 2

    .line 917
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 918
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 2

    .line 945
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 946
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 904
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 905
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 931
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 932
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/FMatrix2x2;ILorg/ejml/data/FMatrix2;)Lorg/ejml/data/FMatrix2;
    .locals 1

    if-nez p2, :cond_0

    .line 1219
    new-instance p2, Lorg/ejml/data/FMatrix2;

    invoke-direct {p2}, Lorg/ejml/data/FMatrix2;-><init>()V

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1226
    iget p1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iput p1, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1227
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    goto :goto_0

    .line 1230
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

    .line 1222
    :cond_2
    iget p1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput p1, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1223
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/FMatrix2x2;ILorg/ejml/data/FMatrix2;)Lorg/ejml/data/FMatrix2;
    .locals 1

    if-nez p2, :cond_0

    .line 1195
    new-instance p2, Lorg/ejml/data/FMatrix2;

    invoke-direct {p2}, Lorg/ejml/data/FMatrix2;-><init>()V

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1202
    iget p1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput p1, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1203
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    goto :goto_0

    .line 1206
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

    .line 1198
    :cond_2
    iget p1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput p1, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1199
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/FMatrix2;F)V
    .locals 0

    .line 1183
    iput p1, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1184
    iput p1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static fill(Lorg/ejml/data/FMatrix2x2;F)V
    .locals 0

    .line 1168
    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 1169
    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput p1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static invert(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)Z
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 654
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_FDF2;->elementMaxAbs(Lorg/ejml/data/FMatrix2x2;)F

    move-result v1

    div-float/2addr v0, v1

    .line 656
    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v0

    .line 657
    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v0

    .line 658
    iget v3, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v3, v0

    .line 659
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, v0

    neg-float v3, v3

    neg-float v4, v2

    mul-float v5, v1, p0

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    div-float/2addr v5, v0

    div-float/2addr p0, v5

    .line 668
    iput p0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    div-float/2addr v4, v5

    .line 669
    iput v4, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    div-float/2addr v3, v5

    .line 670
    iput v3, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    div-float/2addr v1, v5

    .line 671
    iput v1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    .line 673
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mult(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 255
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 258
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 259
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 260
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2;)V
    .locals 3

    .line 611
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 612
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 3

    .line 594
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 595
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static mult(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 233
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 236
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 237
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 238
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAdd(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 4

    .line 427
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 430
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 431
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 432
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 4

    .line 405
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 408
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 409
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 410
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAddOuter(FLorg/ejml/data/FMatrix2x2;FLorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 575
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 576
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 577
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, p0

    iget v1, p3, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr v1, p2

    iget v2, p4, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p5, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 578
    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    iget p1, p3, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr p2, p1

    iget p1, p4, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    iput p0, p5, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAddTransA(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 4

    .line 470
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 473
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 474
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 475
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 4

    .line 448
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 451
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 452
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 453
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAddTransAB(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 4

    .line 513
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 514
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 516
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 517
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 518
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 4

    .line 491
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 494
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 495
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 496
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAddTransB(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 4

    .line 556
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 559
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 560
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v3, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 561
    iget v0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 4

    .line 534
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 537
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 538
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v3, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 539
    iget v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multTransA(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 298
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 301
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 302
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 303
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 276
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 279
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 280
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 281
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multTransAB(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 341
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 344
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 345
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 346
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 319
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 322
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 323
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 324
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multTransB(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 384
    invoke-static {p1, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    invoke-static {p2, p3}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 387
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 388
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v2, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 389
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p2, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    mul-float/2addr p0, v0

    iput p0, p3, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 3

    .line 362
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 365
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 366
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 367
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix2;)V
    .locals 1

    .line 1029
    iget v0, p1, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1030
    iget v0, p1, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 1

    .line 1061
    iget v0, p1, Lorg/ejml/data/FMatrix2;->a1:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 1062
    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix2x2;)V
    .locals 1

    .line 1014
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 1015
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static scale(FLorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 1

    .line 1045
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 1046
    iget v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    mul-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 638
    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 639
    iput v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static subtract(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 2

    .line 148
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2;->a1:F

    .line 149
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static subtract(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 126
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 127
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 128
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 129
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;)V
    .locals 2

    .line 180
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    .line 181
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 163
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 164
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 165
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 166
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-void
.end method

.method public static trace(Lorg/ejml/data/FMatrix2x2;)F
    .locals 1

    .line 731
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    add-float/2addr v0, p0

    return v0
.end method

.method public static transpose(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;)Lorg/ejml/data/FMatrix2x2;
    .locals 1

    if-nez p0, :cond_0

    .line 209
    new-instance p0, Lorg/ejml/data/FMatrix2x2;

    invoke-direct {p0}, Lorg/ejml/data/FMatrix2x2;-><init>()V

    .line 211
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 213
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 214
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 215
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iput p0, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/FMatrix2x2;)V
    .locals 2

    .line 192
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iput v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iput v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    return-void
.end method

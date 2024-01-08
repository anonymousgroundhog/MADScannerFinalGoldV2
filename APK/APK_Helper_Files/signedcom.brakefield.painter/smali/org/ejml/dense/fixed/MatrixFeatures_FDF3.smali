.class public Lorg/ejml/dense/fixed/MatrixFeatures_FDF3;
.super Ljava/lang/Object;
.source "MatrixFeatures_FDF3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrix3;)Z
    .locals 2

    .line 77
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 79
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 81
    :cond_1
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrix3x3;)Z
    .locals 3

    .line 67
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 69
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 71
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    add-float/2addr v0, v2

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    add-float/2addr v0, p0

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrix3;F)Z
    .locals 3

    .line 57
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix3;->a1:F

    invoke-static {v0, v1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix3;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix3;->a2:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 61
    :cond_1
    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    iget p1, p1, Lorg/ejml/data/FMatrix3;->a3:F

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrix3x3;F)Z
    .locals 3

    .line 35
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    invoke-static {v0, v1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 43
    :cond_3
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 45
    :cond_4
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 47
    :cond_5
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 49
    :cond_6
    iget v0, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 51
    :cond_7
    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    iget p1, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result p0

    if-nez p0, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

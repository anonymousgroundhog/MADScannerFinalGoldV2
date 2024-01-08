.class public Lorg/ejml/dense/fixed/MatrixFeatures_FDF2;
.super Ljava/lang/Object;
.source "MatrixFeatures_FDF2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrix2;)Z
    .locals 2

    .line 63
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrix2x2;)Z
    .locals 2

    .line 55
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    add-float/2addr v0, p0

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrix2;F)Z
    .locals 2

    .line 47
    iget v0, p0, Lorg/ejml/data/FMatrix2;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix2;->a1:F

    invoke-static {v0, v1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    iget p1, p1, Lorg/ejml/data/FMatrix2;->a2:F

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrix2x2;F)Z
    .locals 3

    .line 35
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    invoke-static {v0, v1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    iget p1, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

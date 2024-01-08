.class public Lorg/ejml/ops/MatrixFeatures_F;
.super Ljava/lang/Object;
.source "MatrixFeatures_F.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEquals(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;)Z
    .locals 7

    .line 49
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 52
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    .line 53
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    .line 57
    invoke-interface {p0, v3, v4}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v5

    invoke-interface {p1, v3, v4}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v2
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;F)Z
    .locals 7

    .line 84
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_4

    .line 90
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    .line 91
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    .line 95
    invoke-interface {p0, v3, v4}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v5

    invoke-interface {p1, v3, v4}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v6

    invoke-static {v5, v6, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v5

    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 88
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tolerance must be greater than or equal to zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return v2
.end method

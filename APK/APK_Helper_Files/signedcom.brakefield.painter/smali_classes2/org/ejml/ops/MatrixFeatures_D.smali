.class public Lorg/ejml/ops/MatrixFeatures_D;
.super Ljava/lang/Object;
.source "MatrixFeatures_D.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEquals(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;)Z
    .locals 9

    .line 47
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    .line 51
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    .line 55
    invoke-interface {p0, v3, v4}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v5

    invoke-interface {p1, v3, v4}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v7

    cmpl-double v5, v5, v7

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

.method public static isIdentical(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;D)Z
    .locals 11

    .line 82
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_4

    .line 88
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    .line 89
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    .line 93
    invoke-interface {p0, v3, v4}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v5

    invoke-interface {p1, v3, v4}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v7

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

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

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tolerance must be greater than or equal to zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return v2
.end method

.class public Lorg/ejml/generic/GenericMatrixOps_F64;
.super Ljava/lang/Object;
.source "GenericMatrixOps_F64.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;)V
    .locals 7

    .line 105
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    .line 106
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_0

    .line 110
    invoke-interface {p0, v3, v4}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    invoke-interface {p1, v3, v4, v5, v6}, Lorg/ejml/data/DMatrix;->set(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isEquivalent(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;D)Z
    .locals 7

    .line 39
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

    :cond_0
    move v0, v2

    .line 42
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    if-ge v0, v1, :cond_3

    move v1, v2

    .line 43
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 44
    invoke-interface {p0, v0, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-interface {p1, v0, v1}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p2

    if-lez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v2
.end method

.method public static isEquivalentTriangle(ZLorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;D)Z
    .locals 7

    .line 78
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p2}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p2}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p0, :cond_3

    move p0, v2

    .line 82
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    if-ge p0, v0, :cond_6

    move v0, p0

    .line 83
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 84
    invoke-interface {p1, p0, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-interface {p2, p0, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v1, v3, p3

    if-lez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    move p0, v2

    .line 91
    :goto_2
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    if-ge p0, v0, :cond_6

    move v0, p0

    .line 92
    :goto_3
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 93
    invoke-interface {p1, v0, p0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-interface {p2, v0, p0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v1, v3, p3

    if-lez v1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_4
    return v2
.end method

.method public static isIdentity(Lorg/ejml/data/DMatrix;D)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 63
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 64
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ne v1, v2, :cond_0

    .line 66
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p1

    if-lez v3, :cond_1

    return v0

    .line 69
    :cond_0
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p1

    if-lez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static setRandom(Lorg/ejml/data/DMatrix;DDLjava/util/Random;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 116
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 117
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 118
    invoke-virtual {p5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    sub-double v5, p3, p1

    mul-double/2addr v3, v5

    add-double/2addr v3, p1

    .line 119
    invoke-interface {p0, v1, v2, v3, v4}, Lorg/ejml/data/DMatrix;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

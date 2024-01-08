.class public Lorg/ejml/generic/GenericMatrixOps_F32;
.super Ljava/lang/Object;
.source "GenericMatrixOps_F32.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;)V
    .locals 6

    .line 107
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    .line 108
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_0

    .line 112
    invoke-interface {p0, v3, v4}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Lorg/ejml/data/FMatrix;->set(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static isEquivalent(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;F)Z
    .locals 5

    .line 41
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

    :cond_0
    move v0, v2

    .line 44
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    if-ge v0, v1, :cond_3

    move v1, v2

    .line 45
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 46
    invoke-interface {p0, v0, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    invoke-interface {p1, v0, v1}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p2

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

.method public static isEquivalentTriangle(ZLorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;F)Z
    .locals 4

    .line 80
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p2}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p2}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p0, :cond_3

    move p0, v2

    .line 84
    :goto_0
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    if-ge p0, v0, :cond_6

    move v0, p0

    .line 85
    :goto_1
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 86
    invoke-interface {p1, p0, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v1

    invoke-interface {p2, p0, v0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p3

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

    .line 93
    :goto_2
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    if-ge p0, v0, :cond_6

    move v0, p0

    .line 94
    :goto_3
    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 95
    invoke-interface {p1, v0, p0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v1

    invoke-interface {p2, v0, p0}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p3

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

.method public static isIdentity(Lorg/ejml/data/FMatrix;F)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 65
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 66
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ne v1, v2, :cond_0

    .line 68
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_1

    return v0

    .line 71
    :cond_0
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/FMatrix;->get(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, p1

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

.method public static setRandom(Lorg/ejml/data/FMatrix;FFLjava/util/Random;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 118
    :goto_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 119
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 120
    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float v4, p2, p1

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    .line 121
    invoke-interface {p0, v1, v2, v3}, Lorg/ejml/data/FMatrix;->set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

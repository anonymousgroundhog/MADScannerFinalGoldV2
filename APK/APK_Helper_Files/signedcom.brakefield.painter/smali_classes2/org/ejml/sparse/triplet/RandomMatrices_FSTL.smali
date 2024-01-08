.class public Lorg/ejml/sparse/triplet/RandomMatrices_FSTL;
.super Ljava/lang/Object;
.source "RandomMatrices_FSTL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uniform(IIIFFLjava/util/Random;)Lorg/ejml/data/FMatrixSparseTriplet;
    .locals 7

    mul-int v0, p1, p0

    if-ltz v0, :cond_3

    .line 48
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 50
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 52
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, p2, :cond_1

    .line 56
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 57
    aget v5, v1, v4

    .line 58
    aget v6, v1, v3

    aput v6, v1, v4

    .line 59
    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 63
    :cond_1
    new-instance v0, Lorg/ejml/data/FMatrixSparseTriplet;

    invoke-direct {v0, p0, p1, p2}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>(III)V

    :goto_2
    if-ge v2, p2, :cond_2

    .line 66
    aget p0, v1, v2

    div-int v3, p0, p1

    .line 67
    rem-int/2addr p0, p1

    .line 69
    invoke-virtual {p5}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float v5, p4, p3

    mul-float/2addr v4, v5

    add-float/2addr v4, p3

    .line 71
    invoke-virtual {v0, v3, p0, v4}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0

    .line 47
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matrix size is too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

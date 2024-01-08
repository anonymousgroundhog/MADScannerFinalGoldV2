.class public Lorg/ejml/ops/FConvertArrays;
.super Ljava/lang/Object;
.source "FConvertArrays.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([[FLorg/ejml/data/FMatrix4;)Lorg/ejml/data/FMatrix4;
    .locals 7

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lorg/ejml/data/FMatrix4;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix4;-><init>()V

    .line 99
    :cond_0
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    .line 100
    aget-object v0, p0, v5

    array-length v3, v0

    if-eq v3, v4, :cond_1

    .line 102
    aget v0, v0, v5

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a1:F

    .line 103
    aget-object v0, p0, v4

    aget v0, v0, v5

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a2:F

    .line 104
    aget-object v0, p0, v2

    aget v0, v0, v5

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a3:F

    .line 105
    aget-object p0, p0, v1

    aget p0, p0, v5

    iput p0, p1, Lorg/ejml/data/FMatrix4;->a4:F

    goto :goto_0

    .line 101
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_2
    array-length v0, p0

    if-ne v0, v4, :cond_3

    aget-object v0, p0, v5

    array-length v6, v0

    if-ne v6, v3, :cond_3

    .line 107
    aget v0, v0, v5

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a1:F

    .line 108
    aget-object v0, p0, v5

    aget v0, v0, v4

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a2:F

    .line 109
    aget-object v0, p0, v5

    aget v0, v0, v2

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a3:F

    .line 110
    aget-object p0, p0, v5

    aget p0, p0, v1

    iput p0, p1, Lorg/ejml/data/FMatrix4;->a4:F

    :goto_0
    return-object p1

    .line 112
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected a 4x1 or 1x4 vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert([[FLorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    .line 35
    array-length v0, p0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 38
    aget-object v2, p0, v1

    array-length v2, v2

    .line 40
    invoke-static {v0, v2}, Lorg/ejml/UtilEjml;->checkTooLarge(II)V

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :goto_0
    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_2

    .line 49
    aget-object v5, p0, v3

    .line 51
    array-length v6, v5

    if-ne v6, v2, :cond_1

    .line 55
    iget-object v6, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v5, v1, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All rows must have the same length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p1

    .line 37
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Rows of src can\'t be zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

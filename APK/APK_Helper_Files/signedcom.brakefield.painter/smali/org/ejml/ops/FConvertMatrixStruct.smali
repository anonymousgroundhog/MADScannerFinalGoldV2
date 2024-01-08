.class public Lorg/ejml/ops/FConvertMatrixStruct;
.super Ljava/lang/Object;
.source "FConvertMatrixStruct.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix2;)Lorg/ejml/data/FMatrix2;
    .locals 3

    if-nez p1, :cond_0

    .line 558
    new-instance p1, Lorg/ejml/data/FMatrix2;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix2;-><init>()V

    .line 560
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 561
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 562
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 566
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p1, Lorg/ejml/data/FMatrix2;->a1:F

    .line 567
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget p0, p0, v1

    iput p0, p1, Lorg/ejml/data/FMatrix2;->a2:F

    return-object p1

    .line 564
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Length of input vector is not 2.  It is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix2x2;)Lorg/ejml/data/FMatrix2x2;
    .locals 2

    if-nez p1, :cond_0

    .line 243
    new-instance p1, Lorg/ejml/data/FMatrix2x2;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix2x2;-><init>()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix2x2;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 247
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix2x2;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 250
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a11:F

    .line 251
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a12:F

    .line 252
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix2x2;->a21:F

    .line 253
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x3

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix2x2;->a22:F

    return-object p1

    .line 248
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix3;)Lorg/ejml/data/FMatrix3;
    .locals 3

    if-nez p1, :cond_0

    .line 581
    new-instance p1, Lorg/ejml/data/FMatrix3;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix3;-><init>()V

    .line 583
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 584
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 585
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 589
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p1, Lorg/ejml/data/FMatrix3;->a1:F

    .line 590
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3;->a2:F

    .line 591
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix3;->a3:F

    return-object p1

    .line 587
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Length of input vector is not 3.  It is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix3x3;)Lorg/ejml/data/FMatrix3x3;
    .locals 2

    if-nez p1, :cond_0

    .line 267
    new-instance p1, Lorg/ejml/data/FMatrix3x3;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix3x3;-><init>()V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix3x3;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 271
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix3x3;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 274
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a11:F

    .line 275
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a12:F

    .line 276
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a13:F

    .line 277
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a21:F

    .line 278
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a22:F

    .line 279
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a23:F

    .line 280
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a31:F

    .line 281
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix3x3;->a32:F

    .line 282
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v0, 0x8

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix3x3;->a33:F

    return-object p1

    .line 272
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 270
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix4;)Lorg/ejml/data/FMatrix4;
    .locals 3

    if-nez p1, :cond_0

    .line 605
    new-instance p1, Lorg/ejml/data/FMatrix4;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix4;-><init>()V

    .line 607
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 608
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 609
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 613
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a1:F

    .line 614
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a2:F

    .line 615
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4;->a3:F

    .line 616
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x3

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix4;->a4:F

    return-object p1

    .line 611
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Length of input vector is not 4.  It is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix4x4;)Lorg/ejml/data/FMatrix4x4;
    .locals 2

    if-nez p1, :cond_0

    .line 296
    new-instance p1, Lorg/ejml/data/FMatrix4x4;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix4x4;-><init>()V

    .line 298
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix4x4;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 300
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix4x4;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a11:F

    .line 304
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a12:F

    .line 305
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a13:F

    .line 306
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a14:F

    .line 307
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a21:F

    .line 308
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a22:F

    .line 309
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a23:F

    .line 310
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a24:F

    .line 311
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a31:F

    .line 312
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a32:F

    .line 313
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xa

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a33:F

    .line 314
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xb

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a34:F

    .line 315
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a41:F

    .line 316
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a42:F

    .line 317
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix4x4;->a43:F

    .line 318
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v0, 0xf

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix4x4;->a44:F

    return-object p1

    .line 301
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix5;)Lorg/ejml/data/FMatrix5;
    .locals 3

    if-nez p1, :cond_0

    .line 630
    new-instance p1, Lorg/ejml/data/FMatrix5;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix5;-><init>()V

    .line 632
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 633
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 634
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 638
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p1, Lorg/ejml/data/FMatrix5;->a1:F

    .line 639
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5;->a2:F

    .line 640
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5;->a3:F

    .line 641
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5;->a4:F

    .line 642
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x4

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix5;->a5:F

    return-object p1

    .line 636
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Length of input vector is not 5.  It is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix5x5;)Lorg/ejml/data/FMatrix5x5;
    .locals 2

    if-nez p1, :cond_0

    .line 332
    new-instance p1, Lorg/ejml/data/FMatrix5x5;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix5x5;-><init>()V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix5x5;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 336
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix5x5;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 339
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a11:F

    .line 340
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a12:F

    .line 341
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a13:F

    .line 342
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a14:F

    .line 343
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a15:F

    .line 344
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a21:F

    .line 345
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a22:F

    .line 346
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a23:F

    .line 347
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a24:F

    .line 348
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a25:F

    .line 349
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xa

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a31:F

    .line 350
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xb

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a32:F

    .line 351
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a33:F

    .line 352
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a34:F

    .line 353
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a35:F

    .line 354
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xf

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a41:F

    .line 355
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x10

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a42:F

    .line 356
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x11

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a43:F

    .line 357
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x12

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a44:F

    .line 358
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x13

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a45:F

    .line 359
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x14

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a51:F

    .line 360
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x15

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a52:F

    .line 361
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x16

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a53:F

    .line 362
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x17

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix5x5;->a54:F

    .line 363
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v0, 0x18

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix5x5;->a55:F

    return-object p1

    .line 337
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 335
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix6;)Lorg/ejml/data/FMatrix6;
    .locals 3

    if-nez p1, :cond_0

    .line 656
    new-instance p1, Lorg/ejml/data/FMatrix6;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix6;-><init>()V

    .line 658
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 659
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 660
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 664
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a1:F

    .line 665
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a2:F

    .line 666
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a3:F

    .line 667
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a4:F

    .line 668
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6;->a5:F

    .line 669
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x5

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix6;->a6:F

    return-object p1

    .line 662
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Length of input vector is not 6.  It is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrix6x6;)Lorg/ejml/data/FMatrix6x6;
    .locals 2

    if-nez p1, :cond_0

    .line 377
    new-instance p1, Lorg/ejml/data/FMatrix6x6;

    invoke-direct {p1}, Lorg/ejml/data/FMatrix6x6;-><init>()V

    .line 379
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix6x6;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 381
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/FMatrix6x6;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 384
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    .line 385
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    .line 386
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    .line 387
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    .line 388
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    .line 389
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    .line 390
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    .line 391
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    .line 392
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    .line 393
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    .line 394
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xa

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    .line 395
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xb

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    .line 396
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    .line 397
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xd

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    .line 398
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xe

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    .line 399
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xf

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    .line 400
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x10

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    .line 401
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x11

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    .line 402
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x12

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    .line 403
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x13

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    .line 404
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x14

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    .line 405
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x15

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    .line 406
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x16

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    .line 407
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x17

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    .line 408
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x18

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    .line 409
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x19

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    .line 410
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1a

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    .line 411
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1b

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    .line 412
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1c

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    .line 413
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1d

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    .line 414
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1e

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    .line 415
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1f

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    .line 416
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x20

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    .line 417
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x21

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    .line 418
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x22

    aget v0, v0, v1

    iput v0, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    .line 419
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v0, 0x23

    aget p0, p0, v0

    iput p0, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    return-object p1

    .line 382
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrix2;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 433
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 435
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 436
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 437
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 441
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix2;->a1:F

    aput v3, v0, v2

    .line 442
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget p0, p0, Lorg/ejml/data/FMatrix2;->a2:F

    aput p0, v0, v1

    return-object p1

    .line 439
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length of input vector is not 2.  It is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrix2x2;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 68
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrix2x2;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/FMatrix2x2;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 72
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix2x2;->a11:F

    aput v3, v1, v2

    .line 73
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x1

    iget v3, p0, Lorg/ejml/data/FMatrix2x2;->a12:F

    aput v3, v1, v2

    .line 74
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix2x2;->a21:F

    aput v2, v1, v0

    .line 75
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    iget p0, p0, Lorg/ejml/data/FMatrix2x2;->a22:F

    aput p0, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrix3;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 456
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 458
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 459
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 460
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 464
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix3;->a1:F

    aput v3, v0, v2

    .line 465
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix3;->a2:F

    aput v2, v0, v1

    .line 466
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    iget p0, p0, Lorg/ejml/data/FMatrix3;->a3:F

    aput p0, v0, v1

    return-object p1

    .line 462
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length of input vector is not 3.  It is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrix3x3;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrix3x3;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/FMatrix3x3;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 93
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a11:F

    aput v3, v1, v2

    .line 94
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x1

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a12:F

    aput v3, v1, v2

    .line 95
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x2

    iget v3, p0, Lorg/ejml/data/FMatrix3x3;->a13:F

    aput v3, v1, v2

    .line 96
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a21:F

    aput v2, v1, v0

    .line 97
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x4

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a22:F

    aput v2, v0, v1

    .line 98
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x5

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a23:F

    aput v2, v0, v1

    .line 99
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x6

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a31:F

    aput v2, v0, v1

    .line 100
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x7

    iget v2, p0, Lorg/ejml/data/FMatrix3x3;->a32:F

    aput v2, v0, v1

    .line 101
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x8

    iget p0, p0, Lorg/ejml/data/FMatrix3x3;->a33:F

    aput p0, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrix4;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 480
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 482
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 483
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 488
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix4;->a1:F

    aput v3, v0, v2

    .line 489
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix4;->a2:F

    aput v2, v0, v1

    .line 490
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    iget v2, p0, Lorg/ejml/data/FMatrix4;->a3:F

    aput v2, v0, v1

    .line 491
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    iget p0, p0, Lorg/ejml/data/FMatrix4;->a4:F

    aput p0, v0, v1

    return-object p1

    .line 486
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length of input vector is not 4.  It is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrix4x4;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 115
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrix4x4;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/FMatrix4x4;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 119
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a11:F

    aput v3, v1, v2

    .line 120
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x1

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a12:F

    aput v3, v1, v2

    .line 121
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x2

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a13:F

    aput v3, v1, v2

    .line 122
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x3

    iget v3, p0, Lorg/ejml/data/FMatrix4x4;->a14:F

    aput v3, v1, v2

    .line 123
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a21:F

    aput v2, v1, v0

    .line 124
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x5

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a22:F

    aput v2, v0, v1

    .line 125
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x6

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a23:F

    aput v2, v0, v1

    .line 126
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x7

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a24:F

    aput v2, v0, v1

    .line 127
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x8

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a31:F

    aput v2, v0, v1

    .line 128
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x9

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a32:F

    aput v2, v0, v1

    .line 129
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xa

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a33:F

    aput v2, v0, v1

    .line 130
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xb

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a34:F

    aput v2, v0, v1

    .line 131
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xc

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a41:F

    aput v2, v0, v1

    .line 132
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xd

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a42:F

    aput v2, v0, v1

    .line 133
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xe

    iget v2, p0, Lorg/ejml/data/FMatrix4x4;->a43:F

    aput v2, v0, v1

    .line 134
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xf

    iget p0, p0, Lorg/ejml/data/FMatrix4x4;->a44:F

    aput p0, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrix5;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 505
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 507
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 509
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 513
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix5;->a1:F

    aput v3, v0, v2

    .line 514
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix5;->a2:F

    aput v2, v0, v1

    .line 515
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    iget v2, p0, Lorg/ejml/data/FMatrix5;->a3:F

    aput v2, v0, v1

    .line 516
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    iget v2, p0, Lorg/ejml/data/FMatrix5;->a4:F

    aput v2, v0, v1

    .line 517
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x4

    iget p0, p0, Lorg/ejml/data/FMatrix5;->a5:F

    aput p0, v0, v1

    return-object p1

    .line 511
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length of input vector is not 5.  It is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrix5x5;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 148
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrix5x5;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/FMatrix5x5;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 152
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    aput v3, v1, v2

    .line 153
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x1

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    aput v3, v1, v2

    .line 154
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x2

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    aput v3, v1, v2

    .line 155
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x3

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    aput v3, v1, v2

    .line 156
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x4

    iget v3, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    aput v3, v1, v2

    .line 157
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    aput v2, v1, v0

    .line 158
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x6

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    aput v2, v0, v1

    .line 159
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x7

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    aput v2, v0, v1

    .line 160
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x8

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    aput v2, v0, v1

    .line 161
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x9

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    aput v2, v0, v1

    .line 162
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xa

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    aput v2, v0, v1

    .line 163
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xb

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    aput v2, v0, v1

    .line 164
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xc

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    aput v2, v0, v1

    .line 165
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xd

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    aput v2, v0, v1

    .line 166
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xe

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    aput v2, v0, v1

    .line 167
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xf

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    aput v2, v0, v1

    .line 168
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x10

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    aput v2, v0, v1

    .line 169
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x11

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    aput v2, v0, v1

    .line 170
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x12

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    aput v2, v0, v1

    .line 171
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x13

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    aput v2, v0, v1

    .line 172
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x14

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    aput v2, v0, v1

    .line 173
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x15

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    aput v2, v0, v1

    .line 174
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x16

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    aput v2, v0, v1

    .line 175
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x17

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    aput v2, v0, v1

    .line 176
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x18

    iget p0, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    aput p0, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 531
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 533
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 534
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 535
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 539
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix6;->a1:F

    aput v3, v0, v2

    .line 540
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a2:F

    aput v2, v0, v1

    .line 541
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x2

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a3:F

    aput v2, v0, v1

    .line 542
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x3

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a4:F

    aput v2, v0, v1

    .line 543
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x4

    iget v2, p0, Lorg/ejml/data/FMatrix6;->a5:F

    aput v2, v0, v1

    .line 544
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x5

    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    aput p0, v0, v1

    return-object p1

    .line 537
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length of input vector is not 6.  It is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    const/4 v0, 0x6

    if-nez p1, :cond_0

    .line 190
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/FMatrix6x6;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/FMatrix6x6;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 194
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    aput v3, v1, v2

    .line 195
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x1

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    aput v3, v1, v2

    .line 196
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x2

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    aput v3, v1, v2

    .line 197
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x3

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    aput v3, v1, v2

    .line 198
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x4

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    aput v3, v1, v2

    .line 199
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v2, 0x5

    iget v3, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    aput v3, v1, v2

    .line 200
    iget-object v1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    aput v2, v1, v0

    .line 201
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x7

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    aput v2, v0, v1

    .line 202
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x8

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    aput v2, v0, v1

    .line 203
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x9

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    aput v2, v0, v1

    .line 204
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xa

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    aput v2, v0, v1

    .line 205
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xb

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    aput v2, v0, v1

    .line 206
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xc

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    aput v2, v0, v1

    .line 207
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xd

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    aput v2, v0, v1

    .line 208
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xe

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    aput v2, v0, v1

    .line 209
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0xf

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    aput v2, v0, v1

    .line 210
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x10

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    aput v2, v0, v1

    .line 211
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x11

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    aput v2, v0, v1

    .line 212
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x12

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    aput v2, v0, v1

    .line 213
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x13

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    aput v2, v0, v1

    .line 214
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x14

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    aput v2, v0, v1

    .line 215
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x15

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    aput v2, v0, v1

    .line 216
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x16

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    aput v2, v0, v1

    .line 217
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x17

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    aput v2, v0, v1

    .line 218
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x18

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    aput v2, v0, v1

    .line 219
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x19

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    aput v2, v0, v1

    .line 220
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1a

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    aput v2, v0, v1

    .line 221
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1b

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    aput v2, v0, v1

    .line 222
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1c

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    aput v2, v0, v1

    .line 223
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1d

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    aput v2, v0, v1

    .line 224
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1e

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    aput v2, v0, v1

    .line 225
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x1f

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    aput v2, v0, v1

    .line 226
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x20

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    aput v2, v0, v1

    .line 227
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x21

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    aput v2, v0, v1

    .line 228
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x22

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    aput v2, v0, v1

    .line 229
    iget-object v0, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/16 v1, 0x23

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    aput p0, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrixRBlock;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 10

    if-eqz p1, :cond_0

    .line 713
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRBlock;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRBlock;->getNumCols()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    goto :goto_0

    .line 715
    :cond_0
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v0, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 718
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_3

    .line 719
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v3, p0, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v0

    .line 721
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v3, v4, :cond_2

    .line 722
    iget v4, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 724
    iget v5, p0, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v5, v1

    mul-int v6, v2, v3

    add-int/2addr v5, v6

    .line 725
    iget v6, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    move v7, v0

    :goto_3
    if-ge v7, v2, :cond_1

    .line 728
    iget-object v8, p0, Lorg/ejml/data/FMatrixRBlock;->data:[F

    iget-object v9, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    invoke-static {v8, v5, v9, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v4

    .line 730
    iget v8, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 721
    :cond_1
    iget v4, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/2addr v3, v4

    goto :goto_2

    .line 718
    :cond_2
    iget v2, p0, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    if-nez p1, :cond_0

    .line 794
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 796
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 797
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    .line 800
    :goto_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    .line 801
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-gt v1, v2, :cond_2

    .line 802
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    :goto_2
    if-ge v0, v2, :cond_1

    .line 805
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    .line 806
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v4, v4, v0

    add-int/lit8 v5, v1, -0x1

    .line 808
    invoke-virtual {p1, v3, v5, v4}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    if-nez p1, :cond_0

    .line 775
    new-instance p1, Lorg/ejml/data/FMatrixRMaj;

    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 777
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 778
    invoke-virtual {p1}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    :goto_0
    const/4 v0, 0x0

    .line 781
    :goto_1
    iget v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 782
    iget-object v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    .line 783
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v3, v3, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    .line 784
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v3, v3, Lorg/ejml/data/FGrowArray;->data:[F

    aget v3, v3, v0

    .line 786
    invoke-virtual {p1, v1, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;F)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 6

    .line 825
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 827
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 831
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p1, v0, v2, v3}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixSparseCSC;III)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    .line 832
    iput v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    .line 834
    iget-object v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aput v1, v0, v1

    move v0, v1

    .line 835
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 836
    :goto_2
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_3

    .line 837
    iget-object v3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    aget v3, v3, v4

    .line 838
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_2

    goto :goto_3

    .line 841
    :cond_2
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    iget v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v2, v4, v5

    .line 842
    iget-object v4, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget v5, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, v4, v5

    .line 843
    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 845
    :cond_3
    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    iget v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v3, v2, v0

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    const/4 v0, 0x0

    .line 890
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixSparseTriplet;Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 7

    .line 861
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/FMatrixSparseCSC;III)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    .line 863
    iget v0, p0, Lorg/ejml/data/FMatrixSparseTriplet;->numCols:I

    invoke-static {p2, v0}, Lorg/ejml/UtilEjml;->adjustClear(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 866
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    if-ge v1, v2, :cond_0

    .line 867
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    aget v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;->histogramToStructure([I)V

    .line 872
    iget-object v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {v1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    .line 875
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_length:I

    if-ge v1, v2, :cond_1

    .line 876
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    .line 877
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v4, v4, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v4, v3

    .line 878
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseTriplet;->nz_value:Lorg/ejml/data/FGrowArray;

    iget-object v4, v4, Lorg/ejml/data/FGrowArray;->data:[F

    aget v4, v4, v1

    .line 880
    aget v5, p2, v3

    add-int/lit8 v6, v5, 0x1

    aput v6, p2, v3

    .line 881
    iget-object v3, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v2, v3, v5

    .line 882
    iget-object v2, p1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aput v4, v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 884
    :cond_1
    iput-boolean v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->indicesSorted:Z

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrixSparseTriplet;F)Lorg/ejml/data/FMatrixSparseTriplet;
    .locals 5

    if-nez p1, :cond_0

    .line 740
    new-instance p1, Lorg/ejml/data/FMatrixSparseTriplet;

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>(III)V

    goto :goto_0

    .line 742
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixSparseTriplet;->reshape(II)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 744
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 745
    :goto_2
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 746
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v3

    .line 747
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    .line 748
    invoke-virtual {p1, v1, v2, v3}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseTriplet;F)Lorg/ejml/data/FMatrixSparseTriplet;
    .locals 6

    if-nez p1, :cond_0

    .line 757
    new-instance p1, Lorg/ejml/data/FMatrixSparseTriplet;

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v2, v3

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>(III)V

    goto :goto_0

    .line 759
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixSparseTriplet;->reshape(II)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 762
    :goto_1
    iget v3, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_3

    move v3, v0

    .line 763
    :goto_2
    iget v4, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_2

    .line 764
    iget-object v4, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    .line 765
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    .line 766
    invoke-virtual {p1, v1, v3, v2}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseTriplet;)Lorg/ejml/data/FMatrixSparseTriplet;
    .locals 6

    if-nez p1, :cond_0

    .line 895
    new-instance p1, Lorg/ejml/data/FMatrixSparseTriplet;

    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseTriplet;-><init>(III)V

    goto :goto_0

    .line 897
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/FMatrixSparseTriplet;->reshape(II)V

    .line 899
    :goto_0
    iget-object v0, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 900
    :goto_1
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    if-ge v1, v2, :cond_2

    .line 901
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    :goto_2
    if-ge v0, v2, :cond_1

    .line 904
    iget-object v4, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v0

    .line 905
    iget-object v5, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v5, v5, v0

    invoke-virtual {p1, v4, v1, v5}, Lorg/ejml/data/FMatrixSparseTriplet;->addItem(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;)V
    .locals 4

    .line 43
    instance-of v0, p1, Lorg/ejml/data/ReshapeMatrix;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/ejml/data/ReshapeMatrix;

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/ejml/data/ReshapeMatrix;->reshape(II)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 48
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_3

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 52
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 53
    :goto_2
    invoke-interface {p0}, Lorg/ejml/data/FMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 54
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/FMatrix;->unsafe_get(II)F

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lorg/ejml/data/FMatrix;->unsafe_set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 49
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRBlock;)V
    .locals 10

    .line 683
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 686
    :goto_0
    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_2

    .line 687
    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v3, p1, Lorg/ejml/data/FMatrixRBlock;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v0

    .line 689
    :goto_1
    iget v4, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    if-ge v3, v4, :cond_1

    .line 690
    iget v4, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 692
    iget v5, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v5, v1

    mul-int v6, v2, v3

    add-int/2addr v5, v6

    .line 693
    iget v6, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    move v7, v0

    :goto_2
    if-ge v7, v2, :cond_0

    .line 696
    iget-object v8, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v9, p1, Lorg/ejml/data/FMatrixRBlock;->data:[F

    invoke-static {v8, v6, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v4

    .line 698
    iget v8, p1, Lorg/ejml/data/FMatrixRBlock;->numCols:I

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 689
    :cond_0
    iget v4, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 686
    :cond_1
    iget v2, p1, Lorg/ejml/data/FMatrixRBlock;->blockLength:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return-void

    .line 684
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be the same size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

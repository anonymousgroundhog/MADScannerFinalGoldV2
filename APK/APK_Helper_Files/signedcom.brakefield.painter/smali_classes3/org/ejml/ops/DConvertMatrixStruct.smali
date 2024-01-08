.class public Lorg/ejml/ops/DConvertMatrixStruct;
.super Ljava/lang/Object;
.source "DConvertMatrixStruct.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix2;)Lorg/ejml/data/DMatrix2;
    .locals 4

    if-nez p1, :cond_0

    .line 556
    new-instance p1, Lorg/ejml/data/DMatrix2;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix2;-><init>()V

    .line 558
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 559
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 560
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 564
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    .line 565
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, p0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2;->a2:D

    return-object p1

    .line 562
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

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix2x2;)Lorg/ejml/data/DMatrix2x2;
    .locals 2

    if-nez p1, :cond_0

    .line 241
    new-instance p1, Lorg/ejml/data/DMatrix2x2;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix2x2;-><init>()V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix2x2;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 245
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix2x2;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 249
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 250
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 251
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v0, 0x3

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-object p1

    .line 246
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix3;)Lorg/ejml/data/DMatrix3;
    .locals 4

    if-nez p1, :cond_0

    .line 579
    new-instance p1, Lorg/ejml/data/DMatrix3;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix3;-><init>()V

    .line 581
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 583
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 587
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    .line 588
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3;->a2:D

    .line 589
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    return-object p1

    .line 585
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

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix3x3;)Lorg/ejml/data/DMatrix3x3;
    .locals 2

    if-nez p1, :cond_0

    .line 265
    new-instance p1, Lorg/ejml/data/DMatrix3x3;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix3x3;-><init>()V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix3x3;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 269
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix3x3;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 272
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 273
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 274
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 275
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 276
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 277
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 278
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 279
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 280
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v0, 0x8

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-object p1

    .line 270
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix4;)Lorg/ejml/data/DMatrix4;
    .locals 4

    if-nez p1, :cond_0

    .line 603
    new-instance p1, Lorg/ejml/data/DMatrix4;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix4;-><init>()V

    .line 605
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 606
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 607
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 611
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix4;->a1:D

    .line 612
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4;->a2:D

    .line 613
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4;->a3:D

    .line 614
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v0, 0x3

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4;->a4:D

    return-object p1

    .line 609
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

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix4x4;)Lorg/ejml/data/DMatrix4x4;
    .locals 2

    if-nez p1, :cond_0

    .line 294
    new-instance p1, Lorg/ejml/data/DMatrix4x4;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix4x4;-><init>()V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix4x4;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 298
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix4x4;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a11:D

    .line 302
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a12:D

    .line 303
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a13:D

    .line 304
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a14:D

    .line 305
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a21:D

    .line 306
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a22:D

    .line 307
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a23:D

    .line 308
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a24:D

    .line 309
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a31:D

    .line 310
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x9

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a32:D

    .line 311
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xa

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a33:D

    .line 312
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xb

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a34:D

    .line 313
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xc

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a41:D

    .line 314
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xd

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a42:D

    .line 315
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xe

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a43:D

    .line 316
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v0, 0xf

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix4x4;->a44:D

    return-object p1

    .line 299
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix5;)Lorg/ejml/data/DMatrix5;
    .locals 4

    if-nez p1, :cond_0

    .line 628
    new-instance p1, Lorg/ejml/data/DMatrix5;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix5;-><init>()V

    .line 630
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 631
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 636
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    .line 637
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a2:D

    .line 638
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a3:D

    .line 639
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a4:D

    .line 640
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v0, 0x4

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5;->a5:D

    return-object p1

    .line 634
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

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix5x5;)Lorg/ejml/data/DMatrix5x5;
    .locals 2

    if-nez p1, :cond_0

    .line 330
    new-instance p1, Lorg/ejml/data/DMatrix5x5;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix5x5;-><init>()V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix5x5;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 334
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix5x5;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 337
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    .line 338
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    .line 339
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    .line 340
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    .line 341
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    .line 342
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    .line 343
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    .line 344
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    .line 345
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    .line 346
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x9

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    .line 347
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xa

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    .line 348
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xb

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    .line 349
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xc

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    .line 350
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xd

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    .line 351
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xe

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    .line 352
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xf

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    .line 353
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x10

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    .line 354
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x11

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    .line 355
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x12

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    .line 356
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x13

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    .line 357
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x14

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    .line 358
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x15

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    .line 359
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x16

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    .line 360
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x17

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    .line 361
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v0, 0x18

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    return-object p1

    .line 335
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix6;)Lorg/ejml/data/DMatrix6;
    .locals 4

    if-nez p1, :cond_0

    .line 654
    new-instance p1, Lorg/ejml/data/DMatrix6;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix6;-><init>()V

    .line 656
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 657
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 658
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 662
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    .line 663
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a2:D

    .line 664
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a3:D

    .line 665
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a4:D

    .line 666
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a5:D

    .line 667
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v0, 0x5

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6;->a6:D

    return-object p1

    .line 660
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

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrix6x6;)Lorg/ejml/data/DMatrix6x6;
    .locals 2

    if-nez p1, :cond_0

    .line 375
    new-instance p1, Lorg/ejml/data/DMatrix6x6;

    invoke-direct {p1}, Lorg/ejml/data/DMatrix6x6;-><init>()V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix6x6;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 379
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v0

    invoke-virtual {p1}, Lorg/ejml/data/DMatrix6x6;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 382
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    .line 383
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    .line 384
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    .line 385
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    .line 386
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    .line 387
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    .line 388
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    .line 389
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    .line 390
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    .line 391
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x9

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    .line 392
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xa

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    .line 393
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xb

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    .line 394
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xc

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    .line 395
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xd

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    .line 396
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xe

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    .line 397
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xf

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    .line 398
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x10

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    .line 399
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x11

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    .line 400
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x12

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    .line 401
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x13

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    .line 402
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x14

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    .line 403
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x15

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    .line 404
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x16

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    .line 405
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x17

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    .line 406
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x18

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    .line 407
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x19

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    .line 408
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1a

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    .line 409
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1b

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    .line 410
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1c

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    .line 411
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1d

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    .line 412
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1e

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    .line 413
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1f

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    .line 414
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x20

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    .line 415
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x21

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    .line 416
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x22

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    .line 417
    iget-object p0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v0, 0x23

    aget-wide v0, p0, v0

    iput-wide v0, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    return-object p1

    .line 380
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 378
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 431
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 433
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 434
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 439
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix2;->a1:D

    aput-wide v3, v0, v2

    .line 440
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    aput-wide v2, v0, v1

    return-object p1

    .line 437
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

.method public static convert(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrix2x2;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/DMatrix2x2;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 70
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    aput-wide v3, v1, v2

    .line 71
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    aput-wide v3, v1, v2

    .line 72
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    aput-wide v2, v1, v0

    .line 73
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    aput-wide v2, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 454
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 456
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 457
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 458
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 462
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix3;->a1:D

    aput-wide v3, v0, v2

    .line 463
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    aput-wide v2, v0, v1

    .line 464
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    aput-wide v2, v0, v1

    return-object p1

    .line 460
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

.method public static convert(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrix3x3;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/DMatrix3x3;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 91
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    aput-wide v3, v1, v2

    .line 92
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    aput-wide v3, v1, v2

    .line 93
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x2

    iget-wide v3, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    aput-wide v3, v1, v2

    .line 94
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    aput-wide v2, v1, v0

    .line 95
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x4

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    aput-wide v2, v0, v1

    .line 96
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    aput-wide v2, v0, v1

    .line 97
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x6

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    aput-wide v2, v0, v1

    .line 98
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x7

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    aput-wide v2, v0, v1

    .line 99
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x8

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    aput-wide v2, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrix4;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 478
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 480
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 481
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 482
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 486
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix4;->a1:D

    aput-wide v3, v0, v2

    .line 487
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a2:D

    aput-wide v2, v0, v1

    .line 488
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a3:D

    aput-wide v2, v0, v1

    .line 489
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4;->a4:D

    aput-wide v2, v0, v1

    return-object p1

    .line 484
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

.method public static convert(Lorg/ejml/data/DMatrix4x4;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 113
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrix4x4;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/DMatrix4x4;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 117
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix4x4;->a11:D

    aput-wide v3, v1, v2

    .line 118
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/ejml/data/DMatrix4x4;->a12:D

    aput-wide v3, v1, v2

    .line 119
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x2

    iget-wide v3, p0, Lorg/ejml/data/DMatrix4x4;->a13:D

    aput-wide v3, v1, v2

    .line 120
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/ejml/data/DMatrix4x4;->a14:D

    aput-wide v3, v1, v2

    .line 121
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a21:D

    aput-wide v2, v1, v0

    .line 122
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a22:D

    aput-wide v2, v0, v1

    .line 123
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x6

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a23:D

    aput-wide v2, v0, v1

    .line 124
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x7

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a24:D

    aput-wide v2, v0, v1

    .line 125
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x8

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a31:D

    aput-wide v2, v0, v1

    .line 126
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x9

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a32:D

    aput-wide v2, v0, v1

    .line 127
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xa

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a33:D

    aput-wide v2, v0, v1

    .line 128
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xb

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a34:D

    aput-wide v2, v0, v1

    .line 129
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xc

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a41:D

    aput-wide v2, v0, v1

    .line 130
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a42:D

    aput-wide v2, v0, v1

    .line 131
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xe

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a43:D

    aput-wide v2, v0, v1

    .line 132
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xf

    iget-wide v2, p0, Lorg/ejml/data/DMatrix4x4;->a44:D

    aput-wide v2, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 503
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 505
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 506
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 507
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 511
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix5;->a1:D

    aput-wide v3, v0, v2

    .line 512
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    aput-wide v2, v0, v1

    .line 513
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    aput-wide v2, v0, v1

    .line 514
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    aput-wide v2, v0, v1

    .line 515
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x4

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    aput-wide v2, v0, v1

    return-object p1

    .line 509
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

.method public static convert(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 146
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrix5x5;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/DMatrix5x5;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 150
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    aput-wide v3, v1, v2

    .line 151
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    aput-wide v3, v1, v2

    .line 152
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x2

    iget-wide v3, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    aput-wide v3, v1, v2

    .line 153
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    aput-wide v3, v1, v2

    .line 154
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x4

    iget-wide v3, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    aput-wide v3, v1, v2

    .line 155
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    aput-wide v2, v1, v0

    .line 156
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x6

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    aput-wide v2, v0, v1

    .line 157
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x7

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    aput-wide v2, v0, v1

    .line 158
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x8

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    aput-wide v2, v0, v1

    .line 159
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x9

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    aput-wide v2, v0, v1

    .line 160
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xa

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    aput-wide v2, v0, v1

    .line 161
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xb

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    aput-wide v2, v0, v1

    .line 162
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xc

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    aput-wide v2, v0, v1

    .line 163
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    aput-wide v2, v0, v1

    .line 164
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xe

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    aput-wide v2, v0, v1

    .line 165
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xf

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    aput-wide v2, v0, v1

    .line 166
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x10

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    aput-wide v2, v0, v1

    .line 167
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x11

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    aput-wide v2, v0, v1

    .line 168
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x12

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    aput-wide v2, v0, v1

    .line 169
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x13

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    aput-wide v2, v0, v1

    .line 170
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x14

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    aput-wide v2, v0, v1

    .line 171
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x15

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    aput-wide v2, v0, v1

    .line 172
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x16

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    aput-wide v2, v0, v1

    .line 173
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x17

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    aput-wide v2, v0, v1

    .line 174
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x18

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    aput-wide v2, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 529
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 531
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 532
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One row or column must have a length of 1 for it to be a vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 533
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumRows()I

    move-result v2

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->getNumCols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 537
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix6;->a1:D

    aput-wide v3, v0, v2

    .line 538
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    aput-wide v2, v0, v1

    .line 539
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    aput-wide v2, v0, v1

    .line 540
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    aput-wide v2, v0, v1

    .line 541
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x4

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    aput-wide v2, v0, v1

    .line 542
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    aput-wide v2, v0, v1

    return-object p1

    .line 535
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

.method public static convert(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    const/4 v0, 0x6

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p1, v0, v0}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/DMatrix6x6;->getNumRows()I

    move-result v1

    invoke-virtual {p0}, Lorg/ejml/data/DMatrix6x6;->getNumCols()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 192
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x0

    iget-wide v3, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    aput-wide v3, v1, v2

    .line 193
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x1

    iget-wide v3, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    aput-wide v3, v1, v2

    .line 194
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x2

    iget-wide v3, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    aput-wide v3, v1, v2

    .line 195
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    aput-wide v3, v1, v2

    .line 196
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x4

    iget-wide v3, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    aput-wide v3, v1, v2

    .line 197
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v2, 0x5

    iget-wide v3, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    aput-wide v3, v1, v2

    .line 198
    iget-object v1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    aput-wide v2, v1, v0

    .line 199
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x7

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    aput-wide v2, v0, v1

    .line 200
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x8

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    aput-wide v2, v0, v1

    .line 201
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x9

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    aput-wide v2, v0, v1

    .line 202
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xa

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    aput-wide v2, v0, v1

    .line 203
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xb

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    aput-wide v2, v0, v1

    .line 204
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xc

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    aput-wide v2, v0, v1

    .line 205
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    aput-wide v2, v0, v1

    .line 206
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xe

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    aput-wide v2, v0, v1

    .line 207
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0xf

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    aput-wide v2, v0, v1

    .line 208
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x10

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    aput-wide v2, v0, v1

    .line 209
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x11

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    aput-wide v2, v0, v1

    .line 210
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x12

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    aput-wide v2, v0, v1

    .line 211
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x13

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    aput-wide v2, v0, v1

    .line 212
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x14

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    aput-wide v2, v0, v1

    .line 213
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x15

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    aput-wide v2, v0, v1

    .line 214
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x16

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    aput-wide v2, v0, v1

    .line 215
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x17

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    aput-wide v2, v0, v1

    .line 216
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x18

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    aput-wide v2, v0, v1

    .line 217
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x19

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    aput-wide v2, v0, v1

    .line 218
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1a

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    aput-wide v2, v0, v1

    .line 219
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1b

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    aput-wide v2, v0, v1

    .line 220
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1c

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    aput-wide v2, v0, v1

    .line 221
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1d

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    aput-wide v2, v0, v1

    .line 222
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1e

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    aput-wide v2, v0, v1

    .line 223
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x1f

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    aput-wide v2, v0, v1

    .line 224
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x20

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    aput-wide v2, v0, v1

    .line 225
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x21

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    aput-wide v2, v0, v1

    .line 226
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x22

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    aput-wide v2, v0, v1

    .line 227
    iget-object v0, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/16 v1, 0x23

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    aput-wide v2, v0, v1

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrixRBlock;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 10

    if-eqz p1, :cond_0

    .line 711
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRBlock;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRBlock;->getNumCols()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    goto :goto_0

    .line 713
    :cond_0
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v0, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 716
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_3

    .line 717
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v3, p0, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v0

    .line 719
    :goto_2
    iget v4, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v3, v4, :cond_2

    .line 720
    iget v4, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v5, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 722
    iget v5, p0, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v5, v1

    mul-int v6, v2, v3

    add-int/2addr v5, v6

    .line 723
    iget v6, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    move v7, v0

    :goto_3
    if-ge v7, v2, :cond_1

    .line 726
    iget-object v8, p0, Lorg/ejml/data/DMatrixRBlock;->data:[D

    iget-object v9, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    invoke-static {v8, v5, v9, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v4

    .line 728
    iget v8, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 719
    :cond_1
    iget v4, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v3, v4

    goto :goto_2

    .line 716
    :cond_2
    iget v2, p0, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    if-nez p1, :cond_0

    .line 792
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 794
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 795
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    .line 798
    :goto_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    .line 799
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-gt v1, v2, :cond_2

    .line 800
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v2, v2, v1

    :goto_2
    if-ge v0, v2, :cond_1

    .line 803
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    .line 804
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v4, v4, v0

    add-int/lit8 v6, v1, -0x1

    .line 806
    invoke-virtual {p1, v3, v6, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrixSparseTriplet;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    if-nez p1, :cond_0

    .line 773
    new-instance p1, Lorg/ejml/data/DMatrixRMaj;

    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    invoke-direct {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    goto :goto_0

    .line 775
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    .line 776
    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->zero()V

    :goto_0
    const/4 v0, 0x0

    .line 779
    :goto_1
    iget v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    if-ge v0, v1, :cond_1

    .line 780
    iget-object v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v1, v1, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    .line 781
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v3, v3, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    .line 782
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v3, v3, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide v3, v3, v0

    .line 784
    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;D)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 8

    .line 823
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 825
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    :cond_1
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-static {p1, v0, v2, v3}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixSparseCSC;III)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    .line 830
    iput v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    .line 832
    iget-object v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aput v1, v0, v1

    move v0, v1

    .line 833
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 834
    :goto_2
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_3

    .line 835
    iget-object v3, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    aget-wide v3, v3, v4

    .line 836
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, p2

    if-gtz v5, :cond_2

    goto :goto_3

    .line 839
    :cond_2
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    iget v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v2, v5, v6

    .line 840
    iget-object v5, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget v6, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput-wide v3, v5, v6

    .line 841
    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 843
    :cond_3
    iget-object v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v0, v0, 0x1

    iget v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v3, v2, v0

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrixSparseTriplet;Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    const/4 v0, 0x0

    .line 888
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixSparseTriplet;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixSparseTriplet;Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/IGrowArray;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 8

    .line 859
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/UtilEjml;->reshapeOrDeclare(Lorg/ejml/data/DMatrixSparseCSC;III)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p1

    .line 861
    iget v0, p0, Lorg/ejml/data/DMatrixSparseTriplet;->numCols:I

    invoke-static {p2, v0}, Lorg/ejml/UtilEjml;->adjustClear(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 864
    :goto_0
    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    if-ge v1, v2, :cond_0

    .line 865
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    aget v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    :cond_0
    invoke-virtual {p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;->histogramToStructure([I)V

    .line 870
    iget-object v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-static {v1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    .line 873
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_length:I

    if-ge v1, v2, :cond_1

    .line 874
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v2, v2, Lorg/ejml/data/IGrowArray;->data:[I

    mul-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    .line 875
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_rowcol:Lorg/ejml/data/IGrowArray;

    iget-object v4, v4, Lorg/ejml/data/IGrowArray;->data:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v4, v3

    .line 876
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseTriplet;->nz_value:Lorg/ejml/data/DGrowArray;

    iget-object v4, v4, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide v4, v4, v1

    .line 878
    aget v6, p2, v3

    add-int/lit8 v7, v6, 0x1

    aput v7, p2, v3

    .line 879
    iget-object v3, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v2, v3, v6

    .line 880
    iget-object v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aput-wide v4, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 882
    :cond_1
    iput-boolean v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->indicesSorted:Z

    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrixSparseTriplet;D)Lorg/ejml/data/DMatrixSparseTriplet;
    .locals 7

    if-nez p1, :cond_0

    .line 738
    new-instance p1, Lorg/ejml/data/DMatrixSparseTriplet;

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseTriplet;-><init>(III)V

    goto :goto_0

    .line 740
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixSparseTriplet;->reshape(II)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 742
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 743
    :goto_2
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 744
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v3

    .line 745
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v5, v5, p2

    if-lez v5, :cond_1

    .line 746
    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/ejml/data/DMatrixSparseTriplet;->addItem(IID)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseTriplet;D)Lorg/ejml/data/DMatrixSparseTriplet;
    .locals 10

    if-nez p1, :cond_0

    .line 755
    new-instance p1, Lorg/ejml/data/DMatrixSparseTriplet;

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v2, v3

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseTriplet;-><init>(III)V

    goto :goto_0

    .line 757
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixSparseTriplet;->reshape(II)V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 760
    :goto_1
    iget v3, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v1, v3, :cond_3

    move v3, v0

    .line 761
    :goto_2
    iget v4, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v3, v4, :cond_2

    .line 762
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v5, v2, 0x1

    aget-wide v6, v4, v2

    .line 763
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v2, v8, p2

    if-lez v2, :cond_1

    .line 764
    invoke-virtual {p1, v1, v3, v6, v7}, Lorg/ejml/data/DMatrixSparseTriplet;->addItem(IID)V

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

.method public static convert(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseTriplet;)Lorg/ejml/data/DMatrixSparseTriplet;
    .locals 7

    if-nez p1, :cond_0

    .line 893
    new-instance p1, Lorg/ejml/data/DMatrixSparseTriplet;

    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseTriplet;-><init>(III)V

    goto :goto_0

    .line 895
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {p1, v0, v1}, Lorg/ejml/data/DMatrixSparseTriplet;->reshape(II)V

    .line 897
    :goto_0
    iget-object v0, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 898
    :goto_1
    iget v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    if-ge v1, v2, :cond_2

    .line 899
    iget-object v2, p0, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    :goto_2
    if-ge v0, v2, :cond_1

    .line 902
    iget-object v4, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v4, v4, v0

    .line 903
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v5, v0

    invoke-virtual {p1, v4, v1, v5, v6}, Lorg/ejml/data/DMatrixSparseTriplet;->addItem(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;)V
    .locals 5

    .line 41
    instance-of v0, p1, Lorg/ejml/data/ReshapeMatrix;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p1

    check-cast v0, Lorg/ejml/data/ReshapeMatrix;

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/ejml/data/ReshapeMatrix;->reshape(II)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 46
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_3

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 50
    :goto_1
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 51
    :goto_2
    invoke-interface {p0}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 52
    invoke-interface {p0, v1, v2}, Lorg/ejml/data/DMatrix;->unsafe_get(II)D

    move-result-wide v3

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/ejml/data/DMatrix;->unsafe_set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 47
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of columns do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of rows do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRBlock;)V
    .locals 10

    .line 681
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 684
    :goto_0
    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    if-ge v1, v2, :cond_2

    .line 685
    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v3, p1, Lorg/ejml/data/DMatrixRBlock;->numRows:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v0

    .line 687
    :goto_1
    iget v4, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    if-ge v3, v4, :cond_1

    .line 688
    iget v4, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    iget v5, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 690
    iget v5, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v5, v1

    mul-int v6, v2, v3

    add-int/2addr v5, v6

    .line 691
    iget v6, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    move v7, v0

    :goto_2
    if-ge v7, v2, :cond_0

    .line 694
    iget-object v8, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v9, p1, Lorg/ejml/data/DMatrixRBlock;->data:[D

    invoke-static {v8, v6, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v4

    .line 696
    iget v8, p1, Lorg/ejml/data/DMatrixRBlock;->numCols:I

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 687
    :cond_0
    iget v4, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 684
    :cond_1
    iget v2, p1, Lorg/ejml/data/DMatrixRBlock;->blockLength:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return-void

    .line 682
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be the same size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

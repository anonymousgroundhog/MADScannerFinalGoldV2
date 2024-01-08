.class public Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;
.super Ljava/lang/Object;
.source "UtilDecompositons_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIdentity(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;
    .locals 2

    if-nez p0, :cond_0

    .line 34
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_ZDRM;->identity(II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne p2, v0, :cond_1

    .line 38
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->setIdentity(Lorg/ejml/data/ZMatrixRMaj;)V

    return-object p0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input is not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " matrix"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkZeros(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;
    .locals 2

    if-nez p0, :cond_0

    .line 44
    new-instance p0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    return-object p0

    .line 45
    :cond_0
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne p2, v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->zero()V

    return-object p0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/lCg/RbrVQrmMpaaGj;->AqenxjxqbB:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " matrix"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;
    .locals 5

    if-nez p0, :cond_0

    .line 58
    new-instance p0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    return-object p0

    .line 59
    :cond_0
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne p2, v0, :cond_3

    const/4 p1, 0x0

    .line 62
    :goto_0
    iget p2, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ge p1, p2, :cond_2

    .line 63
    iget p2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x2

    .line 64
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    :goto_1
    if-ge p2, v0, :cond_1

    .line 66
    iget-object v1, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v2, p2, 0x1

    const-wide/16 v3, 0x0

    aput-wide v3, v1, p2

    move p2, v2

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 60
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input is not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " matrix"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkZerosUT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;
    .locals 6

    if-nez p0, :cond_0

    .line 79
    new-instance p0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    return-object p0

    .line 80
    :cond_0
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ne p2, v0, :cond_3

    .line 83
    iget p1, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget p2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 85
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 86
    iget v1, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    mul-int/2addr v1, p2

    iget v2, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 88
    iget-object v2, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v3, v0, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input is not "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " matrix"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

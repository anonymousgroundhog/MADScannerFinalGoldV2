.class public Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;
.super Ljava/lang/Object;
.source "UtilDecompositons_FDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    if-nez p0, :cond_0

    .line 58
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    return-object p0

    .line 59
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-eq p2, v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 63
    :goto_0
    iget p2, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge p1, p2, :cond_4

    .line 64
    iget p2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p2, p1

    .line 65
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p2

    :goto_1
    if-ge p2, v0, :cond_2

    .line 67
    iget-object v1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    aput v3, v1, p2

    move p2, v2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 60
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 61
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    :cond_4
    return-object p0
.end method

.method public static checkZerosUT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    if-nez p0, :cond_0

    .line 80
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    return-object p0

    .line 81
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne p2, v0, :cond_3

    .line 84
    iget p1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget p2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 86
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 87
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v1, p2

    iget v2, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    add-int/2addr v1, v2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 89
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    aput v4, v2, v0

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    .line 82
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

.method public static ensureIdentity(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;
    .locals 0

    if-nez p0, :cond_0

    .line 36
    invoke-static {p1, p2}, Lorg/ejml/dense/row/CommonOps_FDRM;->identity(II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_FDRM;->setIdentity(Lorg/ejml/data/FMatrix1Row;)V

    return-object p0
.end method

.method public static ensureZeros(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;
    .locals 0

    if-nez p0, :cond_0

    .line 45
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    return-object p0

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    .line 48
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->zero()V

    return-object p0
.end method

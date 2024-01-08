.class public Lorg/ejml/sparse/csc/NormOps_DSCC;
.super Ljava/lang/Object;
.source "NormOps_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 31
    :goto_0
    iget v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v2, v3, :cond_0

    .line 32
    iget-object v3, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v3, v3, v2

    mul-double/2addr v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normF(Lorg/ejml/data/DMatrixSparseCSC;)D
    .locals 7

    .line 41
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_DSCC;->elementMaxAbs(Lorg/ejml/data/DMatrixSparseCSC;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 43
    :goto_0
    iget v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    if-ge v4, v5, :cond_0

    .line 44
    iget-object v5, p0, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v5, v5, v4

    div-double/2addr v5, v0

    mul-double/2addr v5, v5

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

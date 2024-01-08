.class public Lorg/ejml/sparse/csc/NormOps_FSCC;
.super Ljava/lang/Object;
.source "NormOps_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    :goto_0
    iget v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v1, v2, :cond_0

    .line 34
    iget-object v2, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v2, v2, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-double v0, v0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static normF(Lorg/ejml/data/FMatrixSparseCSC;)F
    .locals 4

    .line 43
    invoke-static {p0}, Lorg/ejml/sparse/csc/CommonOps_FSCC;->elementMaxAbs(Lorg/ejml/data/FMatrixSparseCSC;)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 45
    :goto_0
    iget v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    if-ge v2, v3, :cond_0

    .line 46
    iget-object v3, p0, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v3, v3, v2

    div-float/2addr v3, v0

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v1, v1

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

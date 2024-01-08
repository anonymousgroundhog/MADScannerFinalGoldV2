.class public abstract Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;
.super Ljava/lang/Object;
.source "CholeskyDecompositionCommon_CDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
        "Lorg/ejml/data/CMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected T:Lorg/ejml/data/CMatrixRMaj;

.field protected det:Lorg/ejml/data/Complex_F32;

.field protected lower:Z

.field protected n:I

.field protected t:[F


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->det:Lorg/ejml/data/Complex_F32;

    .line 61
    iput-boolean p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->lower:Z

    return-void
.end method


# virtual methods
.method public _getT()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->T:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public computeDeterminant()Lorg/ejml/data/Complex_F32;
    .locals 4

    .line 156
    iget v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->n:I

    mul-int/2addr v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 158
    iget-object v3, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->t:[F

    aget v3, v3, v2

    mul-float/2addr v1, v3

    .line 157
    iget v3, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->n:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->det:Lorg/ejml/data/Complex_F32;

    mul-float/2addr v1, v1

    iput v1, v0, Lorg/ejml/data/Complex_F32;->real:F

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->det:Lorg/ejml/data/Complex_F32;

    const/4 v1, 0x0

    iput v1, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 164
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->det:Lorg/ejml/data/Complex_F32;

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/CMatrixRMaj;)Z
    .locals 2

    .line 77
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_1

    .line 81
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->n:I

    .line 83
    iput-object p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->T:Lorg/ejml/data/CMatrixRMaj;

    .line 84
    iget-object p1, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->t:[F

    .line 86
    iget-boolean p1, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->lower:Z

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->decomposeLower()Z

    move-result p1

    return p1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->decomposeUpper()Z

    move-result p1

    return p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be a square matrix."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->decompose(Lorg/ejml/data/CMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method protected abstract decomposeLower()Z
.end method

.method protected abstract decomposeUpper()Z
.end method

.method public getT(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 6

    .line 115
    iget-boolean v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->lower:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 116
    iget v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->n:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosUT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    move v0, v1

    .line 117
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->n:I

    if-ge v0, v2, :cond_3

    mul-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    move v3, v1

    :goto_1
    if-gt v3, v0, :cond_0

    .line 120
    iget-object v4, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v5, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->T:Lorg/ejml/data/CMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v5, v5, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 122
    iget-object v4, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v5, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->T:Lorg/ejml/data/CMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v5, v5, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->n:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosLT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    .line 128
    :goto_2
    iget v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->n:I

    if-ge v1, v0, :cond_3

    mul-int/2addr v0, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    move v2, v1

    .line 130
    :goto_3
    iget v3, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->n:I

    if-ge v2, v3, :cond_2

    .line 131
    iget-object v3, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->T:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v4, v4, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 133
    iget-object v3, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iget-object v4, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->T:Lorg/ejml/data/CMatrixRMaj;

    iget-object v4, v4, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v4, v4, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->getT(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLower()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/ejml/dense/row/decompose/chol/CholeskyDecompositionCommon_CDRM;->lower:Z

    return v0
.end method

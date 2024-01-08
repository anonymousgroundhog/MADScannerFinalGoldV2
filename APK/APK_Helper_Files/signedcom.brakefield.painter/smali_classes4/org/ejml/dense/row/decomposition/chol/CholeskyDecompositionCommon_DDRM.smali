.class public abstract Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;
.super Ljava/lang/Object;
.source "CholeskyDecompositionCommon_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected T:Lorg/ejml/data/DMatrixRMaj;

.field protected det:Lorg/ejml/data/Complex_F64;

.field protected lower:Z

.field protected maxWidth:I

.field protected n:I

.field protected t:[D

.field protected vv:[D


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->maxWidth:I

    .line 57
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->det:Lorg/ejml/data/Complex_F64;

    .line 65
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->lower:Z

    return-void
.end method


# virtual methods
.method public _getVV()[D
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->vv:[D

    return-object v0
.end method

.method public computeDeterminant()Lorg/ejml/data/Complex_F64;
    .locals 6

    .line 182
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->n:I

    mul-int/2addr v0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 184
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->t:[D

    aget-wide v4, v4, v3

    mul-double/2addr v1, v4

    .line 183
    iget v4, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->n:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->det:Lorg/ejml/data/Complex_F64;

    mul-double/2addr v1, v1

    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->real:D

    .line 188
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->det:Lorg/ejml/data/Complex_F64;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 190
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->det:Lorg/ejml/data/Complex_F64;

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/DMatrixRMaj;)Z
    .locals 2

    .line 105
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->maxWidth:I

    if-le v0, v1, :cond_0

    .line 106
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->setExpectedMaxSize(II)V

    goto :goto_0

    .line 107
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 111
    :goto_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->n:I

    .line 113
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    .line 114
    iget-object p1, p1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->t:[D

    .line 116
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->lower:Z

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->decomposeLower()Z

    move-result p1

    return p1

    .line 119
    :cond_1
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->decomposeUpper()Z

    move-result p1

    return p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be a square matrix."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->decompose(Lorg/ejml/data/DMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method protected abstract decomposeLower()Z
.end method

.method protected abstract decomposeUpper()Z
.end method

.method public getT()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 5

    .line 146
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->lower:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 147
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->n:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosUT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    move v0, v1

    .line 148
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->n:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_0

    .line 150
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v3, v0, v2}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v3

    invoke-virtual {p1, v0, v2, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->n:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosLT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    .line 155
    :goto_2
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->n:I

    if-ge v1, v0, :cond_3

    move v0, v1

    .line 156
    :goto_3
    iget v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->n:I

    if-ge v0, v2, :cond_2

    .line 157
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->T:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v2

    invoke-virtual {p1, v1, v0, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 36
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->getT(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

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

    .line 86
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->lower:Z

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 0

    if-ne p1, p2, :cond_0

    .line 73
    iput p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->maxWidth:I

    .line 75
    new-array p1, p2, [D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_DDRM;->vv:[D

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only decompose square matrices"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

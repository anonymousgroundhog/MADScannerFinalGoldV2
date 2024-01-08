.class public abstract Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;
.super Ljava/lang/Object;
.source "CholeskyDecompositionCommon_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskyDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected T:Lorg/ejml/data/FMatrixRMaj;

.field protected det:Lorg/ejml/data/Complex_F32;

.field protected lower:Z

.field protected maxWidth:I

.field protected n:I

.field protected t:[F

.field protected vv:[F


# direct methods
.method protected constructor <init>(Z)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->maxWidth:I

    .line 59
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->det:Lorg/ejml/data/Complex_F32;

    .line 67
    iput-boolean p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->lower:Z

    return-void
.end method


# virtual methods
.method public _getVV()[F
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->vv:[F

    return-object v0
.end method

.method public computeDeterminant()Lorg/ejml/data/Complex_F32;
    .locals 4

    .line 184
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->n:I

    mul-int/2addr v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 186
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->t:[F

    aget v3, v3, v2

    mul-float/2addr v1, v3

    .line 185
    iget v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->n:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->det:Lorg/ejml/data/Complex_F32;

    mul-float/2addr v1, v1

    iput v1, v0, Lorg/ejml/data/Complex_F32;->real:F

    .line 190
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->det:Lorg/ejml/data/Complex_F32;

    const/4 v1, 0x0

    iput v1, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 192
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->det:Lorg/ejml/data/Complex_F32;

    return-object v0
.end method

.method public decompose(Lorg/ejml/data/FMatrixRMaj;)Z
    .locals 2

    .line 107
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->maxWidth:I

    if-le v0, v1, :cond_0

    .line 108
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->setExpectedMaxSize(II)V

    goto :goto_0

    .line 109
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ne v0, v1, :cond_2

    .line 113
    :goto_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->n:I

    .line 115
    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    .line 116
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->t:[F

    .line 118
    iget-boolean p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->lower:Z

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->decomposeLower()Z

    move-result p1

    return p1

    .line 121
    :cond_1
    invoke-virtual {p0}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->decomposeUpper()Z

    move-result p1

    return p1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be a square matrix."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 37
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->decompose(Lorg/ejml/data/FMatrixRMaj;)Z

    move-result p1

    return p1
.end method

.method protected abstract decomposeLower()Z
.end method

.method protected abstract decomposeUpper()Z
.end method

.method public getT()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 4

    .line 148
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->lower:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 149
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->n:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosUT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    move v0, v1

    .line 150
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->n:I

    if-ge v0, v2, :cond_3

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_0

    .line 152
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v3, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->n:I

    invoke-static {p1, v0, v0}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    .line 157
    :goto_2
    iget v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->n:I

    if-ge v1, v0, :cond_3

    move v0, v1

    .line 158
    :goto_3
    iget v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->n:I

    if-ge v0, v2, :cond_2

    .line 159
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->T:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v2, v1, v0}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

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

    .line 37
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->getT(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

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

    .line 88
    iget-boolean v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->lower:Z

    return v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 0

    if-ne p1, p2, :cond_0

    .line 75
    iput p2, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->maxWidth:I

    .line 77
    new-array p1, p2, [F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyDecompositionCommon_FDRM;->vv:[F

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only decompose square matrices"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

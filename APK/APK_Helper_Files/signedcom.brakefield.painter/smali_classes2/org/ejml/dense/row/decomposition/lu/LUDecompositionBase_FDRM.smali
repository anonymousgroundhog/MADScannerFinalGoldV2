.class public abstract Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;
.super Ljava/lang/Object;
.source "LUDecompositionBase_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/LUDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/LUDecomposition_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected LU:Lorg/ejml/data/FMatrixRMaj;

.field protected dataLU:[F

.field det:Lorg/ejml/data/Complex_F32;

.field protected indx:[I

.field protected m:I

.field protected maxWidth:I

.field protected n:I

.field protected pivot:[I

.field protected pivsign:F

.field protected vv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->maxWidth:I

    .line 63
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->det:Lorg/ejml/data/Complex_F32;

    return-void
.end method


# virtual methods
.method public _getVV()[F
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->vv:[F

    return-object v0
.end method

.method public _solveVectorInternal([F)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 218
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->n:I

    if-ge v0, v2, :cond_2

    .line 219
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->indx:[I

    aget v3, v3, v0

    .line 220
    aget v4, p1, v3

    .line 221
    aget v5, p1, v0

    aput v5, p1, v3

    if-eqz v1, :cond_0

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 227
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->dataLU:[F

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aget v5, p1, v3

    mul-float/2addr v2, v5

    sub-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 231
    :cond_1
    aput v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->dataLU:[F

    invoke-static {v0, p1, v2}, Lorg/ejml/dense/row/decomposition/TriangularSolver_FDRM;->solveU([F[FI)V

    return-void
.end method

.method public computeDeterminant()Lorg/ejml/data/Complex_F32;
    .locals 4

    .line 191
    iget v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->m:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->n:I

    if-ne v0, v1, :cond_1

    .line 194
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->pivsign:F

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 198
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->dataLU:[F

    aget v3, v3, v1

    mul-float/2addr v2, v3

    .line 197
    iget v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->n:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->det:Lorg/ejml/data/Complex_F32;

    iput v2, v0, Lorg/ejml/data/Complex_F32;->real:F

    .line 202
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->det:Lorg/ejml/data/Complex_F32;

    const/4 v1, 0x0

    iput v1, v0, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 204
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->det:Lorg/ejml/data/Complex_F32;

    return-object v0

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decomposeCommonInit(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 2

    .line 155
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->maxWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->maxWidth:I

    if-le v0, v1, :cond_1

    .line 156
    :cond_0
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->setExpectedMaxSize(II)V

    .line 159
    :cond_1
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->m:I

    .line 160
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->n:I

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/FMatrixRMaj;->set(Lorg/ejml/data/FMatrixD1;)V

    const/4 p1, 0x0

    .line 163
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->m:I

    if-ge p1, v0, :cond_2

    .line 164
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->pivot:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 166
    iput p1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->pivsign:F

    return-void
.end method

.method public getIndx()[I
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->indx:[I

    return-object v0
.end method

.method public getLU()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public getLower(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 6

    .line 100
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    .line 101
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 103
    :goto_0
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosUT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {p1, v3, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_1

    .line 109
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v5, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-le v0, v1, :cond_4

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_4

    move v4, v2

    :goto_4
    if-ge v4, v1, :cond_3

    .line 116
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v5, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public bridge synthetic getLower(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->getLower(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getPivot()[I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->pivot:[I

    return-object v0
.end method

.method public getRowPivot(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->pivot:[I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->pivotMatrix(Lorg/ejml/data/FMatrixRMaj;[IIZ)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRowPivot(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->getRowPivot(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getRowPivotV(Lorg/ejml/data/IGrowArray;)[I
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->pivot:[I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    invoke-static {v0, v1, p1}, Lorg/ejml/UtilEjml;->pivotVector([IILorg/ejml/data/IGrowArray;)[I

    move-result-object p1

    return-object p1
.end method

.method public getUpper(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;
    .locals 5

    .line 130
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 131
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    .line 133
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_FDRM;->checkZerosLT(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_1

    .line 137
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/FMatrixRMaj;->unsafe_get(II)F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lorg/ejml/data/FMatrixRMaj;->unsafe_set(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public bridge synthetic getUpper(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->getUpper(Lorg/ejml/data/FMatrixRMaj;)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSingular()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 177
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->m:I

    if-ge v1, v2, :cond_1

    .line 178
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->dataLU:[F

    iget v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Lorg/ejml/UtilEjml;->F_EPS:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public quality()D
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_FDRM;->qualityTriangular(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    .line 66
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->LU:Lorg/ejml/data/FMatrixRMaj;

    .line 68
    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->dataLU:[F

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->maxWidth:I

    .line 71
    new-array p2, p1, [F

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->vv:[F

    .line 72
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->indx:[I

    .line 73
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_FDRM;->pivot:[I

    return-void
.end method

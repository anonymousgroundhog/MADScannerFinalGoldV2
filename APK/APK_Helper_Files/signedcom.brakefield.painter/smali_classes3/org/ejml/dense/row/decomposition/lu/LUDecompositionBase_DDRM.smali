.class public abstract Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;
.super Ljava/lang/Object;
.source "LUDecompositionBase_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/LUDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/LUDecomposition_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected LU:Lorg/ejml/data/DMatrixRMaj;

.field protected dataLU:[D

.field det:Lorg/ejml/data/Complex_F64;

.field protected indx:[I

.field protected m:I

.field protected maxWidth:I

.field protected n:I

.field protected pivot:[I

.field protected pivsign:D

.field protected vv:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->maxWidth:I

    .line 61
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->det:Lorg/ejml/data/Complex_F64;

    return-void
.end method


# virtual methods
.method public _getVV()[D
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->vv:[D

    return-object v0
.end method

.method public _solveVectorInternal([D)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 216
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->n:I

    if-ge v0, v2, :cond_2

    .line 217
    iget-object v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->indx:[I

    aget v3, v3, v0

    .line 218
    aget-wide v4, p1, v3

    .line 219
    aget-wide v6, p1, v0

    aput-wide v6, p1, v3

    if-eqz v1, :cond_0

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v1, -0x1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 225
    iget-object v6, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->dataLU:[D

    add-int/lit8 v7, v2, 0x1

    aget-wide v8, v6, v2

    aget-wide v10, p1, v3

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    move v2, v7

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 229
    :cond_1
    aput-wide v4, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->dataLU:[D

    invoke-static {v0, p1, v2}, Lorg/ejml/dense/row/decomposition/TriangularSolver_DDRM;->solveU([D[DI)V

    return-void
.end method

.method public computeDeterminant()Lorg/ejml/data/Complex_F64;
    .locals 6

    .line 189
    iget v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->m:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->n:I

    if-ne v0, v1, :cond_1

    .line 192
    iget-wide v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->pivsign:D

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 196
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->dataLU:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    .line 195
    iget v4, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->n:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->det:Lorg/ejml/data/Complex_F64;

    iput-wide v2, v0, Lorg/ejml/data/Complex_F64;->real:D

    .line 200
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->det:Lorg/ejml/data/Complex_F64;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 202
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->det:Lorg/ejml/data/Complex_F64;

    return-object v0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decomposeCommonInit(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 2

    .line 153
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->maxWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->maxWidth:I

    if-le v0, v1, :cond_1

    .line 154
    :cond_0
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->setExpectedMaxSize(II)V

    .line 157
    :cond_1
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->m:I

    .line 158
    iget v0, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->n:I

    .line 160
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/DMatrixRMaj;->set(Lorg/ejml/data/DMatrixD1;)V

    const/4 p1, 0x0

    .line 161
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->m:I

    if-ge p1, v0, :cond_2

    .line 162
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->pivot:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 164
    iput-wide v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->pivsign:D

    return-void
.end method

.method public getIndx()[I
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->indx:[I

    return-object v0
.end method

.method public getLU()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public getLower(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 7

    .line 98
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    .line 99
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 101
    :goto_0
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosUT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 104
    invoke-virtual {p1, v3, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_1

    .line 107
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v5, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

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

    .line 114
    iget-object v5, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v5, v3, v4}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

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

    .line 38
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->getLower(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getPivot()[I
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->pivot:[I

    return-object v0
.end method

.method public getRowPivot(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->pivot:[I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->pivotMatrix(Lorg/ejml/data/DMatrixRMaj;[IIZ)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRowPivot(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->getRowPivot(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getRowPivotV(Lorg/ejml/data/IGrowArray;)[I
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->pivot:[I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    invoke-static {v0, v1, p1}, Lorg/ejml/UtilEjml;->pivotVector([IILorg/ejml/data/IGrowArray;)[I

    move-result-object p1

    return-object p1
.end method

.method public getUpper(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;
    .locals 6

    .line 128
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 129
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    .line 131
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decomposition/UtilDecompositons_DDRM;->checkZerosLT(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_1

    .line 135
    iget-object v4, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/DMatrixRMaj;->unsafe_get(II)D

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/ejml/data/DMatrixRMaj;->unsafe_set(IID)V

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

    .line 38
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->getUpper(Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSingular()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 175
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->m:I

    if-ge v1, v2, :cond_1

    .line 176
    iget-object v2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->dataLU:[D

    iget v3, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sget-wide v4, Lorg/ejml/UtilEjml;->EPS:D

    cmpg-double v2, v2, v4

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

    .line 206
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_DDRM;->qualityTriangular(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    .line 64
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->LU:Lorg/ejml/data/DMatrixRMaj;

    .line 66
    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->dataLU:[D

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->maxWidth:I

    .line 69
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->vv:[D

    .line 70
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->indx:[I

    .line 71
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/lu/LUDecompositionBase_DDRM;->pivot:[I

    return-void
.end method

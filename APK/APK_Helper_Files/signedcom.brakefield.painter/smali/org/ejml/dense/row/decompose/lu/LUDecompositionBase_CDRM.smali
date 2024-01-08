.class public abstract Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;
.super Ljava/lang/Object;
.source "LUDecompositionBase_CDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/LUDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/LUDecomposition_F32<",
        "Lorg/ejml/data/CMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected LU:Lorg/ejml/data/CMatrixRMaj;

.field protected dataLU:[F

.field protected det:Lorg/ejml/data/Complex_F32;

.field protected indx:[I

.field protected m:I

.field protected maxWidth:I

.field protected n:I

.field protected pivot:[I

.field protected pivsign:F

.field protected stride:I

.field protected vv:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->maxWidth:I

    .line 62
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->det:Lorg/ejml/data/Complex_F32;

    return-void
.end method


# virtual methods
.method public _getVV()[F
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->vv:[F

    return-object v0
.end method

.method public _solveVectorInternal([F)V
    .locals 2

    .line 249
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->solveL([F)V

    .line 252
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->dataLU:[F

    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->n:I

    invoke-static {v0, p1, v1}, Lorg/ejml/dense/row/decompose/TriangularSolver_CDRM;->solveU([F[FI)V

    return-void
.end method

.method public computeDeterminant()Lorg/ejml/data/Complex_F32;
    .locals 8

    .line 218
    iget v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->m:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->n:I

    if-ne v0, v1, :cond_1

    .line 221
    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->pivsign:F

    .line 224
    iget v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->stride:I

    mul-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 226
    iget-object v4, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->dataLU:[F

    aget v5, v4, v3

    add-int/lit8 v6, v3, 0x1

    .line 227
    aget v4, v4, v6

    mul-float v6, v1, v5

    mul-float v7, v2, v4

    sub-float/2addr v6, v7

    mul-float/2addr v1, v4

    mul-float/2addr v2, v5

    add-float/2addr v2, v1

    .line 225
    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->stride:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    move v1, v6

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->det:Lorg/ejml/data/Complex_F32;

    invoke-virtual {v0, v1, v2}, Lorg/ejml/data/Complex_F32;->set(FF)V

    .line 237
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->det:Lorg/ejml/data/Complex_F32;

    return-object v0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Lkotlin/sequences/xWeI/PLNIgvxmKA;->UDk:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decomposeCommonInit(Lorg/ejml/data/CMatrixRMaj;)V
    .locals 2

    .line 175
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->maxWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->maxWidth:I

    if-le v0, v1, :cond_1

    .line 176
    :cond_0
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->setExpectedMaxSize(II)V

    .line 179
    :cond_1
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->m:I

    .line 180
    iget v0, p1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->n:I

    mul-int/lit8 v0, v0, 0x2

    .line 181
    iput v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->stride:I

    .line 183
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/CMatrixRMaj;->set(Lorg/ejml/data/CMatrixRMaj;)V

    const/4 p1, 0x0

    .line 184
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->m:I

    if-ge p1, v0, :cond_2

    .line 185
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->pivot:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 187
    iput p1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->pivsign:F

    return-void
.end method

.method public getIndx()[I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->indx:[I

    return-object v0
.end method

.method public getLU()Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    return-object v0
.end method

.method public getLower(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 9

    .line 99
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    .line 100
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget-object v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 102
    :goto_0
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosUT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 105
    invoke-virtual {p1, v3, v3, v4, v5}, Lorg/ejml/data/CMatrixRMaj;->set(IIFF)V

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_1

    .line 108
    iget-object v5, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v5, v3, v4}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 109
    invoke-virtual {p1, v3, v4}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v6

    .line 111
    iget-object v7, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v7, v7, v5

    .line 112
    iget-object v8, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v8, v5

    .line 114
    iget-object v8, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v7, v8, v6

    .line 115
    iget-object v7, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v6, v6, 0x1

    aput v5, v7, v6

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

    .line 122
    iget-object v5, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v5, v3, v4}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 123
    invoke-virtual {p1, v3, v4}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v6

    .line 125
    iget-object v7, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v7, v7, v5

    .line 126
    iget-object v8, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v8, v5

    .line 128
    iget-object v8, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v7, v8, v6

    .line 129
    iget-object v7, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v6, v6, 0x1

    aput v5, v7, v6

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
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->getLower(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getPivot()[I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->pivot:[I

    return-object v0
.end method

.method public getRowPivot(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->pivot:[I

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/dense/row/SpecializedOps_CDRM;->pivotMatrix(Lorg/ejml/data/CMatrixRMaj;[IIZ)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRowPivot(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->getRowPivot(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getRowPivotV(Lorg/ejml/data/IGrowArray;)[I
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->pivot:[I

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    invoke-static {v0, v1, p1}, Lorg/ejml/UtilEjml;->pivotVector([IILorg/ejml/data/IGrowArray;)[I

    move-result-object p1

    return-object p1
.end method

.method public getUpper(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;
    .locals 8

    .line 143
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 144
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    .line 146
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decompose/UtilDecompositons_CDRM;->checkZerosLT(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_1

    .line 150
    iget-object v4, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v4

    .line 151
    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/CMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 153
    iget-object v6, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v6, v6, v4

    .line 154
    iget-object v7, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    .line 156
    iget-object v7, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aput v6, v7, v5

    .line 157
    iget-object v6, p1, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v5, v5, 0x1

    aput v4, v6, v5

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
    check-cast p1, Lorg/ejml/data/CMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->getUpper(Lorg/ejml/data/CMatrixRMaj;)Lorg/ejml/data/CMatrixRMaj;

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

    .line 199
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->m:I

    if-ge v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->dataLU:[F

    iget v3, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->stride:I

    mul-int v4, v1, v3

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    aget v4, v2, v4

    mul-int/2addr v3, v1

    add-int/2addr v3, v5

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 201
    aget v2, v2, v3

    mul-float/2addr v4, v4

    mul-float/2addr v2, v2

    add-float/2addr v4, v2

    .line 205
    sget v2, Lorg/ejml/UtilEjml;->F_EPS:F

    sget v3, Lorg/ejml/UtilEjml;->F_EPS:F

    mul-float/2addr v2, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_0

    return v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public quality()D
    .locals 2

    .line 241
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_CDRM;->qualityTriangular(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    .line 65
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->LU:Lorg/ejml/data/CMatrixRMaj;

    .line 67
    iget-object v0, v0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->dataLU:[F

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->maxWidth:I

    mul-int/lit8 p2, p1, 0x2

    .line 70
    new-array p2, p2, [F

    iput-object p2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->vv:[F

    .line 71
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->indx:[I

    .line 72
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->pivot:[I

    return-void
.end method

.method protected solveL([F)V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    .line 263
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->n:I

    if-ge v0, v2, :cond_2

    .line 264
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->indx:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    .line 265
    aget v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    .line 266
    aget v5, p1, v4

    mul-int/lit8 v6, v0, 0x2

    .line 268
    aget v7, p1, v6

    aput v7, p1, v2

    add-int/lit8 v2, v6, 0x1

    .line 269
    aget v7, p1, v2

    aput v7, p1, v4

    if-eqz v1, :cond_0

    .line 274
    iget v4, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->stride:I

    mul-int/2addr v4, v0

    add-int/lit8 v7, v1, -0x1

    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v4, v8

    :goto_1
    if-ge v7, v0, :cond_1

    .line 276
    iget-object v8, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_CDRM;->dataLU:[F

    add-int/lit8 v9, v4, 0x1

    aget v4, v8, v4

    add-int/lit8 v10, v9, 0x1

    .line 277
    aget v8, v8, v9

    mul-int/lit8 v9, v7, 0x2

    .line 279
    aget v11, p1, v9

    add-int/lit8 v9, v9, 0x1

    .line 280
    aget v9, p1, v9

    mul-float v12, v4, v11

    mul-float v13, v8, v9

    sub-float/2addr v12, v13

    sub-float/2addr v3, v12

    mul-float/2addr v4, v9

    mul-float/2addr v8, v11

    add-float/2addr v4, v8

    sub-float/2addr v5, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v10

    goto :goto_1

    :cond_0
    mul-float v4, v3, v3

    mul-float v7, v5, v5

    add-float/2addr v4, v7

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 288
    :cond_1
    aput v3, p1, v6

    .line 289
    aput v5, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

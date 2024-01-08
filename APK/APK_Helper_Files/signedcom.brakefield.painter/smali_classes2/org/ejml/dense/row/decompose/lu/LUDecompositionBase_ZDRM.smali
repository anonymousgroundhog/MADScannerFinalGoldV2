.class public abstract Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;
.super Ljava/lang/Object;
.source "LUDecompositionBase_ZDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/LUDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/LUDecomposition_F64<",
        "Lorg/ejml/data/ZMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field protected LU:Lorg/ejml/data/ZMatrixRMaj;

.field protected dataLU:[D

.field protected det:Lorg/ejml/data/Complex_F64;

.field protected indx:[I

.field protected m:I

.field protected maxWidth:I

.field protected n:I

.field protected pivot:[I

.field protected pivsign:D

.field protected stride:I

.field protected vv:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->maxWidth:I

    .line 60
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->det:Lorg/ejml/data/Complex_F64;

    return-void
.end method


# virtual methods
.method public _getVV()[D
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->vv:[D

    return-object v0
.end method

.method public _solveVectorInternal([D)V
    .locals 2

    .line 247
    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->solveL([D)V

    .line 250
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->dataLU:[D

    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->n:I

    invoke-static {v0, p1, v1}, Lorg/ejml/dense/row/decompose/TriangularSolver_ZDRM;->solveU([D[DI)V

    return-void
.end method

.method public computeDeterminant()Lorg/ejml/data/Complex_F64;
    .locals 15

    .line 216
    iget v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->m:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->n:I

    if-ne v0, v1, :cond_1

    .line 219
    iget-wide v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->pivsign:D

    .line 222
    iget v3, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->stride:I

    mul-int/2addr v0, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 224
    iget-object v6, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->dataLU:[D

    aget-wide v7, v6, v5

    add-int/lit8 v9, v5, 0x1

    .line 225
    aget-wide v9, v6, v9

    mul-double v11, v1, v7

    mul-double v13, v3, v9

    sub-double/2addr v11, v13

    mul-double/2addr v1, v9

    mul-double/2addr v3, v7

    add-double/2addr v3, v1

    .line 223
    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->stride:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    move-wide v1, v11

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->det:Lorg/ejml/data/Complex_F64;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ejml/data/Complex_F64;->set(DD)V

    .line 235
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->det:Lorg/ejml/data/Complex_F64;

    return-object v0

    .line 217
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be a square matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected decomposeCommonInit(Lorg/ejml/data/ZMatrixRMaj;)V
    .locals 2

    .line 173
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->maxWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->maxWidth:I

    if-le v0, v1, :cond_1

    .line 174
    :cond_0
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget v1, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    invoke-virtual {p0, v0, v1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->setExpectedMaxSize(II)V

    .line 177
    :cond_1
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iput v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->m:I

    .line 178
    iget v0, p1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    iput v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->n:I

    mul-int/lit8 v0, v0, 0x2

    .line 179
    iput v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->stride:I

    .line 181
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v0, p1}, Lorg/ejml/data/ZMatrixRMaj;->set(Lorg/ejml/data/ZMatrixRMaj;)V

    const/4 p1, 0x0

    .line 182
    :goto_0
    iget v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->m:I

    if-ge p1, v0, :cond_2

    .line 183
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->pivot:[I

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 185
    iput-wide v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->pivsign:D

    return-void
.end method

.method public getIndx()[I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->indx:[I

    return-object v0
.end method

.method public getLU()Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    return-object v0
.end method

.method public bridge synthetic getLower(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->getLower(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getLower(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 12

    .line 97
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    .line 98
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget-object v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v2, v2, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 100
    :goto_0
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosUT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v1, :cond_2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    move-object v2, p1

    move v3, v10

    move v4, v10

    .line 103
    invoke-virtual/range {v2 .. v8}, Lorg/ejml/data/ZMatrixRMaj;->set(IIDD)V

    move v2, v9

    :goto_2
    if-ge v2, v10, :cond_1

    .line 106
    iget-object v3, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v3, v10, v2}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v3

    .line 107
    invoke-virtual {p1, v10, v2}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v4

    .line 109
    iget-object v5, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v5, v5, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v5, v5, v3

    .line 110
    iget-object v7, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v7, v7, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v7, v7, v3

    .line 112
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v5, v3, v4

    .line 113
    iget-object v3, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v4, 0x1

    aput-wide v7, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-le v0, v1, :cond_4

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_4

    move v3, v9

    :goto_4
    if-ge v3, v1, :cond_3

    .line 120
    iget-object v4, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v4

    .line 121
    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 123
    iget-object v6, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v6, v6, v4

    .line 124
    iget-object v8, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v8, v4

    .line 126
    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v6, v4, v5

    .line 127
    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v5, 0x1

    aput-wide v10, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public getPivot()[I
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->pivot:[I

    return-object v0
.end method

.method public bridge synthetic getRowPivot(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->getRowPivot(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getRowPivot(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 3

    .line 164
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->pivot:[I

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/ejml/dense/row/SpecializedOps_ZDRM;->pivotMatrix(Lorg/ejml/data/ZMatrixRMaj;[IIZ)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getRowPivotV(Lorg/ejml/data/IGrowArray;)[I
    .locals 2

    .line 169
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->pivot:[I

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    invoke-static {v0, v1, p1}, Lorg/ejml/UtilEjml;->pivotVector([IILorg/ejml/data/IGrowArray;)[I

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getUpper(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 38
    check-cast p1, Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {p0, p1}, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->getUpper(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    return-object p1
.end method

.method public getUpper(Lorg/ejml/data/ZMatrixRMaj;)Lorg/ejml/data/ZMatrixRMaj;
    .locals 10

    .line 141
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v0, v0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 142
    :goto_0
    iget-object v1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget v1, v1, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    .line 144
    invoke-static {p1, v0, v1}, Lorg/ejml/dense/row/decompose/UtilDecompositons_ZDRM;->checkZerosLT(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_1

    .line 148
    iget-object v4, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    invoke-virtual {v4, v2, v3}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v4

    .line 149
    invoke-virtual {p1, v2, v3}, Lorg/ejml/data/ZMatrixRMaj;->getIndex(II)I

    move-result v5

    .line 151
    iget-object v6, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v6, v6, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v6, v6, v4

    .line 152
    iget-object v8, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    iget-object v8, v8, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    .line 154
    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aput-wide v6, v4, v5

    .line 155
    iget-object v4, p1, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v5, v5, 0x1

    aput-wide v8, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSingular()Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 197
    :goto_0
    iget v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->m:I

    if-ge v1, v2, :cond_1

    .line 198
    iget-object v2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->dataLU:[D

    iget v3, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->stride:I

    mul-int v4, v1, v3

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    aget-wide v6, v2, v4

    mul-int/2addr v3, v1

    add-int/2addr v3, v5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 199
    aget-wide v2, v2, v3

    mul-double/2addr v6, v6

    mul-double/2addr v2, v2

    add-double/2addr v6, v2

    .line 203
    sget-wide v2, Lorg/ejml/UtilEjml;->EPS:D

    sget-wide v8, Lorg/ejml/UtilEjml;->EPS:D

    mul-double/2addr v2, v8

    cmpg-double v2, v6, v2

    if-gez v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public quality()D
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    invoke-static {v0}, Lorg/ejml/dense/row/SpecializedOps_ZDRM;->qualityTriangular(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    return-wide v0
.end method

.method public setExpectedMaxSize(II)V
    .locals 1

    .line 63
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->LU:Lorg/ejml/data/ZMatrixRMaj;

    .line 65
    iget-object v0, v0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    iput-object v0, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->dataLU:[D

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->maxWidth:I

    mul-int/lit8 p2, p1, 0x2

    .line 68
    new-array p2, p2, [D

    iput-object p2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->vv:[D

    .line 69
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->indx:[I

    .line 70
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->pivot:[I

    return-void
.end method

.method protected solveL([D)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 261
    :goto_0
    iget v3, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->n:I

    if-ge v1, v3, :cond_2

    .line 262
    iget-object v3, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->indx:[I

    aget v3, v3, v1

    mul-int/lit8 v3, v3, 0x2

    .line 263
    aget-wide v4, p1, v3

    add-int/lit8 v6, v3, 0x1

    .line 264
    aget-wide v7, p1, v6

    mul-int/lit8 v9, v1, 0x2

    .line 266
    aget-wide v10, p1, v9

    aput-wide v10, p1, v3

    add-int/lit8 v3, v9, 0x1

    .line 267
    aget-wide v10, p1, v3

    aput-wide v10, p1, v6

    if-eqz v2, :cond_0

    .line 272
    iget v6, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->stride:I

    mul-int/2addr v6, v1

    add-int/lit8 v10, v2, -0x1

    mul-int/lit8 v11, v10, 0x2

    add-int/2addr v6, v11

    :goto_1
    if-ge v10, v1, :cond_1

    .line 274
    iget-object v11, v0, Lorg/ejml/dense/row/decompose/lu/LUDecompositionBase_ZDRM;->dataLU:[D

    add-int/lit8 v12, v6, 0x1

    aget-wide v13, v11, v6

    add-int/lit8 v6, v12, 0x1

    .line 275
    aget-wide v11, v11, v12

    mul-int/lit8 v15, v10, 0x2

    .line 277
    aget-wide v16, p1, v15

    add-int/lit8 v15, v15, 0x1

    .line 278
    aget-wide v18, p1, v15

    mul-double v20, v13, v16

    mul-double v22, v11, v18

    sub-double v20, v20, v22

    sub-double v4, v4, v20

    mul-double v13, v13, v18

    mul-double v11, v11, v16

    add-double/2addr v13, v11

    sub-double/2addr v7, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    mul-double v10, v4, v4

    mul-double v12, v7, v7

    add-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v6, v10, v12

    if-eqz v6, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 286
    :cond_1
    aput-wide v4, p1, v9

    .line 287
    aput-wide v7, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

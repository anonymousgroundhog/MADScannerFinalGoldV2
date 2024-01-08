.class public Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;
.super Ljava/lang/Object;
.source "CholeskyUpLooking_FSCC.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition_F32<",
        "Lorg/ejml/data/FMatrixSparseCSC;",
        ">;"
    }
.end annotation


# instance fields
.field L:Lorg/ejml/data/FMatrixSparseCSC;

.field private N:I

.field columnCounter:Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;

.field counts:[I

.field private decomposed:Z

.field gs:Lorg/ejml/data/IGrowArray;

.field gw:Lorg/ejml/data/IGrowArray;

.field gx:Lorg/ejml/data/FGrowArray;

.field private locked:Z

.field parent:[I

.field post:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    .line 49
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0, v1}, Lorg/ejml/data/IGrowArray;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 50
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0, v1}, Lorg/ejml/data/IGrowArray;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gs:Lorg/ejml/data/IGrowArray;

    .line 51
    new-instance v0, Lorg/ejml/data/FGrowArray;

    invoke-direct {v0, v1}, Lorg/ejml/data/FGrowArray;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    new-array v0, v1, [I

    .line 52
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->parent:[I

    new-array v0, v1, [I

    .line 53
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->post:[I

    new-array v0, v1, [I

    .line 54
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->counts:[I

    .line 55
    new-instance v0, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;

    invoke-direct {v0, v2}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;-><init>(Z)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->columnCounter:Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;

    .line 58
    iput-boolean v2, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->decomposed:Z

    .line 60
    iput-boolean v2, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->locked:Z

    return-void
.end method

.method private init(I)V
    .locals 1

    .line 89
    iput p1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    .line 90
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->parent:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 91
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->parent:[I

    .line 92
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->post:[I

    .line 93
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->counts:[I

    .line 94
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    :cond_0
    return-void
.end method

.method private performDecomposition(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 99
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget v3, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v2

    .line 100
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gs:Lorg/ejml/data/IGrowArray;

    iget v4, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    invoke-static {v3, v4}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v3

    .line 101
    iget-object v4, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    iget v5, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v4

    .line 103
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v5, v5, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v6, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    const/4 v7, 0x0

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v7

    .line 105
    :goto_0
    iget v6, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    const/4 v8, 0x1

    if-ge v5, v6, :cond_5

    .line 107
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->parent:[I

    invoke-static {v1, v5, v6, v3, v2}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->searchNzRowsElim(Lorg/ejml/data/FMatrixSparseCSC;I[I[I[I)I

    move-result v6

    const/4 v9, 0x0

    .line 110
    aput v9, v4, v5

    .line 111
    iget-object v10, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v10, v10, v5

    .line 112
    iget-object v11, v1, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v12, v5, 0x1

    aget v11, v11, v12

    :goto_1
    if-ge v10, v11, :cond_1

    .line 116
    iget-object v13, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v13, v13, v10

    if-gt v13, v5, :cond_0

    .line 117
    iget-object v13, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v13, v13, v10

    iget-object v14, v1, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v14, v14, v10

    aput v14, v4, v13

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 120
    :cond_1
    aget v10, v4, v5

    .line 121
    aput v9, v4, v5

    .line 124
    :goto_2
    iget v11, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    if-ge v6, v11, :cond_3

    .line 125
    aget v11, v3, v6

    .line 126
    aget v13, v4, v11

    iget-object v14, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v14, v14, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v15, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v15, v15, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v15, v15, v11

    aget v14, v14, v15

    div-float/2addr v13, v14

    .line 127
    aput v9, v4, v11

    .line 128
    iget-object v14, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v14, v14, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v14, v14, v11

    add-int/2addr v14, v8

    :goto_3
    aget v15, v2, v11

    if-ge v14, v15, :cond_2

    .line 129
    iget-object v15, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v15, v15, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v15, v15, v14

    aget v16, v4, v15

    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aget v8, v8, v14

    mul-float/2addr v8, v13

    sub-float v16, v16, v8

    aput v16, v4, v15

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    mul-float v8, v13, v13

    sub-float/2addr v10, v8

    add-int/lit8 v8, v15, 0x1

    .line 132
    aput v8, v2, v11

    .line 133
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v5, v8, v15

    .line 134
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    aput v13, v8, v15

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    cmpg-float v6, v10, v9

    if-gtz v6, :cond_4

    return v7

    .line 142
    :cond_4
    aget v6, v2, v5

    add-int/lit8 v8, v6, 0x1

    aput v8, v2, v5

    .line 143
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aput v5, v8, v6

    .line 144
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v5, v5, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    float-to-double v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v5, v6

    move v5, v12

    goto/16 :goto_0

    :cond_5
    move v5, v8

    return v5
.end method


# virtual methods
.method public computeDeterminant()Lorg/ejml/data/Complex_F32;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 172
    :goto_0
    iget v2, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    if-ge v1, v2, :cond_0

    .line 173
    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v3, v3, v1

    aget v2, v2, v3

    mul-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    new-instance v1, Lorg/ejml/data/Complex_F32;

    mul-float/2addr v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/ejml/data/Complex_F32;-><init>(FF)V

    return-object v1
.end method

.method public decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z
    .locals 2

    .line 64
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    .line 67
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->locked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->decomposed:Z

    if-nez v0, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->performSymbolic(Lorg/ejml/data/FMatrixSparseCSC;)V

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->performDecomposition(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->decomposed:Z

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be a square matrix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->decompose(Lorg/ejml/data/FMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public getGw()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getGx()Lorg/ejml/data/FGrowArray;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    return-object v0
.end method

.method public getL()Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 3

    if-nez p1, :cond_0

    .line 163
    new-instance p1, Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v0, v0, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 40
    check-cast p1, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->getT(Lorg/ejml/data/FMatrixSparseCSC;)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p1

    return-object p1
.end method

.method public inputModified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLower()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStructureLocked()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->locked:Z

    return v0
.end method

.method public performSymbolic(Lorg/ejml/data/FMatrixSparseCSC;)V
    .locals 5

    .line 79
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-direct {p0, v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->init(I)V

    .line 81
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->parent:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->eliminationTree(Lorg/ejml/data/FMatrixSparseCSC;Z[ILorg/ejml/data/IGrowArray;)V

    .line 82
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->parent:[I

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->N:I

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->post:[I

    iget-object v4, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-static {v0, v1, v3, v4}, Lorg/ejml/sparse/csc/misc/TriangularSolver_FSCC;->postorder([II[ILorg/ejml/data/IGrowArray;)V

    .line 83
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->columnCounter:Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->parent:[I

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->post:[I

    iget-object v4, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->counts:[I

    invoke-virtual {v0, p1, v1, v3, v4}, Lorg/ejml/sparse/csc/misc/ColumnCounts_FSCC;->process(Lorg/ejml/data/FMatrixSparseCSC;[I[I[I)V

    .line 84
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget v1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-virtual {v0, v1, p1, v2}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 85
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->L:Lorg/ejml/data/FMatrixSparseCSC;

    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->counts:[I

    invoke-virtual {p1, v0}, Lorg/ejml/data/FMatrixSparseCSC;->histogramToStructure([I)V

    return-void
.end method

.method public setStructureLocked(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_FSCC;->locked:Z

    return-void
.end method

.class public Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;
.super Ljava/lang/Object;
.source "CholeskyUpLooking_DSCC.java"

# interfaces
.implements Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/decomposition/CholeskySparseDecomposition_F64<",
        "Lorg/ejml/data/DMatrixSparseCSC;",
        ">;"
    }
.end annotation


# instance fields
.field L:Lorg/ejml/data/DMatrixSparseCSC;

.field private N:I

.field columnCounter:Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;

.field counts:[I

.field private decomposed:Z

.field gs:Lorg/ejml/data/IGrowArray;

.field gw:Lorg/ejml/data/IGrowArray;

.field gx:Lorg/ejml/data/DGrowArray;

.field private locked:Z

.field parent:[I

.field post:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    .line 47
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0, v1}, Lorg/ejml/data/IGrowArray;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    .line 48
    new-instance v0, Lorg/ejml/data/IGrowArray;

    invoke-direct {v0, v1}, Lorg/ejml/data/IGrowArray;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gs:Lorg/ejml/data/IGrowArray;

    .line 49
    new-instance v0, Lorg/ejml/data/DGrowArray;

    invoke-direct {v0, v1}, Lorg/ejml/data/DGrowArray;-><init>(I)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    new-array v0, v1, [I

    .line 50
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->parent:[I

    new-array v0, v1, [I

    .line 51
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->post:[I

    new-array v0, v1, [I

    .line 52
    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->counts:[I

    .line 53
    new-instance v0, Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;

    invoke-direct {v0, v2}, Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;-><init>(Z)V

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->columnCounter:Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;

    .line 56
    iput-boolean v2, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->decomposed:Z

    .line 58
    iput-boolean v2, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->locked:Z

    return-void
.end method

.method private init(I)V
    .locals 1

    .line 87
    iput p1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    .line 88
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->parent:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 89
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->parent:[I

    .line 90
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->post:[I

    .line 91
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->counts:[I

    .line 92
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    :cond_0
    return-void
.end method

.method private performDecomposition(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 97
    iget-object v2, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget v3, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v2

    .line 98
    iget-object v3, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gs:Lorg/ejml/data/IGrowArray;

    iget v4, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    invoke-static {v3, v4}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object v3

    .line 99
    iget-object v4, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    iget v5, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    invoke-static {v4, v5}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v4

    .line 101
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v5, v5, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v6, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    const/4 v7, 0x0

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v7

    .line 103
    :goto_0
    iget v6, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    if-ge v5, v6, :cond_5

    .line 105
    iget-object v6, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->parent:[I

    invoke-static {v1, v5, v6, v3, v2}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->searchNzRowsElim(Lorg/ejml/data/DMatrixSparseCSC;I[I[I[I)I

    move-result v6

    const-wide/16 v9, 0x0

    .line 108
    aput-wide v9, v4, v5

    .line 109
    iget-object v11, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v11, v11, v5

    .line 110
    iget-object v12, v1, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    add-int/lit8 v13, v5, 0x1

    aget v12, v12, v13

    :goto_1
    if-ge v11, v12, :cond_1

    .line 114
    iget-object v14, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v14, v14, v11

    if-gt v14, v5, :cond_0

    .line 115
    iget-object v14, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v14, v14, v11

    iget-object v15, v1, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v15, v15, v11

    aput-wide v15, v4, v14

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 118
    :cond_1
    aget-wide v11, v4, v5

    .line 119
    aput-wide v9, v4, v5

    .line 122
    :goto_2
    iget v14, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    if-ge v6, v14, :cond_3

    .line 123
    aget v14, v3, v6

    .line 124
    aget-wide v15, v4, v14

    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v7, v7, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v8, v8, v14

    aget-wide v7, v7, v8

    div-double/2addr v15, v7

    .line 125
    aput-wide v9, v4, v14

    .line 126
    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v7, v7, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v7, v7, v14

    const/4 v8, 0x1

    add-int/2addr v7, v8

    :goto_3
    aget v8, v2, v14

    if-ge v7, v8, :cond_2

    .line 127
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v8, v8, v7

    aget-wide v17, v4, v8

    iget-object v9, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v9, v9, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aget-wide v9, v9, v7

    mul-double/2addr v9, v15

    sub-double v17, v17, v9

    aput-wide v17, v4, v8

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_2
    mul-double v9, v15, v15

    sub-double/2addr v11, v9

    add-int/lit8 v7, v8, 0x1

    .line 130
    aput v7, v2, v14

    .line 131
    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v7, v7, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v5, v7, v8

    .line 132
    iget-object v7, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v7, v7, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    aput-wide v15, v7, v8

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    goto :goto_2

    :cond_3
    move-wide v6, v9

    cmpg-double v6, v11, v6

    if-gtz v6, :cond_4

    const/4 v6, 0x0

    return v6

    :cond_4
    const/4 v6, 0x0

    .line 140
    aget v7, v2, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v2, v5

    .line 141
    iget-object v8, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v8, v8, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aput v5, v8, v7

    .line 142
    iget-object v5, v0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v5, v5, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v5, v7

    move v7, v6

    move v5, v13

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public computeDeterminant()Lorg/ejml/data/Complex_F64;
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    .line 170
    :goto_0
    iget v3, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    if-ge v2, v3, :cond_0

    .line 171
    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v3, v3, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v4, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v4, v4, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v4, v4, v2

    aget-wide v3, v3, v4

    mul-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance v2, Lorg/ejml/data/Complex_F64;

    mul-double/2addr v0, v0

    const-wide/16 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/ejml/data/Complex_F64;-><init>(DD)V

    return-object v2
.end method

.method public decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z
    .locals 2

    .line 62
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    if-ne v0, v1, :cond_3

    .line 65
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->locked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->decomposed:Z

    if-nez v0, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->performSymbolic(Lorg/ejml/data/DMatrixSparseCSC;)V

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->performDecomposition(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->decomposed:Z

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 63
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be a square matrix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic decompose(Lorg/ejml/data/Matrix;)Z
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->decompose(Lorg/ejml/data/DMatrixSparseCSC;)Z

    move-result p1

    return p1
.end method

.method public getGw()Lorg/ejml/data/IGrowArray;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    return-object v0
.end method

.method public getGx()Lorg/ejml/data/DGrowArray;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    return-object v0
.end method

.method public getL()Lorg/ejml/data/DMatrixSparseCSC;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    return-object v0
.end method

.method public getT(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 3

    if-nez p1, :cond_0

    .line 161
    new-instance p1, Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v0, v0, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, v1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    iget-object v2, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v2, v2, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    invoke-direct {p1, v0, v1, v2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixSparseCSC;->set(Lorg/ejml/data/Matrix;)V

    return-object p1
.end method

.method public bridge synthetic getT(Lorg/ejml/data/Matrix;)Lorg/ejml/data/Matrix;
    .locals 0

    .line 39
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->getT(Lorg/ejml/data/DMatrixSparseCSC;)Lorg/ejml/data/DMatrixSparseCSC;

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

    .line 195
    iget-boolean v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->locked:Z

    return v0
.end method

.method public performSymbolic(Lorg/ejml/data/DMatrixSparseCSC;)V
    .locals 5

    .line 77
    iget v0, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-direct {p0, v0}, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->init(I)V

    .line 79
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->parent:[I

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->eliminationTree(Lorg/ejml/data/DMatrixSparseCSC;Z[ILorg/ejml/data/IGrowArray;)V

    .line 80
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->parent:[I

    iget v1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->N:I

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->post:[I

    iget-object v4, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    invoke-static {v0, v1, v3, v4}, Lorg/ejml/sparse/csc/misc/TriangularSolver_DSCC;->postorder([II[ILorg/ejml/data/IGrowArray;)V

    .line 81
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->columnCounter:Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;

    iget-object v1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->parent:[I

    iget-object v3, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->post:[I

    iget-object v4, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->counts:[I

    invoke-virtual {v0, p1, v1, v3, v4}, Lorg/ejml/sparse/csc/misc/ColumnCounts_DSCC;->process(Lorg/ejml/data/DMatrixSparseCSC;[I[I[I)V

    .line 82
    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget p1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-virtual {v0, v1, p1, v2}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 83
    iget-object p1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->L:Lorg/ejml/data/DMatrixSparseCSC;

    iget-object v0, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->counts:[I

    invoke-virtual {p1, v0}, Lorg/ejml/data/DMatrixSparseCSC;->histogramToStructure([I)V

    return-void
.end method

.method public setStructureLocked(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lorg/ejml/sparse/csc/decomposition/chol/CholeskyUpLooking_DSCC;->locked:Z

    return-void
.end method

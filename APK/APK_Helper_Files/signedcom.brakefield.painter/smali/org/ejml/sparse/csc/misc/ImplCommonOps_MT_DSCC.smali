.class public Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC;
.super Ljava/lang/Object;
.source "ImplCommonOps_MT_DSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "D",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;",
            ">;)V"
        }
    .end annotation

    move-object v7, p2

    move-object/from16 v8, p7

    .line 50
    iget v9, v7, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    new-instance v10, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p2

    move-wide v2, p0

    move-object/from16 v4, p5

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_DSCC$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;D)V

    const/4 v0, 0x0

    invoke-static {v0, v9, v8, v10}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    .line 77
    iget v0, v7, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v1, v7, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    move-object/from16 v2, p6

    invoke-static {v2, v0, v1, v8}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_DSCC;->stitchMatrix(Lorg/ejml/data/DMatrixSparseCSC;IILpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method static synthetic lambda$add$0(Lorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/data/DMatrixSparseCSC;DLorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;II)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p6

    move/from16 v9, p8

    .line 51
    iget-object v10, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->mat:Lorg/ejml/data/DMatrixSparseCSC;

    .line 52
    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    sub-int v11, v9, p7

    invoke-virtual {v10, v1, v11, v11}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    .line 53
    iget-object v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 55
    iget-object v1, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->gx:Lorg/ejml/data/DGrowArray;

    iget v2, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/DGrowArray;I)[D

    move-result-object v12

    .line 56
    iget-object v0, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_DSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget v1, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, v8, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v13

    move/from16 v14, p7

    :goto_0
    if-ge v14, v9, :cond_1

    sub-int v15, v14, p7

    .line 60
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v0, v15

    add-int/lit8 v16, v15, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move-wide/from16 v2, p1

    move-object v4, v10

    move/from16 v5, v16

    move-object v6, v12

    move-object v7, v13

    .line 62
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;I[D[I)V

    move-object/from16 v0, p3

    move-wide/from16 v2, p4

    .line 63
    invoke-static/range {v0 .. v7}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_DSCC;->multAddColA(Lorg/ejml/data/DMatrixSparseCSC;IDLorg/ejml/data/DMatrixSparseCSC;I[D[I)V

    .line 66
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v15

    .line 67
    iget-object v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v16

    :goto_1
    if-ge v0, v1, :cond_0

    .line 70
    iget-object v2, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_values:[D

    iget-object v3, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget-wide v3, v12, v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, v10, Lorg/ejml/data/DMatrixSparseCSC;->col_idx:[I

    iget v1, v10, Lorg/ejml/data/DMatrixSparseCSC;->nz_length:I

    aput v1, v0, v11

    return-void
.end method

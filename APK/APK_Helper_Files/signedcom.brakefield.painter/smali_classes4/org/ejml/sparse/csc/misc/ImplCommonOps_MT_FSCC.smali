.class public Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC;
.super Ljava/lang/Object;
.source "ImplCommonOps_MT_FSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;Lorg/ejml/data/FMatrixSparseCSC;Lpabeles/concurrency/GrowArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "F",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lorg/ejml/data/FMatrixSparseCSC;",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget v0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    new-instance v1, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, p3, p2}, Lorg/ejml/sparse/csc/misc/ImplCommonOps_MT_FSCC$$ExternalSyntheticLambda0;-><init>(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;F)V

    const/4 p0, 0x0

    invoke-static {p0, v0, p5, v1}, Lorg/ejml/concurrency/EjmlConcurrency;->loopBlocks(IILpabeles/concurrency/GrowArray;Lpabeles/concurrency/IntRangeObjectConsumer;)V

    .line 79
    iget p0, p1, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget p1, p1, Lorg/ejml/data/FMatrixSparseCSC;->numCols:I

    invoke-static {p4, p0, p1, p5}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_MT_FSCC;->stitchMatrix(Lorg/ejml/data/FMatrixSparseCSC;IILpabeles/concurrency/GrowArray;)V

    return-void
.end method

.method static synthetic lambda$add$0(Lorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/data/FMatrixSparseCSC;FLorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;II)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p4

    move/from16 v8, p6

    .line 53
    iget-object v9, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->mat:Lorg/ejml/data/FMatrixSparseCSC;

    .line 54
    iget v1, v7, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    sub-int v10, v8, p5

    invoke-virtual {v9, v1, v10, v10}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    .line 55
    iget-object v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 57
    iget-object v1, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->gx:Lorg/ejml/data/FGrowArray;

    iget v2, v7, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/FGrowArray;I)[F

    move-result-object v11

    .line 58
    iget-object v0, v0, Lorg/ejml/sparse/csc/mult/Workspace_MT_FSCC;->gw:Lorg/ejml/data/IGrowArray;

    iget v1, v7, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    iget v2, v7, Lorg/ejml/data/FMatrixSparseCSC;->numRows:I

    invoke-static {v0, v1, v2}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object v12

    move/from16 v13, p5

    :goto_0
    if-ge v13, v8, :cond_1

    sub-int v14, v13, p5

    .line 62
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v1, v0, v14

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, p1

    move-object v3, v9

    move v4, v15

    move-object v5, v11

    move-object v6, v12

    .line 64
    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;I[F[I)V

    move-object/from16 v0, p2

    move/from16 v2, p3

    .line 65
    invoke-static/range {v0 .. v6}, Lorg/ejml/sparse/csc/mult/ImplMultiplication_FSCC;->multAddColA(Lorg/ejml/data/FMatrixSparseCSC;IFLorg/ejml/data/FMatrixSparseCSC;I[F[I)V

    .line 68
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v0, v0, v14

    .line 69
    iget-object v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    aget v1, v1, v15

    :goto_1
    if-ge v0, v1, :cond_0

    .line 72
    iget-object v2, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_values:[F

    iget-object v3, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_rows:[I

    aget v3, v3, v0

    aget v3, v11, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, v9, Lorg/ejml/data/FMatrixSparseCSC;->col_idx:[I

    iget v1, v9, Lorg/ejml/data/FMatrixSparseCSC;->nz_length:I

    aput v1, v0, v10

    return-void
.end method

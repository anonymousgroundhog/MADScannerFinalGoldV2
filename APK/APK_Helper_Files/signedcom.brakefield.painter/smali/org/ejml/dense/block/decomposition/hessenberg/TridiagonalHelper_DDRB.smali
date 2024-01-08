.class public Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;
.super Ljava/lang/Object;
.source "TridiagonalHelper_DDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyReflectorsToRow(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 26

    move/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v12, p3

    .line 176
    iget v0, v14, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, v14, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 178
    iget-object v0, v14, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v11, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    .line 179
    iget-object v0, v15, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    iget-object v10, v0, Lorg/ejml/data/DMatrixD1;->data:[D

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v12, :cond_1

    .line 185
    iget v0, v14, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v14, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 187
    iget-object v1, v14, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/DMatrixD1;

    iget v1, v1, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v2, v14, Lorg/ejml/data/DSubmatrixD1;->row0:I

    mul-int/2addr v1, v2

    iget v2, v14, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int v2, v2, v16

    add-int/2addr v1, v2

    mul-int/2addr v0, v9

    add-int/2addr v1, v0

    add-int/2addr v1, v12

    .line 188
    iget-object v2, v15, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/DMatrixD1;

    iget v2, v2, Lorg/ejml/data/DMatrixD1;->numCols:I

    iget v3, v15, Lorg/ejml/data/DSubmatrixD1;->row0:I

    mul-int/2addr v2, v3

    iget v3, v15, Lorg/ejml/data/DSubmatrixD1;->col0:I

    mul-int v3, v3, v16

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/2addr v2, v12

    add-int/lit8 v7, v9, 0x1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ne v7, v12, :cond_0

    move-wide/from16 v17, v3

    goto :goto_1

    .line 190
    :cond_0
    aget-wide v0, v11, v1

    move-wide/from16 v17, v0

    .line 191
    :goto_1
    aget-wide v19, v10, v2

    .line 194
    invoke-virtual {v14, v9, v7}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v5

    .line 195
    invoke-virtual {v14, v9, v7, v3, v4}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 198
    iget v0, v14, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v14, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v21, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-wide/from16 v22, v5

    move-object/from16 v5, p2

    move v6, v9

    move/from16 v24, v7

    move-wide/from16 v7, v17

    move/from16 v17, v9

    move-object/from16 v9, p1

    move-object/from16 v18, v10

    move/from16 v10, p3

    move-object/from16 v25, v11

    move/from16 v11, p3

    move/from16 v12, v21

    invoke-static/range {v0 .. v12}, Lorg/ejml/dense/block/VectorOps_DDRB;->add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    .line 199
    iget v0, v14, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v14, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v12, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    move/from16 v6, v17

    move-wide/from16 v7, v19

    invoke-static/range {v0 .. v12}, Lorg/ejml/dense/block/VectorOps_DDRB;->add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    move/from16 v0, v17

    move-wide/from16 v1, v22

    move/from16 v9, v24

    .line 201
    invoke-virtual {v14, v0, v9, v1, v2}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    move/from16 v12, p3

    move-object/from16 v10, v18

    move-object/from16 v11, v25

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static computeRowOfV(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ID)V
    .locals 19

    move-object/from16 v13, p1

    move/from16 v14, p3

    const/4 v5, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 315
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->innerProdRow(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D

    move-result-wide v0

    add-int/lit8 v15, v14, 0x1

    .line 318
    invoke-virtual {v13, v14, v15}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v11

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 319
    invoke-virtual {v13, v14, v15, v2, v3}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    mul-double v5, v5, p4

    mul-double v7, v5, v0

    .line 322
    iget v0, v13, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v13, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v16, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p1

    move/from16 v6, p3

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v17, v11

    move v11, v15

    move/from16 v12, v16

    invoke-static/range {v0 .. v12}, Lorg/ejml/dense/block/VectorOps_DDRB;->add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    move-wide/from16 v0, v17

    .line 324
    invoke-virtual {v13, v14, v15, v0, v1}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    return-void
.end method

.method public static computeV_blockVector(ILorg/ejml/data/DSubmatrixD1;[DLorg/ejml/data/DSubmatrixD1;)V
    .locals 10

    .line 144
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 147
    :cond_0
    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v3, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 148
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v2, v1

    aget-wide v8, p2, v2

    move v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, v1

    move-wide v6, v8

    .line 154
    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->computeY(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ID)V

    .line 157
    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->computeRowOfV(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static computeW_row(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;[DI)V
    .locals 22

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 108
    iget v0, v13, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, v13, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int v7, v0, v1

    .line 109
    iget-object v0, v14, Lorg/ejml/data/DSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/DMatrixD1;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/ejml/dense/row/CommonOps_DDRM;->fill(Lorg/ejml/data/DMatrixD1;D)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    add-int/lit8 v8, p4, 0x1

    .line 112
    aget-wide v0, p3, p4

    neg-double v5, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v6}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->scale_row(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;IID)V

    .line 114
    iget v0, v14, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v14, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/4 v0, 0x1

    move v12, v0

    :goto_0
    if-ge v12, v15, :cond_1

    add-int/lit8 v16, v8, 0x1

    .line 119
    aget-wide v0, p3, v8

    neg-double v10, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v12, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move-object/from16 v3, p1

    move v4, v9

    .line 123
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->innerProdRow(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D

    move-result-wide v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v7, v10, v0

    const/16 v17, 0x1

    .line 124
    iget v0, v13, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v13, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v18, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v5, p2

    move v6, v9

    move/from16 v19, v9

    move-object/from16 v9, p2

    move-wide/from16 v20, v10

    move v10, v12

    move/from16 v11, v17

    move/from16 v17, v12

    move/from16 v12, v18

    invoke-static/range {v0 .. v12}, Lorg/ejml/dense/block/VectorOps_DDRB;->add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    add-int/lit8 v9, v19, 0x1

    move/from16 v12, v17

    move-wide/from16 v10, v20

    goto :goto_1

    :cond_0
    move-wide/from16 v20, v10

    move/from16 v17, v12

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x1

    .line 128
    iget v0, v13, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v13, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v12, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-wide/from16 v3, v20

    move-object/from16 v5, p2

    move/from16 v6, v17

    move-object/from16 v9, p2

    move/from16 v10, v17

    invoke-static/range {v0 .. v12}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    add-int/lit8 v12, v17, 0x1

    move/from16 v8, v16

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static computeY(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ID)V
    .locals 21

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p3

    .line 224
    invoke-static/range {p0 .. p3}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->multA_u(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v15, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    move v4, v12

    .line 230
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->innerProdRow(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D

    move-result-wide v7

    move-object/from16 v3, p1

    .line 233
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->innerProdRow(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D

    move-result-wide v16

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v18, v15, 0x1

    .line 238
    iget v0, v13, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v13, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v19, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v5, p1

    move v6, v12

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, v18

    move/from16 v20, v12

    move/from16 v12, v19

    invoke-static/range {v0 .. v12}, Lorg/ejml/dense/block/VectorOps_DDRB;->add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    .line 242
    iget v0, v13, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v13, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v12, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v5, p2

    move/from16 v6, v20

    move-wide/from16 v7, v16

    invoke-static/range {v0 .. v12}, Lorg/ejml/dense/block/VectorOps_DDRB;->add_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    add-int/lit8 v12, v20, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p4

    neg-double v3, v0

    add-int/lit8 v7, v15, 0x1

    .line 246
    iget v0, v14, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v1, v14, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v8, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v0 .. v8}, Lorg/ejml/dense/block/VectorOps_DDRB;->scale_row(ILorg/ejml/data/DSubmatrixD1;IDLorg/ejml/data/DSubmatrixD1;III)V

    return-void
.end method

.method public static innerProdRowSymm(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D
    .locals 10

    add-int/2addr p5, p2

    .line 281
    iget v0, p3, Lorg/ejml/data/DSubmatrixD1;->col0:I

    add-int/2addr v0, p5

    iget v1, p3, Lorg/ejml/data/DSubmatrixD1;->col1:I

    if-lt v0, v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    if-ge p5, p4, :cond_1

    .line 286
    invoke-virtual {p3, p5, p4}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v0

    add-int/lit8 v7, p5, 0x1

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v8, p4

    .line 288
    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/block/VectorOps_DDRB;->dot_row_col(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;III)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 289
    iget p5, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v9, p5, v2

    move v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v3 .. v9}, Lorg/ejml/dense/block/VectorOps_DDRB;->dot_row(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;III)D

    move-result-wide p0

    :goto_0
    add-double/2addr v0, p0

    return-wide v0

    .line 294
    :cond_1
    invoke-virtual {p3, p4, p5}, Lorg/ejml/data/DSubmatrixD1;->get(II)D

    move-result-wide v0

    add-int/lit8 v7, p5, 0x1

    .line 296
    iget p5, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int v8, p5, v2

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/block/VectorOps_DDRB;->dot_row(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;III)D

    move-result-wide p0

    goto :goto_0
.end method

.method public static multA_u(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V
    .locals 8

    .line 265
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v7, 0x1

    move v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p1

    move v6, v1

    .line 269
    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->innerProdRowSymm(ILorg/ejml/data/DSubmatrixD1;ILorg/ejml/data/DSubmatrixD1;II)D

    move-result-wide v2

    .line 271
    invoke-virtual {p2, p3, v1, v2, v3}, Lorg/ejml/data/DSubmatrixD1;->set(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static tridiagUpperRow(ILorg/ejml/data/DSubmatrixD1;[DLorg/ejml/data/DSubmatrixD1;)V
    .locals 11

    .line 55
    iget v0, p1, Lorg/ejml/data/DSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 58
    :cond_0
    iget v1, p1, Lorg/ejml/data/DSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/DSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x1

    .line 59
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 60
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ge v1, v2, :cond_2

    .line 65
    invoke-static {p0, p1, p2, v1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_DDRB;->computeHouseHolderRow(ILorg/ejml/data/DSubmatrixD1;[DI)Z

    .line 66
    iget v3, p1, Lorg/ejml/data/DSubmatrixD1;->row0:I

    add-int/2addr v3, v1

    aget-wide v9, p2, v3

    move v3, p0

    move-object v4, p1

    move-object v5, p3

    move v6, v1

    move-wide v7, v9

    .line 69
    invoke-static/range {v3 .. v8}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->computeY(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ID)V

    .line 72
    invoke-static/range {v3 .. v8}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->computeRowOfV(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;ID)V

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 76
    invoke-static {p0, p1, p3, v1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_DDRB;->applyReflectorsToRow(ILorg/ejml/data/DSubmatrixD1;Lorg/ejml/data/DSubmatrixD1;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

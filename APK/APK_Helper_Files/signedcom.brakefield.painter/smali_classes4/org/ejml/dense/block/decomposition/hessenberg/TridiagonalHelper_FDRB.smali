.class public Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;
.super Ljava/lang/Object;
.source "TridiagonalHelper_FDRB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyReflectorsToRow(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I)V
    .locals 23

    move/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    .line 178
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 180
    iget-object v0, v12, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v10, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    .line 181
    iget-object v0, v13, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    iget-object v9, v0, Lorg/ejml/data/FMatrixD1;->data:[F

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v14, :cond_1

    .line 187
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 189
    iget-object v1, v12, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v1, Lorg/ejml/data/FMatrixD1;

    iget v1, v1, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v2, v12, Lorg/ejml/data/FSubmatrixD1;->row0:I

    mul-int/2addr v1, v2

    iget v2, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v2, v15

    add-int/2addr v1, v2

    mul-int/2addr v0, v8

    add-int/2addr v1, v0

    add-int/2addr v1, v14

    .line 190
    iget-object v2, v13, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v2, Lorg/ejml/data/FMatrixD1;

    iget v2, v2, Lorg/ejml/data/FMatrixD1;->numCols:I

    iget v3, v13, Lorg/ejml/data/FSubmatrixD1;->row0:I

    mul-int/2addr v2, v3

    iget v3, v13, Lorg/ejml/data/FSubmatrixD1;->col0:I

    mul-int/2addr v3, v15

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/2addr v2, v14

    add-int/lit8 v7, v8, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne v7, v14, :cond_0

    move v6, v0

    goto :goto_1

    .line 192
    :cond_0
    aget v1, v10, v1

    move v6, v1

    .line 193
    :goto_1
    aget v16, v9, v2

    .line 196
    invoke-virtual {v12, v8, v7}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v5

    .line 197
    invoke-virtual {v12, v8, v7, v0}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 200
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v17, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v4, p2

    move/from16 v18, v5

    move v5, v8

    move/from16 v19, v7

    move-object/from16 v7, p1

    move/from16 v20, v8

    move/from16 v8, p3

    move-object/from16 v21, v9

    move/from16 v9, p3

    move-object/from16 v22, v10

    move/from16 v10, v17

    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/VectorOps_FDRB;->add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    .line 201
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v10, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p1

    move/from16 v5, v20

    move/from16 v6, v16

    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/VectorOps_FDRB;->add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v0, v20

    .line 203
    invoke-virtual {v12, v0, v8, v1}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static computeRowOfV(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V
    .locals 15

    move-object/from16 v11, p1

    move/from16 v12, p3

    const/4 v5, 0x1

    move v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 317
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v0

    add-int/lit8 v13, v12, 0x1

    .line 320
    invoke-virtual {v11, v12, v13}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v14

    const/high16 v1, 0x3f800000    # 1.0f

    .line 321
    invoke-virtual {v11, v12, v13, v1}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v1, -0x41000000    # -0.5f

    mul-float v1, v1, p4

    mul-float v6, v1, v0

    .line 324
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v10, v0, v1

    move v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move-object/from16 v7, p2

    move/from16 v8, p3

    move v9, v13

    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/VectorOps_FDRB;->add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    .line 326
    invoke-virtual {v11, v12, v13, v14}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    return-void
.end method

.method public static computeV_blockVector(ILorg/ejml/data/FSubmatrixD1;[FLorg/ejml/data/FSubmatrixD1;)V
    .locals 4

    .line 146
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 149
    :cond_0
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 150
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v2, v1

    aget v2, p2, v2

    .line 156
    invoke-static {p0, p1, p3, v1, v2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->computeY(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V

    .line 159
    invoke-static {p0, p1, p3, v1, v2}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->computeRowOfV(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static computeW_row(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;[FI)V
    .locals 19

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 110
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int v6, v0, v1

    .line 111
    iget-object v0, v12, Lorg/ejml/data/FSubmatrixD1;->original:Lorg/ejml/data/Matrix;

    check-cast v0, Lorg/ejml/data/FMatrixD1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ejml/dense/row/CommonOps_FDRM;->fill(Lorg/ejml/data/FMatrixD1;F)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    add-int/lit8 v7, p4, 0x1

    .line 114
    aget v0, p3, p4

    neg-float v5, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->scale_row(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IIF)V

    .line 116
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v0, 0x1

    move v14, v0

    :goto_0
    if-ge v14, v13, :cond_1

    add-int/lit8 v15, v7, 0x1

    .line 121
    aget v0, p3, v7

    neg-float v10, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v14, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move-object/from16 v3, p1

    move v4, v9

    .line 125
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v6, v10, v0

    const/16 v16, 0x1

    .line 126
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v17, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p2

    move v5, v9

    move-object/from16 v7, p2

    move v8, v14

    move/from16 v18, v9

    move/from16 v9, v16

    move/from16 v16, v10

    move/from16 v10, v17

    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/VectorOps_FDRB;->add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    add-int/lit8 v9, v18, 0x1

    move/from16 v10, v16

    goto :goto_1

    :cond_0
    move/from16 v16, v10

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    .line 130
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v10, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, v16

    move-object/from16 v4, p2

    move v5, v14

    move-object/from16 v7, p2

    move v8, v14

    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    add-int/lit8 v14, v14, 0x1

    move v7, v15

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static computeY(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V
    .locals 17

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    .line 226
    invoke-static/range {p0 .. p3}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->multA_u(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I)V

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    if-ge v14, v13, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    move v4, v14

    .line 232
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v6

    move-object/from16 v3, p1

    .line 235
    invoke-static/range {v0 .. v5}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->innerProdRow(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v15

    const/high16 v3, 0x3f800000    # 1.0f

    add-int/lit8 v16, v13, 0x1

    .line 240
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v10, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p1

    move v5, v14

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, v16

    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/VectorOps_FDRB;->add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    .line 244
    iget v0, v11, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v11, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v10, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p2

    move v6, v15

    invoke-static/range {v0 .. v10}, Lorg/ejml/dense/block/VectorOps_FDRB;->add_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p4

    neg-float v3, v0

    add-int/lit8 v6, v13, 0x1

    .line 248
    iget v0, v12, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, v12, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, v0, v1

    move/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v0 .. v7}, Lorg/ejml/dense/block/VectorOps_FDRB;->scale_row(ILorg/ejml/data/FSubmatrixD1;IFLorg/ejml/data/FSubmatrixD1;III)V

    return-void
.end method

.method public static innerProdRowSymm(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F
    .locals 9

    add-int/2addr p5, p2

    .line 283
    iget v0, p3, Lorg/ejml/data/FSubmatrixD1;->col0:I

    add-int/2addr v0, p5

    iget v1, p3, Lorg/ejml/data/FSubmatrixD1;->col1:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ge p5, p4, :cond_1

    .line 288
    invoke-virtual {p3, p5, p4}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v0

    add-int/lit8 v6, p5, 0x1

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v7, p4

    .line 290
    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/block/VectorOps_FDRB;->dot_row_col(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;III)F

    move-result p5

    add-float/2addr v0, p5

    .line 291
    iget p5, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v8, p5, v1

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v8}, Lorg/ejml/dense/block/VectorOps_FDRB;->dot_row(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;III)F

    move-result p0

    :goto_0
    add-float/2addr v0, p0

    return v0

    .line 296
    :cond_1
    invoke-virtual {p3, p4, p5}, Lorg/ejml/data/FSubmatrixD1;->get(II)F

    move-result v0

    add-int/lit8 v6, p5, 0x1

    .line 298
    iget p5, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int v7, p5, v1

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lorg/ejml/dense/block/VectorOps_FDRB;->dot_row(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;III)F

    move-result p0

    goto :goto_0
.end method

.method public static multA_u(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I)V
    .locals 8

    .line 267
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

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

    .line 271
    invoke-static/range {v2 .. v7}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->innerProdRowSymm(ILorg/ejml/data/FSubmatrixD1;ILorg/ejml/data/FSubmatrixD1;II)F

    move-result v2

    .line 273
    invoke-virtual {p2, p3, v1, v2}, Lorg/ejml/data/FSubmatrixD1;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static tridiagUpperRow(ILorg/ejml/data/FSubmatrixD1;[FLorg/ejml/data/FSubmatrixD1;)V
    .locals 4

    .line 57
    iget v0, p1, Lorg/ejml/data/FSubmatrixD1;->row1:I

    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 60
    :cond_0
    iget v1, p1, Lorg/ejml/data/FSubmatrixD1;->col1:I

    iget v2, p1, Lorg/ejml/data/FSubmatrixD1;->col0:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x1

    .line 61
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ge v1, v2, :cond_2

    .line 67
    invoke-static {p0, p1, p2, v1}, Lorg/ejml/dense/block/decomposition/qr/BlockHouseHolder_FDRB;->computeHouseHolderRow(ILorg/ejml/data/FSubmatrixD1;[FI)Z

    .line 68
    iget v3, p1, Lorg/ejml/data/FSubmatrixD1;->row0:I

    add-int/2addr v3, v1

    aget v3, p2, v3

    .line 71
    invoke-static {p0, p1, p3, v1, v3}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->computeY(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V

    .line 74
    invoke-static {p0, p1, p3, v1, v3}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->computeRowOfV(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;IF)V

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 78
    invoke-static {p0, p1, p3, v1}, Lorg/ejml/dense/block/decomposition/hessenberg/TridiagonalHelper_FDRB;->applyReflectorsToRow(ILorg/ejml/data/FSubmatrixD1;Lorg/ejml/data/FSubmatrixD1;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

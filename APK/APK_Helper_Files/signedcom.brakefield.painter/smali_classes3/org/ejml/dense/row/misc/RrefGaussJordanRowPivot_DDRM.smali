.class public Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_DDRM;
.super Ljava/lang/Object;
.source "RrefGaussJordanRowPivot_DDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/ReducedRowEchelonForm_F64;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/ReducedRowEchelonForm_F64<",
        "Lorg/ejml/data/DMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field tol:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static swapRows(Lorg/ejml/data/DMatrixRMaj;II)V
    .locals 6

    .line 97
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    .line 98
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr p2, v0

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget v1, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v1, v1, p1

    .line 102
    iget-object v3, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, p2

    aput-wide v4, v3, p1

    .line 103
    iget-object v3, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aput-wide v1, v3, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public reduce(Lorg/ejml/data/DMatrixRMaj;I)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 41
    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-lt v2, v1, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    move-object/from16 v5, p0

    .line 51
    iget-wide v6, v5, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_DDRM;->tol:D

    const/4 v8, -0x1

    move v9, v4

    move v10, v8

    .line 53
    :goto_1
    iget v11, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v9, v11, :cond_1

    .line 54
    iget-object v11, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iget v12, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v12, v9

    add-int/2addr v12, v3

    aget-wide v11, v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpl-double v13, v11, v6

    if-lez v13, :cond_0

    move v10, v9

    move-wide v6, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    if-eq v4, v10, :cond_3

    .line 69
    invoke-static {v0, v4, v10}, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_DDRM;->swapRows(Lorg/ejml/data/DMatrixRMaj;II)V

    :cond_3
    const/4 v6, 0x0

    .line 72
    :goto_2
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ge v6, v7, :cond_6

    if-ne v6, v4, :cond_4

    goto :goto_4

    .line 75
    :cond_4
    iget v7, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v3

    .line 76
    iget v8, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v3

    .line 78
    iget-object v9, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v9, v9, v8

    iget-object v11, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v12, v7, 0x1

    aget-wide v13, v11, v7

    div-double/2addr v9, v13

    .line 79
    iget-object v7, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v11, v8, 0x1

    const-wide/16 v13, 0x0

    aput-wide v13, v7, v8

    add-int/lit8 v7, v3, 0x1

    .line 80
    :goto_3
    iget v8, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v7, v8, :cond_5

    .line 81
    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v13, v11, 0x1

    aget-wide v14, v8, v11

    iget-object v2, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v16, v12, 0x1

    aget-wide v17, v2, v12

    mul-double v17, v17, v9

    sub-double v14, v14, v17

    aput-wide v14, v8, v11

    add-int/lit8 v7, v7, 0x1

    move v11, v13

    move/from16 v12, v16

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 86
    :cond_6
    iget v2, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 87
    iget-object v6, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v6, v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v6, v8, v6

    .line 88
    iget-object v10, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v11, v2, 0x1

    aput-wide v8, v10, v2

    add-int/lit8 v2, v3, 0x1

    .line 89
    :goto_5
    iget v8, v0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-ge v2, v8, :cond_7

    .line 90
    iget-object v8, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    add-int/lit8 v9, v11, 0x1

    aget-wide v12, v8, v11

    mul-double/2addr v12, v6

    aput-wide v12, v8, v11

    add-int/lit8 v2, v2, 0x1

    move v11, v9

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v5, p0

    return-void

    :cond_9
    move-object/from16 v5, p0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The system must be at least as wide as A"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic reduce(Lorg/ejml/data/Matrix;I)V
    .locals 0

    .line 29
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_DDRM;->reduce(Lorg/ejml/data/DMatrixRMaj;I)V

    return-void
.end method

.method public setTolerance(D)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_DDRM;->tol:D

    return-void
.end method

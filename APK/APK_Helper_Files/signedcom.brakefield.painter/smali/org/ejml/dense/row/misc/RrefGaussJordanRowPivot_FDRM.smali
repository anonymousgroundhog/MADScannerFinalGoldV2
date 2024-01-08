.class public Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_FDRM;
.super Ljava/lang/Object;
.source "RrefGaussJordanRowPivot_FDRM.java"

# interfaces
.implements Lorg/ejml/interfaces/linsol/ReducedRowEchelonForm_F32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ejml/interfaces/linsol/ReducedRowEchelonForm_F32<",
        "Lorg/ejml/data/FMatrixRMaj;",
        ">;"
    }
.end annotation


# instance fields
.field tol:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static swapRows(Lorg/ejml/data/FMatrixRMaj;II)V
    .locals 4

    .line 99
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p1, v0

    .line 100
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr p2, v0

    const/4 v0, 0x0

    .line 102
    :goto_0
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v1, v1, p1

    .line 104
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget-object v3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v3, v3, p2

    aput v3, v2, p1

    .line 105
    iget-object v2, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aput v1, v2, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public reduce(Lorg/ejml/data/FMatrixRMaj;I)V
    .locals 13

    .line 43
    iget v0, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-lt v0, p2, :cond_9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_8

    .line 53
    iget v3, p0, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_FDRM;->tol:F

    const/4 v4, -0x1

    move v5, v2

    move v6, v4

    .line 55
    :goto_1
    iget v7, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v5, v7, :cond_1

    .line 56
    iget-object v7, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iget v8, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v8, v7, v3

    if-lez v8, :cond_0

    move v6, v5

    move v3, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v4, :cond_2

    goto/16 :goto_6

    :cond_2
    if-eq v2, v6, :cond_3

    .line 71
    invoke-static {p1, v2, v6}, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_FDRM;->swapRows(Lorg/ejml/data/FMatrixRMaj;II)V

    :cond_3
    move v3, v0

    .line 74
    :goto_2
    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ge v3, v4, :cond_6

    if-ne v3, v2, :cond_4

    goto :goto_4

    .line 77
    :cond_4
    iget v4, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    .line 78
    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    .line 80
    iget-object v6, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v6, v6, v5

    iget-object v7, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v8, v4, 0x1

    aget v4, v7, v4

    div-float/2addr v6, v4

    .line 81
    iget-object v4, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v7, v5, 0x1

    const/4 v9, 0x0

    aput v9, v4, v5

    add-int/lit8 v4, v1, 0x1

    .line 82
    :goto_3
    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v4, v5, :cond_5

    .line 83
    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v9, v7, 0x1

    aget v10, v5, v7

    iget-object v11, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v12, v8, 0x1

    aget v8, v11, v8

    mul-float/2addr v8, v6

    sub-float/2addr v10, v8

    aput v10, v5, v7

    add-int/lit8 v4, v4, 0x1

    move v7, v9

    move v8, v12

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 88
    :cond_6
    iget v3, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v1

    .line 89
    iget-object v4, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v4, v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    .line 90
    iget-object v6, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v7, v3, 0x1

    aput v5, v6, v3

    add-int/lit8 v3, v1, 0x1

    .line 91
    :goto_5
    iget v5, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-ge v3, v5, :cond_7

    .line 92
    iget-object v5, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    add-int/lit8 v6, v7, 0x1

    aget v8, v5, v7

    mul-float/2addr v8, v4

    aput v8, v5, v7

    add-int/lit8 v3, v3, 0x1

    move v7, v6

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void

    .line 44
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The system must be at least as wide as A"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic reduce(Lorg/ejml/data/Matrix;I)V
    .locals 0

    .line 30
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_FDRM;->reduce(Lorg/ejml/data/FMatrixRMaj;I)V

    return-void
.end method

.method public setTolerance(F)V
    .locals 0

    .line 38
    iput p1, p0, Lorg/ejml/dense/row/misc/RrefGaussJordanRowPivot_FDRM;->tol:F

    return-void
.end method

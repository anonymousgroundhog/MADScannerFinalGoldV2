.class Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;
.super Ljava/lang/Object;
.source "CholeskyBlockHelper_FDRM.java"


# instance fields
.field private final L:Lorg/ejml/data/FMatrixRMaj;

.field private final el:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    .line 48
    iget-object p1, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->el:[F

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/FMatrixRMaj;II)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 61
    iget-object v3, v1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    move v6, v5

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v2, :cond_4

    move v9, v6

    :goto_1
    if-ge v9, v2, :cond_3

    .line 68
    iget v10, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v10, v6

    add-int v10, p2, v10

    add-int/2addr v10, v9

    aget v10, v3, v10

    mul-int v11, v6, v2

    mul-int v12, v9, v2

    add-int v13, v11, v6

    move v14, v12

    :goto_2
    if-ge v11, v13, :cond_0

    .line 76
    iget-object v15, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->el:[F

    aget v16, v15, v11

    aget v15, v15, v14

    mul-float v16, v16, v15

    sub-float v10, v10, v16

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v14, v8

    goto :goto_2

    :cond_0
    if-ne v6, v9, :cond_2

    cmpg-float v7, v10, v4

    if-gtz v7, :cond_1

    return v5

    :cond_1
    float-to-double v10, v10

    .line 84
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    .line 85
    iget-object v10, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->el:[F

    aput v7, v10, v13

    .line 86
    iget v10, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v10, v6

    add-int v10, p2, v10

    add-int/2addr v10, v6

    aput v7, v3, v10

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v7

    move v7, v10

    goto :goto_3

    :cond_2
    mul-float/2addr v10, v7

    .line 90
    iget-object v11, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->el:[F

    add-int/2addr v12, v6

    aput v10, v11, v12

    .line 91
    iget v11, v1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    mul-int/2addr v11, v9

    add-int v11, p2, v11

    add-int/2addr v11, v6

    aput v10, v3, v11

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return v8
.end method

.method public getL()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_FDRM;->L:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

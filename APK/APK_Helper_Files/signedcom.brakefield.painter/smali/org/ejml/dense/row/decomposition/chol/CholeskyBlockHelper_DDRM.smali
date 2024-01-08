.class Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;
.super Ljava/lang/Object;
.source "CholeskyBlockHelper_DDRM.java"


# instance fields
.field private final L:Lorg/ejml/data/DMatrixRMaj;

.field private final el:[D


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    .line 46
    iget-object p1, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    iput-object p1, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->el:[D

    return-void
.end method


# virtual methods
.method public decompose(Lorg/ejml/data/DMatrixRMaj;II)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 59
    iget-object v3, v1, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :goto_0
    const/4 v10, 0x1

    if-ge v7, v2, :cond_4

    move v11, v7

    :goto_1
    if-ge v11, v2, :cond_3

    .line 66
    iget v12, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v12, v7

    add-int v12, p2, v12

    add-int/2addr v12, v11

    aget-wide v12, v3, v12

    mul-int v14, v7, v2

    mul-int v15, v11, v2

    add-int v6, v14, v7

    move/from16 v16, v15

    :goto_2
    if-ge v14, v6, :cond_0

    .line 74
    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->el:[D

    aget-wide v17, v4, v14

    aget-wide v4, v4, v16

    mul-double v17, v17, v4

    sub-double v12, v12, v17

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_0
    if-ne v7, v11, :cond_2

    const-wide/16 v4, 0x0

    cmpg-double v8, v12, v4

    if-gtz v8, :cond_1

    const/4 v14, 0x0

    return v14

    :cond_1
    const/4 v14, 0x0

    .line 82
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 83
    iget-object v12, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->el:[D

    aput-wide v8, v12, v6

    .line 84
    iget v6, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v7

    add-int v6, p2, v6

    add-int/2addr v6, v7

    aput-wide v8, v3, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v8

    move-wide v8, v12

    goto :goto_3

    :cond_2
    const-wide/16 v4, 0x0

    const/4 v14, 0x0

    mul-double/2addr v12, v8

    .line 88
    iget-object v6, v0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->el:[D

    add-int/2addr v15, v7

    aput-wide v12, v6, v15

    .line 89
    iget v6, v1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    mul-int/2addr v6, v11

    add-int v6, p2, v6

    add-int/2addr v6, v7

    aput-wide v12, v3, v6

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    const/4 v14, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    return v10
.end method

.method public getL()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/ejml/dense/row/decomposition/chol/CholeskyBlockHelper_DDRM;->L:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

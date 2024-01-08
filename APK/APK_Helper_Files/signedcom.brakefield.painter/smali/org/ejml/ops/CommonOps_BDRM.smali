.class public Lorg/ejml/ops/CommonOps_BDRM;
.super Ljava/lang/Object;
.source "CommonOps_BDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transposeSquare(Lorg/ejml/data/BMatrixRMaj;)V
    .locals 7

    .line 35
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    iget v1, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    if-ne v0, v1, :cond_2

    .line 39
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    :goto_0
    iget v3, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 42
    iget v4, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    mul-int/2addr v4, v3

    :goto_1
    add-int/2addr v4, v2

    if-ge v1, v0, :cond_0

    .line 44
    iget-object v2, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    aget-boolean v2, v2, v1

    .line 45
    iget-object v5, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    iget-object v6, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    aget-boolean v6, v6, v4

    aput-boolean v6, v5, v1

    .line 46
    iget-object v5, p0, Lorg/ejml/data/BMatrixRMaj;->data:[Z

    aput-boolean v2, v5, v4

    add-int/lit8 v1, v1, 0x1

    .line 43
    iget v2, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v3, 0x1

    add-int/2addr v1, v2

    .line 41
    iget v2, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    add-int/2addr v0, v2

    move v2, v3

    goto :goto_0

    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must be sqare"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

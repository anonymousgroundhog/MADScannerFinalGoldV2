.class public Lorg/ejml/dense/row/NormOps_ZDRM;
.super Ljava/lang/Object;
.source "NormOps_ZDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normF(Lorg/ejml/data/ZMatrixRMaj;)D
    .locals 10

    .line 43
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_ZDRM;->elementMaxAbs(Lorg/ejml/data/ZMatrixRMaj;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/ZMatrixRMaj;->getDataLength()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 51
    iget-object v6, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    aget-wide v6, v6, v5

    div-double/2addr v6, v0

    .line 52
    iget-object v8, p0, Lorg/ejml/data/ZMatrixRMaj;->data:[D

    add-int/lit8 v9, v5, 0x1

    aget-wide v8, v8, v9

    div-double/2addr v8, v0

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    add-double/2addr v2, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

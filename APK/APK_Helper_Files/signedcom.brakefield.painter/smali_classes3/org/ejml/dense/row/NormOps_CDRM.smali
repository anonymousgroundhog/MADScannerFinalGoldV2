.class public Lorg/ejml/dense/row/NormOps_CDRM;
.super Ljava/lang/Object;
.source "NormOps_CDRM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normF(Lorg/ejml/data/CMatrixRMaj;)F
    .locals 7

    .line 45
    invoke-static {p0}, Lorg/ejml/dense/row/CommonOps_CDRM;->elementMaxAbs(Lorg/ejml/data/CMatrixRMaj;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/data/CMatrixRMaj;->getDataLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 53
    iget-object v4, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    aget v4, v4, v3

    div-float/2addr v4, v0

    .line 54
    iget-object v5, p0, Lorg/ejml/data/CMatrixRMaj;->data:[F

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    div-float/2addr v5, v0

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    float-to-double v1, v1

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

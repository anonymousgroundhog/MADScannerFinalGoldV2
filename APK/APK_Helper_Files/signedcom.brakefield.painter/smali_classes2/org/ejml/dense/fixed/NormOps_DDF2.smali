.class public Lorg/ejml/dense/fixed/NormOps_DDF2;
.super Ljava/lang/Object;
.source "NormOps_DDF2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastNormF(Lorg/ejml/data/DMatrix2;)D
    .locals 6

    .line 53
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fastNormF(Lorg/ejml/data/DMatrix2x2;)D
    .locals 8

    .line 46
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    add-double/2addr v0, v2

    .line 47
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static normF(Lorg/ejml/data/DMatrix2;)D
    .locals 6

    .line 74
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_DDF2;->elementMaxAbs(Lorg/ejml/data/DMatrix2;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 79
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a1:D

    div-double/2addr v2, v0

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2;->a2:D

    div-double/2addr v4, v0

    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static normF(Lorg/ejml/data/DMatrix2x2;)D
    .locals 12

    .line 58
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_DDF2;->elementMaxAbs(Lorg/ejml/data/DMatrix2x2;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 63
    :cond_0
    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    div-double/2addr v4, v0

    iget-wide v6, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    div-double/2addr v6, v0

    .line 64
    iget-wide v8, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    div-double/2addr v8, v0

    iget-wide v10, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    div-double/2addr v10, v0

    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    add-double/2addr v4, v2

    mul-double/2addr v8, v8

    mul-double/2addr v10, v10

    add-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static normalizeF(Lorg/ejml/data/DMatrix2;)V
    .locals 2

    .line 39
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_DDF2;->normF(Lorg/ejml/data/DMatrix2;)D

    move-result-wide v0

    .line 40
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/fixed/CommonOps_DDF2;->divide(Lorg/ejml/data/DMatrix2;D)V

    return-void
.end method

.method public static normalizeF(Lorg/ejml/data/DMatrix2x2;)V
    .locals 2

    .line 34
    invoke-static {p0}, Lorg/ejml/dense/fixed/NormOps_DDF2;->normF(Lorg/ejml/data/DMatrix2x2;)D

    move-result-wide v0

    .line 35
    invoke-static {p0, v0, v1}, Lorg/ejml/dense/fixed/CommonOps_DDF2;->divide(Lorg/ejml/data/DMatrix2x2;D)V

    return-void
.end method

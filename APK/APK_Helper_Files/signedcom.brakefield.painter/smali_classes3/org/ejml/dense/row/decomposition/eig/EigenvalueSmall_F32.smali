.class public Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;
.super Ljava/lang/Object;
.source "EigenvalueSmall_F32.java"


# instance fields
.field public value0:Lorg/ejml/data/Complex_F32;

.field public value1:Lorg/ejml/data/Complex_F32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    .line 31
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    return-void
.end method


# virtual methods
.method public symm2x2_fast(FFF)V
    .locals 2

    add-float v0, p1, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float/2addr p1, p3

    mul-float/2addr p1, v1

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 126
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 127
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    add-float p3, v0, p1

    iput p3, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 128
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    sub-float/2addr v0, p1

    iput v0, p2, Lorg/ejml/data/Complex_F32;->real:F

    return-void
.end method

.method public value2x2(FFFF)V
    .locals 9

    add-float v0, p2, p3

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    div-float v2, v3, v2

    move v4, v2

    goto :goto_0

    :cond_0
    sub-float v2, p1, p4

    div-float/2addr v2, v0

    mul-float v4, v2, v2

    add-float/2addr v4, v3

    float-to-double v4, v4

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v4, v3

    div-float/2addr v2, v4

    mul-float v4, v2, v2

    add-float/2addr v4, v3

    float-to-double v4, v4

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v4, v3, v4

    mul-float/2addr v2, v4

    move v8, v4

    move v4, v2

    move v2, v8

    :goto_0
    mul-float v5, v2, v2

    mul-float v6, v4, v4

    mul-float/2addr v2, v4

    mul-float v4, v5, p1

    mul-float v7, v6, p4

    add-float/2addr v4, v7

    mul-float/2addr v0, v2

    sub-float/2addr v4, v0

    mul-float v0, v5, p2

    mul-float v7, v6, p3

    sub-float/2addr v0, v7

    sub-float/2addr p1, p4

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    mul-float/2addr v5, p3

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    add-float/2addr v5, v2

    mul-float p1, v5, v0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    cmpl-float p1, v0, v1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    add-float p1, v0, v5

    div-float p2, v5, p1

    float-to-double p2, p2

    .line 66
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float v3, p2

    div-float p1, v0, p1

    float-to-double p1, p1

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    :goto_1
    mul-float/2addr p1, v3

    add-float/2addr v0, v5

    mul-float/2addr p1, v0

    sub-float p2, v4, p1

    add-float/2addr v4, p1

    .line 79
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iput p2, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 80
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iput v4, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 82
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iput v1, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    iput v1, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    goto :goto_2

    .line 84
    :cond_2
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iput v4, p2, Lorg/ejml/data/Complex_F32;->real:F

    iput v4, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 85
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    neg-float p2, v5

    mul-float/2addr p2, v0

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 86
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget p2, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float p2, p2

    iput p2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    :goto_2
    return-void
.end method

.method public value2x2_fast(FFFF)V
    .locals 3

    add-float v0, p1, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr p2, v2

    mul-float/2addr p2, p3

    sub-float/2addr p1, p4

    mul-float/2addr p1, p1

    add-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float p3, p2, p1

    if-gez p3, :cond_0

    .line 99
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iput v0, p3, Lorg/ejml/data/Complex_F32;->real:F

    iput v0, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 100
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    neg-float p2, p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 101
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget p2, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float p2, p2

    iput p2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    goto :goto_0

    :cond_0
    float-to-double p2, p2

    .line 103
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    div-float/2addr p2, v1

    .line 104
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    add-float p4, v0, p2

    iput p4, p3, Lorg/ejml/data/Complex_F32;->real:F

    .line 105
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    sub-float/2addr v0, p2

    iput v0, p3, Lorg/ejml/data/Complex_F32;->real:F

    .line 106
    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value0:Lorg/ejml/data/Complex_F32;

    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F32;->value1:Lorg/ejml/data/Complex_F32;

    iput p1, p3, Lorg/ejml/data/Complex_F32;->imaginary:F

    iput p1, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    :goto_0
    return-void
.end method

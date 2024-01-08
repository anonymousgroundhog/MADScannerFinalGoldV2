.class public Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;
.super Ljava/lang/Object;
.source "EigenvalueSmall_F64.java"


# instance fields
.field public value0:Lorg/ejml/data/Complex_F64;

.field public value1:Lorg/ejml/data/Complex_F64;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    .line 29
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    iput-object v0, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    return-void
.end method


# virtual methods
.method public symm2x2_fast(DDD)V
    .locals 4

    add-double v0, p1, p5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sub-double/2addr p1, p5

    mul-double/2addr p1, v2

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 125
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    add-double p4, v0, p1

    iput-wide p4, p3, Lorg/ejml/data/Complex_F64;->real:D

    .line 126
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    sub-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/Complex_F64;->real:D

    return-void
.end method

.method public value2x2(DDDD)V
    .locals 20

    move-object/from16 v0, p0

    add-double v1, p3, p5

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-nez v5, :cond_0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 37
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, v6, v8

    move-wide v10, v8

    goto :goto_0

    :cond_0
    sub-double v8, p1, p7

    div-double/2addr v8, v1

    mul-double v10, v8, v8

    add-double/2addr v10, v6

    .line 43
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    add-double/2addr v10, v6

    div-double/2addr v8, v10

    mul-double v10, v8, v8

    add-double/2addr v10, v6

    .line 45
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double v10, v6, v10

    mul-double/2addr v8, v10

    move-wide/from16 v18, v8

    move-wide v8, v10

    move-wide/from16 v10, v18

    :goto_0
    mul-double v12, v8, v8

    mul-double v14, v10, v10

    mul-double/2addr v8, v10

    mul-double v10, v12, p1

    mul-double v16, v14, p7

    add-double v10, v10, v16

    mul-double/2addr v1, v8

    sub-double/2addr v10, v1

    mul-double v1, v12, p3

    mul-double v16, v14, p5

    sub-double v1, v1, v16

    sub-double v16, p1, p7

    mul-double v8, v8, v16

    add-double/2addr v1, v8

    mul-double v12, v12, p5

    mul-double v14, v14, p3

    sub-double/2addr v12, v14

    add-double/2addr v12, v8

    mul-double v8, v12, v1

    cmpl-double v5, v8, v3

    if-ltz v5, :cond_2

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    move-wide v7, v6

    move-wide v5, v3

    goto :goto_1

    :cond_1
    add-double v5, v1, v12

    div-double v7, v12, v5

    .line 64
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double v5, v1, v5

    .line 65
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    :goto_1
    mul-double/2addr v5, v7

    add-double/2addr v1, v12

    mul-double/2addr v5, v1

    sub-double v1, v10, v5

    add-double/2addr v10, v5

    .line 77
    iget-object v5, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iput-wide v1, v5, Lorg/ejml/data/Complex_F64;->real:D

    .line 78
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iput-wide v10, v1, Lorg/ejml/data/Complex_F64;->real:D

    .line 80
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iput-wide v3, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    iput-wide v3, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    goto :goto_2

    .line 82
    :cond_2
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-object v4, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iput-wide v10, v4, Lorg/ejml/data/Complex_F64;->real:D

    iput-wide v10, v3, Lorg/ejml/data/Complex_F64;->real:D

    .line 83
    iget-object v3, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    neg-double v4, v12

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v3, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 84
    iget-object v1, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-object v2, v0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide v2, v2, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v2, v2

    iput-wide v2, v1, Lorg/ejml/data/Complex_F64;->imaginary:D

    :goto_2
    return-void
.end method

.method public value2x2_fast(DDDD)V
    .locals 6

    add-double v0, p1, p7

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr p3, v4

    mul-double/2addr p3, p5

    sub-double/2addr p1, p7

    mul-double/2addr p1, p1

    add-double/2addr p3, p1

    const-wide/16 p1, 0x0

    cmpg-double p5, p3, p1

    if-gez p5, :cond_0

    .line 97
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iput-wide v0, p2, Lorg/ejml/data/Complex_F64;->real:D

    iput-wide v0, p1, Lorg/ejml/data/Complex_F64;->real:D

    .line 98
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    neg-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    div-double/2addr p2, v2

    iput-wide p2, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 99
    iget-object p1, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iget-object p2, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-wide p2, p2, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double p2, p2

    iput-wide p2, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p3, v2

    .line 102
    iget-object p5, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    add-double p6, v0, p3

    iput-wide p6, p5, Lorg/ejml/data/Complex_F64;->real:D

    .line 103
    iget-object p5, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    sub-double/2addr v0, p3

    iput-wide v0, p5, Lorg/ejml/data/Complex_F64;->real:D

    .line 104
    iget-object p3, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value0:Lorg/ejml/data/Complex_F64;

    iget-object p4, p0, Lorg/ejml/dense/row/decomposition/eig/EigenvalueSmall_F64;->value1:Lorg/ejml/data/Complex_F64;

    iput-wide p1, p4, Lorg/ejml/data/Complex_F64;->imaginary:D

    iput-wide p1, p3, Lorg/ejml/data/Complex_F64;->imaginary:D

    :goto_0
    return-void
.end method

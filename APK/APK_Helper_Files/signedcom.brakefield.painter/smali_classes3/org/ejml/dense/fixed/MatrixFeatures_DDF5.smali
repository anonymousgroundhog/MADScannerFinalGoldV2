.class public Lorg/ejml/dense/fixed/MatrixFeatures_DDF5;
.super Ljava/lang/Object;
.source "MatrixFeatures_DDF5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrix5;)Z
    .locals 4

    .line 117
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 119
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 121
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 123
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 125
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrix5x5;)Z
    .locals 6

    .line 103
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 105
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 107
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 109
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 111
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrix5;Lorg/ejml/data/DMatrix5;D)Z
    .locals 8

    .line 89
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5;->a1:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a2:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 93
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a3:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 95
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a4:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 97
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5;->a5:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrix5x5;Lorg/ejml/data/DMatrix5x5;D)Z
    .locals 8

    .line 35
    iget-wide v0, p0, Lorg/ejml/data/DMatrix5x5;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix5x5;->a11:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a12:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a13:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a14:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 43
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a15:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 45
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a21:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 47
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a22:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 49
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a23:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 51
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a24:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 53
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a25:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 55
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a31:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 57
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a32:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 59
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a33:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 61
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a34:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 63
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a35:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 65
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a41:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 67
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a42:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 69
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a43:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 71
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a44:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 73
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a45:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 75
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a51:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 77
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a52:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 79
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a53:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 81
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a54:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 83
    :cond_17
    iget-wide v2, p0, Lorg/ejml/data/DMatrix5x5;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix5x5;->a55:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

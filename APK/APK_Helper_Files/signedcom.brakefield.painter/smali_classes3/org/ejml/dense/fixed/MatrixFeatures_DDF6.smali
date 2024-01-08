.class public Lorg/ejml/dense/fixed/MatrixFeatures_DDF6;
.super Ljava/lang/Object;
.source "MatrixFeatures_DDF6.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrix6;)Z
    .locals 4

    .line 143
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 145
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 147
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 149
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 151
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 153
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrix6x6;)Z
    .locals 6

    .line 127
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 131
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 133
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 135
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 137
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrix6;Lorg/ejml/data/DMatrix6;D)Z
    .locals 8

    .line 111
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6;->a1:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a2:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 115
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a3:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 117
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a4:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a4:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 119
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a5:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a5:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 121
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6;->a6:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6;->a6:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrix6x6;Lorg/ejml/data/DMatrix6x6;D)Z
    .locals 8

    .line 35
    iget-wide v0, p0, Lorg/ejml/data/DMatrix6x6;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix6x6;->a11:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a12:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a13:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a14:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a14:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 43
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a15:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a15:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 45
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a16:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a16:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 47
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a21:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 49
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a22:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 51
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a23:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 53
    :cond_8
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a24:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a24:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 55
    :cond_9
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a25:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a25:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 57
    :cond_a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a26:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a26:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 59
    :cond_b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a31:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 61
    :cond_c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a32:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 63
    :cond_d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a33:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 65
    :cond_e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a34:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a34:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 67
    :cond_f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a35:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a35:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 69
    :cond_10
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a36:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a36:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 71
    :cond_11
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a41:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a41:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 73
    :cond_12
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a42:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a42:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 75
    :cond_13
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a43:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a43:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 77
    :cond_14
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a44:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a44:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 79
    :cond_15
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a45:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a45:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 81
    :cond_16
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a46:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a46:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 83
    :cond_17
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a51:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a51:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    .line 85
    :cond_18
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a52:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a52:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 87
    :cond_19
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a53:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a53:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 89
    :cond_1a
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a54:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a54:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    .line 91
    :cond_1b
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a55:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a55:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 93
    :cond_1c
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a56:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a56:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    .line 95
    :cond_1d
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a61:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a61:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 97
    :cond_1e
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a62:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a62:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 99
    :cond_1f
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a63:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a63:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 101
    :cond_20
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a64:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a64:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_21

    return v1

    .line 103
    :cond_21
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a65:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a65:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_22

    return v1

    .line 105
    :cond_22
    iget-wide v2, p0, Lorg/ejml/data/DMatrix6x6;->a66:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix6x6;->a66:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result p0

    if-nez p0, :cond_23

    return v1

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

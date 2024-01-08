.class public Lorg/ejml/dense/fixed/MatrixFeatures_DDF3;
.super Ljava/lang/Object;
.source "MatrixFeatures_DDF3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrix3;)Z
    .locals 4

    .line 77
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 79
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 81
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrix3x3;)Z
    .locals 6

    .line 67
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 69
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 71
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;D)Z
    .locals 8

    .line 57
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3;->a2:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 61
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3;->a3:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;D)Z
    .locals 8

    .line 35
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 43
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 45
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 47
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 49
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 51
    :cond_7
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result p0

    if-nez p0, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

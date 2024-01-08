.class public Lorg/ejml/dense/fixed/MatrixFeatures_DDF2;
.super Ljava/lang/Object;
.source "MatrixFeatures_DDF2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrix2;)Z
    .locals 4

    .line 63
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUncountable(Lorg/ejml/data/DMatrix2x2;)Z
    .locals 6

    .line 55
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;D)Z
    .locals 8

    .line 47
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2;->a2:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;D)Z
    .locals 8

    .line 35
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lorg/ejml/UtilEjml;->isIdentical(DDD)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

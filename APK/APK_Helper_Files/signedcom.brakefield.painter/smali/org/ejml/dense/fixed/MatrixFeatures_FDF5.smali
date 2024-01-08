.class public Lorg/ejml/dense/fixed/MatrixFeatures_FDF5;
.super Ljava/lang/Object;
.source "MatrixFeatures_FDF5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrix5;)Z
    .locals 2

    .line 117
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a1:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 119
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a2:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 121
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a3:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 123
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a4:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 125
    :cond_3
    iget p0, p0, Lorg/ejml/data/FMatrix5;->a5:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrix5x5;)Z
    .locals 3

    .line 103
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 105
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 107
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 109
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 111
    :cond_3
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    add-float/2addr v0, v2

    iget p0, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    add-float/2addr v0, p0

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix5;Lorg/ejml/data/FMatrix5;F)Z
    .locals 3

    .line 89
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix5;->a1:F

    invoke-static {v0, v1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 91
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix5;->a2:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 93
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix5;->a3:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 95
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix5;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix5;->a4:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 97
    :cond_3
    iget p0, p0, Lorg/ejml/data/FMatrix5;->a5:F

    iget p1, p1, Lorg/ejml/data/FMatrix5;->a5:F

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix5x5;Lorg/ejml/data/FMatrix5x5;F)Z
    .locals 3

    .line 35
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix5x5;->a11:F

    invoke-static {v0, v1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a12:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a13:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a14:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 43
    :cond_3
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a15:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 45
    :cond_4
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a21:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 47
    :cond_5
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a22:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 49
    :cond_6
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a23:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 51
    :cond_7
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a24:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 53
    :cond_8
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a25:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 55
    :cond_9
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a31:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 57
    :cond_a
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a32:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 59
    :cond_b
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a33:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 61
    :cond_c
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a34:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 63
    :cond_d
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a35:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 65
    :cond_e
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a41:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 67
    :cond_f
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a42:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 69
    :cond_10
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a43:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 71
    :cond_11
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a44:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 73
    :cond_12
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a45:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 75
    :cond_13
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a51:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 77
    :cond_14
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a52:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 79
    :cond_15
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a53:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 81
    :cond_16
    iget v0, p0, Lorg/ejml/data/FMatrix5x5;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix5x5;->a54:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 83
    :cond_17
    iget p0, p0, Lorg/ejml/data/FMatrix5x5;->a55:F

    iget p1, p1, Lorg/ejml/data/FMatrix5x5;->a55:F

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result p0

    if-nez p0, :cond_18

    return v1

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.class public Lorg/ejml/dense/fixed/MatrixFeatures_FDF6;
.super Ljava/lang/Object;
.source "MatrixFeatures_FDF6.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrix6;)Z
    .locals 2

    .line 143
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 145
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 147
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 149
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 151
    :cond_3
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 153
    :cond_4
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUncountable(Lorg/ejml/data/FMatrix6x6;)Z
    .locals 3

    .line 127
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 131
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 133
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 135
    :cond_3
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 137
    :cond_4
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    add-float/2addr v0, v2

    iget v2, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    add-float/2addr v0, v2

    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    add-float/2addr v0, p0

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix6;Lorg/ejml/data/FMatrix6;F)Z
    .locals 3

    .line 111
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a1:F

    iget v1, p1, Lorg/ejml/data/FMatrix6;->a1:F

    invoke-static {v0, v1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a2:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a2:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 115
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a3:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a3:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 117
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a4:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a4:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 119
    :cond_3
    iget v0, p0, Lorg/ejml/data/FMatrix6;->a5:F

    iget v2, p1, Lorg/ejml/data/FMatrix6;->a5:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 121
    :cond_4
    iget p0, p0, Lorg/ejml/data/FMatrix6;->a6:F

    iget p1, p1, Lorg/ejml/data/FMatrix6;->a6:F

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static isIdentical(Lorg/ejml/data/FMatrix6x6;Lorg/ejml/data/FMatrix6x6;F)Z
    .locals 3

    .line 35
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a11:F

    iget v1, p1, Lorg/ejml/data/FMatrix6x6;->a11:F

    invoke-static {v0, v1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a12:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a12:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 39
    :cond_1
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a13:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a13:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 41
    :cond_2
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a14:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a14:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 43
    :cond_3
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a15:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a15:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 45
    :cond_4
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a16:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a16:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 47
    :cond_5
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a21:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a21:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 49
    :cond_6
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a22:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a22:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 51
    :cond_7
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a23:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a23:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 53
    :cond_8
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a24:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a24:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 55
    :cond_9
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a25:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a25:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 57
    :cond_a
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a26:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a26:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 59
    :cond_b
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a31:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a31:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 61
    :cond_c
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a32:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a32:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 63
    :cond_d
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a33:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a33:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 65
    :cond_e
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a34:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a34:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 67
    :cond_f
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a35:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a35:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 69
    :cond_10
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a36:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a36:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 71
    :cond_11
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a41:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a41:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 73
    :cond_12
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a42:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a42:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 75
    :cond_13
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a43:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a43:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 77
    :cond_14
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a44:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a44:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 79
    :cond_15
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a45:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a45:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 81
    :cond_16
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a46:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a46:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 83
    :cond_17
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a51:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a51:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    .line 85
    :cond_18
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a52:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a52:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 87
    :cond_19
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a53:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a53:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 89
    :cond_1a
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a54:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a54:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    .line 91
    :cond_1b
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a55:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a55:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 93
    :cond_1c
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a56:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a56:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    .line 95
    :cond_1d
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a61:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a61:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 97
    :cond_1e
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a62:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a62:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 99
    :cond_1f
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a63:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a63:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 101
    :cond_20
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a64:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a64:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_21

    return v1

    .line 103
    :cond_21
    iget v0, p0, Lorg/ejml/data/FMatrix6x6;->a65:F

    iget v2, p1, Lorg/ejml/data/FMatrix6x6;->a65:F

    invoke-static {v0, v2, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result v0

    if-nez v0, :cond_22

    return v1

    .line 105
    :cond_22
    iget p0, p0, Lorg/ejml/data/FMatrix6x6;->a66:F

    iget p1, p1, Lorg/ejml/data/FMatrix6x6;->a66:F

    invoke-static {p0, p1, p2}, Lorg/ejml/UtilEjml;->isIdentical(FFF)Z

    move-result p0

    if-nez p0, :cond_23

    return v1

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

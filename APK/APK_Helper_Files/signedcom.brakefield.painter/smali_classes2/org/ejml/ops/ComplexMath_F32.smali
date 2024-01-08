.class public Lorg/ejml/ops/ComplexMath_F32;
.super Ljava/lang/Object;
.source "ComplexMath_F32.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conj(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V
    .locals 1

    .line 41
    iget v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    iput v0, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 42
    iget p0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float p0, p0

    iput p0, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public static convert(Lorg/ejml/data/ComplexPolar_F32;Lorg/ejml/data/Complex_F32;)V
    .locals 3

    .line 124
    iget v0, p0, Lorg/ejml/data/ComplexPolar_F32;->r:F

    iget v1, p0, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p1, Lorg/ejml/data/Complex_F32;->real:F

    .line 125
    iget v0, p0, Lorg/ejml/data/ComplexPolar_F32;->r:F

    iget p0, p0, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p0, v1

    mul-float/2addr v0, p0

    iput v0, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public static convert(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/ComplexPolar_F32;)V
    .locals 4

    .line 111
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F32;->getMagnitude()F

    move-result v0

    iput v0, p1, Lorg/ejml/data/ComplexPolar_F32;->r:F

    .line 112
    iget v0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    float-to-double v0, v0

    iget p0, p0, Lorg/ejml/data/Complex_F32;->real:F

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    iput p0, p1, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/ComplexPolar_F32;Lorg/ejml/data/ComplexPolar_F32;Lorg/ejml/data/ComplexPolar_F32;)V
    .locals 2

    .line 150
    iget v0, p0, Lorg/ejml/data/ComplexPolar_F32;->r:F

    iget v1, p1, Lorg/ejml/data/ComplexPolar_F32;->r:F

    div-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/ComplexPolar_F32;->r:F

    .line 151
    iget p0, p0, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    iget p1, p1, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    return-void
.end method

.method public static divide(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V
    .locals 4

    .line 97
    invoke-virtual {p1}, Lorg/ejml/data/Complex_F32;->getMagnitude2()F

    move-result v0

    .line 98
    iget v1, p0, Lorg/ejml/data/Complex_F32;->real:F

    iget v2, p1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    iget v3, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v1, v0

    iput v1, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 99
    iget v1, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    iget v2, p1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v1, v2

    iget p0, p0, Lorg/ejml/data/Complex_F32;->real:F

    iget p1, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr p0, p1

    sub-float/2addr v1, p0

    div-float/2addr v1, v0

    iput v1, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public static minus(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V
    .locals 2

    .line 69
    iget v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    iget v1, p1, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 70
    iget p0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    iget p1, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    sub-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public static multiply(Lorg/ejml/data/ComplexPolar_F32;Lorg/ejml/data/ComplexPolar_F32;Lorg/ejml/data/ComplexPolar_F32;)V
    .locals 2

    .line 137
    iget v0, p0, Lorg/ejml/data/ComplexPolar_F32;->r:F

    iget v1, p1, Lorg/ejml/data/ComplexPolar_F32;->r:F

    mul-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/ComplexPolar_F32;->r:F

    .line 138
    iget p0, p0, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    iget p1, p1, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    return-void
.end method

.method public static multiply(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V
    .locals 3

    .line 83
    iget v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    iget v1, p1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    iget v2, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 84
    iget v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    iget v1, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v0, v1

    iget p0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    iget p1, p1, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public static plus(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V
    .locals 2

    .line 55
    iget v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    iget v1, p1, Lorg/ejml/data/Complex_F32;->real:F

    add-float/2addr v0, v1

    iput v0, p2, Lorg/ejml/data/Complex_F32;->real:F

    .line 56
    iget p0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    iget p1, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    add-float/2addr p0, p1

    iput p0, p2, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public static pow(Lorg/ejml/data/ComplexPolar_F32;ILorg/ejml/data/ComplexPolar_F32;)V
    .locals 4

    .line 163
    iget v0, p0, Lorg/ejml/data/ComplexPolar_F32;->r:F

    float-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Lorg/ejml/data/ComplexPolar_F32;->r:F

    int-to-float p1, p1

    .line 164
    iget p0, p0, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    mul-float/2addr p1, p0

    iput p1, p2, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    return-void
.end method

.method public static root(Lorg/ejml/data/ComplexPolar_F32;IILorg/ejml/data/ComplexPolar_F32;)V
    .locals 4

    .line 178
    iget v0, p0, Lorg/ejml/data/ComplexPolar_F32;->r:F

    float-to-double v0, v0

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p3, Lorg/ejml/data/ComplexPolar_F32;->r:F

    .line 179
    iget p0, p0, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    const/high16 v0, 0x40000000    # 2.0f

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sget v0, Lorg/ejml/UtilEjml;->F_PI:F

    mul-float/2addr p2, v0

    add-float/2addr p0, p2

    div-float/2addr p0, p1

    iput p0, p3, Lorg/ejml/data/ComplexPolar_F32;->theta:F

    return-void
.end method

.method public static root(Lorg/ejml/data/Complex_F32;IILorg/ejml/data/Complex_F32;)V
    .locals 5

    .line 193
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F32;->getMagnitude()F

    move-result v0

    .line 194
    iget v1, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    float-to-double v1, v1

    iget p0, p0, Lorg/ejml/data/Complex_F32;->real:F

    float-to-double v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float p0, v1

    float-to-double v0, v0

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    float-to-double v2, v2

    .line 196
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float p2, p2

    mul-float/2addr p2, v1

    .line 197
    sget v1, Lorg/ejml/UtilEjml;->F_PI:F

    mul-float/2addr p2, v1

    add-float/2addr p0, p2

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 199
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float p2, v1

    mul-float/2addr p2, v0

    iput p2, p3, Lorg/ejml/data/Complex_F32;->real:F

    .line 200
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v0, p0

    iput v0, p3, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public static sqrt(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V
    .locals 6

    .line 211
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F32;->getMagnitude()F

    move-result v0

    .line 212
    iget v1, p0, Lorg/ejml/data/Complex_F32;->real:F

    add-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    .line 214
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    iput v2, p1, Lorg/ejml/data/Complex_F32;->real:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-double v0, v0

    .line 215
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    .line 216
    iget p0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    .line 217
    iget p0, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    neg-float p0, p0

    iput p0, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    :cond_0
    return-void
.end method

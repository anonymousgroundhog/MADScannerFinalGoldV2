.class public Lorg/ejml/ops/ComplexMath_F64;
.super Ljava/lang/Object;
.source "ComplexMath_F64.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conj(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V
    .locals 2

    .line 39
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    iput-wide v0, p1, Lorg/ejml/data/Complex_F64;->real:D

    .line 40
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public static convert(Lorg/ejml/data/ComplexPolar_F64;Lorg/ejml/data/Complex_F64;)V
    .locals 4

    .line 122
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    iget-wide v2, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p1, Lorg/ejml/data/Complex_F64;->real:D

    .line 123
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    iget-wide v2, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public static convert(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/ComplexPolar_F64;)V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F64;->getMagnitude()D

    move-result-wide v0

    iput-wide v0, p1, Lorg/ejml/data/ComplexPolar_F64;->r:D

    .line 110
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->real:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/ComplexPolar_F64;Lorg/ejml/data/ComplexPolar_F64;Lorg/ejml/data/ComplexPolar_F64;)V
    .locals 4

    .line 148
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    iget-wide v2, p1, Lorg/ejml/data/ComplexPolar_F64;->r:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/ComplexPolar_F64;->r:D

    .line 149
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    iget-wide p0, p1, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V
    .locals 8

    .line 95
    invoke-virtual {p1}, Lorg/ejml/data/Complex_F64;->getMagnitude2()D

    move-result-wide v0

    .line 96
    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v4, p1, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide v6, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    div-double/2addr v2, v0

    iput-wide v2, p2, Lorg/ejml/data/Complex_F64;->real:D

    .line 97
    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide v4, p1, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide p0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v4, p0

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    iput-wide v2, p2, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public static minus(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V
    .locals 4

    .line 67
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v2, p1, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/Complex_F64;->real:D

    .line 68
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide p0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public static multiply(Lorg/ejml/data/ComplexPolar_F64;Lorg/ejml/data/ComplexPolar_F64;Lorg/ejml/data/ComplexPolar_F64;)V
    .locals 4

    .line 135
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    iget-wide v2, p1, Lorg/ejml/data/ComplexPolar_F64;->r:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/ComplexPolar_F64;->r:D

    .line 136
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    iget-wide p0, p1, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    return-void
.end method

.method public static multiply(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V
    .locals 6

    .line 81
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v2, p1, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide v4, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/Complex_F64;->real:D

    .line 82
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v2, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide p0, p1, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public static plus(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V
    .locals 4

    .line 53
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    iget-wide v2, p1, Lorg/ejml/data/Complex_F64;->real:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/Complex_F64;->real:D

    .line 54
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide p0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public static pow(Lorg/ejml/data/ComplexPolar_F64;ILorg/ejml/data/ComplexPolar_F64;)V
    .locals 4

    .line 161
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p2, Lorg/ejml/data/ComplexPolar_F64;->r:D

    .line 162
    iget-wide p0, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    mul-double/2addr v2, p0

    iput-wide v2, p2, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    return-void
.end method

.method public static root(Lorg/ejml/data/ComplexPolar_F64;IILorg/ejml/data/ComplexPolar_F64;)V
    .locals 6

    .line 176
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p3, Lorg/ejml/data/ComplexPolar_F64;->r:D

    .line 177
    iget-wide p0, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v4, p2

    mul-double/2addr v4, v0

    sget-wide v0, Lorg/ejml/UtilEjml;->PI:D

    mul-double/2addr v4, v0

    add-double/2addr p0, v4

    div-double/2addr p0, v2

    iput-wide p0, p3, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    return-void
.end method

.method public static root(Lorg/ejml/data/Complex_F64;IILorg/ejml/data/Complex_F64;)V
    .locals 8

    .line 191
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F64;->getMagnitude()D

    move-result-wide v0

    .line 192
    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    iget-wide v4, p0, Lorg/ejml/data/Complex_F64;->real:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    int-to-double p0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, p0

    .line 194
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, p2

    mul-double/2addr v6, v4

    .line 195
    sget-wide v4, Lorg/ejml/UtilEjml;->PI:D

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    div-double/2addr v2, p0

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    iput-wide p0, p3, Lorg/ejml/data/Complex_F64;->real:D

    .line 198
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public static sqrt(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V
    .locals 8

    .line 209
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F64;->getMagnitude()D

    move-result-wide v0

    .line 210
    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->real:D

    add-double v4, v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 212
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, p1, Lorg/ejml/data/Complex_F64;->real:D

    sub-double/2addr v0, v2

    div-double/2addr v0, v6

    .line 213
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    .line 214
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    .line 215
    iget-wide v0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    neg-double v0, v0

    iput-wide v0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    :cond_0
    return-void
.end method

.class public Lorg/ejml/data/Complex_F32;
.super Ljava/lang/Object;
.source "Complex_F32.java"


# instance fields
.field public imaginary:F

.field public real:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lorg/ejml/data/Complex_F32;->real:F

    .line 39
    iput p2, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    instance-of p1, p1, Lorg/ejml/data/Complex_F32;

    return p1
.end method

.method public divide(Lorg/ejml/data/Complex_F32;)Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 85
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    .line 86
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/ComplexMath_F32;->divide(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 31
    :cond_0
    instance-of v1, p1, Lorg/ejml/data/Complex_F32;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ejml/data/Complex_F32;

    invoke-virtual {p1, p0}, Lorg/ejml/data/Complex_F32;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F32;->getReal()F

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/data/Complex_F32;->getReal()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F32;->getImaginary()F

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/data/Complex_F32;->getImaginary()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getImaginary()F
    .locals 1

    .line 35
    iget v0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    return v0
.end method

.method public getMagnitude()F
    .locals 2

    .line 45
    iget v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v0, v0

    iget v1, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMagnitude2()F
    .locals 2

    .line 49
    iget v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    mul-float/2addr v0, v0

    iget v1, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getReal()F
    .locals 1

    .line 34
    iget v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 31
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F32;->getReal()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/ejml/data/Complex_F32;->getImaginary()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isReal()Z
    .locals 2

    .line 63
    iget v0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(Lorg/ejml/data/Complex_F32;)Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 73
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    .line 74
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/ComplexMath_F32;->minus(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V

    return-object v0
.end method

.method public plus(Lorg/ejml/data/Complex_F32;)Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 67
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    .line 68
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/ComplexMath_F32;->plus(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V

    return-object v0
.end method

.method public set(FF)V
    .locals 0

    .line 53
    iput p1, p0, Lorg/ejml/data/Complex_F32;->real:F

    .line 54
    iput p2, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public set(Lorg/ejml/data/Complex_F32;)V
    .locals 1

    .line 58
    iget v0, p1, Lorg/ejml/data/Complex_F32;->real:F

    iput v0, p0, Lorg/ejml/data/Complex_F32;->real:F

    .line 59
    iget p1, p1, Lorg/ejml/data/Complex_F32;->imaginary:F

    iput p1, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public setImaginary(F)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    return-void
.end method

.method public setReal(F)V
    .locals 0

    .line 31
    iput p1, p0, Lorg/ejml/data/Complex_F32;->real:F

    return-void
.end method

.method public times(Lorg/ejml/data/Complex_F32;)Lorg/ejml/data/Complex_F32;
    .locals 1

    .line 79
    new-instance v0, Lorg/ejml/data/Complex_F32;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F32;-><init>()V

    .line 80
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/ComplexMath_F32;->multiply(Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;Lorg/ejml/data/Complex_F32;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    iget v0, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/ejml/data/Complex_F32;->real:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/ejml/data/Complex_F32;->real:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/ejml/data/Complex_F32;->imaginary:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

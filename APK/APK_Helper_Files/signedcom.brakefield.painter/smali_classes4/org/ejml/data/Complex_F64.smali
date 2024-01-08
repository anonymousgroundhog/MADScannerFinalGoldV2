.class public Lorg/ejml/data/Complex_F64;
.super Ljava/lang/Object;
.source "Complex_F64.java"


# instance fields
.field public imaginary:D

.field public real:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lorg/ejml/data/Complex_F64;->real:D

    .line 37
    iput-wide p3, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    instance-of p1, p1, Lorg/ejml/data/Complex_F64;

    return p1
.end method

.method public divide(Lorg/ejml/data/Complex_F64;)Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 83
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    .line 84
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/ComplexMath_F64;->divide(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lorg/ejml/data/Complex_F64;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ejml/data/Complex_F64;

    invoke-virtual {p1, p0}, Lorg/ejml/data/Complex_F64;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F64;->getReal()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/ejml/data/Complex_F64;->getReal()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F64;->getImaginary()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/ejml/data/Complex_F64;->getImaginary()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getImaginary()D
    .locals 2

    .line 33
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-wide v0
.end method

.method public getMagnitude()D
    .locals 4

    .line 43
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMagnitude2()D
    .locals 4

    .line 47
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getReal()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 30
    invoke-virtual {p0}, Lorg/ejml/data/Complex_F64;->getReal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/ejml/data/Complex_F64;->getImaginary()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v0, v1

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isReal()Z
    .locals 4

    .line 61
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minus(Lorg/ejml/data/Complex_F64;)Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 71
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    .line 72
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/ComplexMath_F64;->minus(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V

    return-object v0
.end method

.method public plus(Lorg/ejml/data/Complex_F64;)Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 65
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    .line 66
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/ComplexMath_F64;->plus(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V

    return-object v0
.end method

.method public set(DD)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lorg/ejml/data/Complex_F64;->real:D

    .line 52
    iput-wide p3, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public set(Lorg/ejml/data/Complex_F64;)V
    .locals 2

    .line 56
    iget-wide v0, p1, Lorg/ejml/data/Complex_F64;->real:D

    iput-wide v0, p0, Lorg/ejml/data/Complex_F64;->real:D

    .line 57
    iget-wide v0, p1, Lorg/ejml/data/Complex_F64;->imaginary:D

    iput-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public setImaginary(D)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    return-void
.end method

.method public setReal(D)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lorg/ejml/data/Complex_F64;->real:D

    return-void
.end method

.method public times(Lorg/ejml/data/Complex_F64;)Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 77
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    .line 78
    invoke-static {p0, p1, v0}, Lorg/ejml/ops/ComplexMath_F64;->multiply(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;Lorg/ejml/data/Complex_F64;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 90
    iget-wide v0, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/ejml/data/Complex_F64;->real:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/ejml/data/Complex_F64;->real:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/ejml/data/Complex_F64;->imaginary:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

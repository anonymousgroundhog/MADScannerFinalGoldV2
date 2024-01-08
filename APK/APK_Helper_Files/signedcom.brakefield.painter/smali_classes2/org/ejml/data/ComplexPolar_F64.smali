.class public Lorg/ejml/data/ComplexPolar_F64;
.super Ljava/lang/Object;
.source "ComplexPolar_F64.java"


# instance fields
.field public r:D

.field public theta:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    .line 40
    iput-wide p3, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    return-void
.end method

.method public constructor <init>(Lorg/ejml/data/Complex_F64;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1, p0}, Lorg/ejml/ops/ComplexMath_F64;->convert(Lorg/ejml/data/Complex_F64;Lorg/ejml/data/ComplexPolar_F64;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    instance-of p1, p1, Lorg/ejml/data/ComplexPolar_F64;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 33
    :cond_0
    instance-of v1, p1, Lorg/ejml/data/ComplexPolar_F64;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ejml/data/ComplexPolar_F64;

    invoke-virtual {p1, p0}, Lorg/ejml/data/ComplexPolar_F64;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/ComplexPolar_F64;->getR()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/ejml/data/ComplexPolar_F64;->getR()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/ejml/data/ComplexPolar_F64;->getTheta()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/ejml/data/ComplexPolar_F64;->getTheta()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getR()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    return-wide v0
.end method

.method public getTheta()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 33
    invoke-virtual {p0}, Lorg/ejml/data/ComplexPolar_F64;->getR()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/ejml/data/ComplexPolar_F64;->getTheta()D

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

.method public setR(D)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    return-void
.end method

.method public setTheta(D)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    return-void
.end method

.method public toStandard()Lorg/ejml/data/Complex_F64;
    .locals 1

    .line 50
    new-instance v0, Lorg/ejml/data/Complex_F64;

    invoke-direct {v0}, Lorg/ejml/data/Complex_F64;-><init>()V

    .line 51
    invoke-static {p0, v0}, Lorg/ejml/ops/ComplexMath_F64;->convert(Lorg/ejml/data/ComplexPolar_F64;Lorg/ejml/data/Complex_F64;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lorg/ejml/sparse/csc/decomposition/chol/sGf/FmZKxH;->HMlqaSHrIBjWYoq:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/ejml/data/ComplexPolar_F64;->r:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " theta = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/ejml/data/ComplexPolar_F64;->theta:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/ejml/data/DEigenpair;
.super Ljava/lang/Object;
.source "DEigenpair.java"


# instance fields
.field public value:D

.field public vector:Lorg/ejml/data/DMatrixRMaj;


# direct methods
.method public constructor <init>(DLorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lorg/ejml/data/DEigenpair;->value:D

    .line 36
    iput-object p3, p0, Lorg/ejml/data/DEigenpair;->vector:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    instance-of p1, p1, Lorg/ejml/data/DEigenpair;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 29
    :cond_0
    instance-of v1, p1, Lorg/ejml/data/DEigenpair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ejml/data/DEigenpair;

    invoke-virtual {p1, p0}, Lorg/ejml/data/DEigenpair;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/DEigenpair;->getValue()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/ejml/data/DEigenpair;->getValue()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/ejml/data/DEigenpair;->getVector()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ejml/data/DEigenpair;->getVector()Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public getValue()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lorg/ejml/data/DEigenpair;->value:D

    return-wide v0
.end method

.method public getVector()Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/ejml/data/DEigenpair;->vector:Lorg/ejml/data/DMatrixRMaj;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 29
    invoke-virtual {p0}, Lorg/ejml/data/DEigenpair;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/ejml/data/DEigenpair;->getVector()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(D)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lorg/ejml/data/DEigenpair;->value:D

    return-void
.end method

.method public setVector(Lorg/ejml/data/DMatrixRMaj;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/ejml/data/DEigenpair;->vector:Lorg/ejml/data/DMatrixRMaj;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEigenpair(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ejml/data/DEigenpair;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ejml/data/DEigenpair;->getVector()Lorg/ejml/data/DMatrixRMaj;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

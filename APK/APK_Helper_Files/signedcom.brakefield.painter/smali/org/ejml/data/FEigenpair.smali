.class public Lorg/ejml/data/FEigenpair;
.super Ljava/lang/Object;
.source "FEigenpair.java"


# instance fields
.field public value:F

.field public vector:Lorg/ejml/data/FMatrixRMaj;


# direct methods
.method public constructor <init>(FLorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/ejml/data/FEigenpair;->value:F

    .line 38
    iput-object p2, p0, Lorg/ejml/data/FEigenpair;->vector:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    instance-of p1, p1, Lorg/ejml/data/FEigenpair;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 30
    :cond_0
    instance-of v1, p1, Lorg/ejml/data/FEigenpair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ejml/data/FEigenpair;

    invoke-virtual {p1, p0}, Lorg/ejml/data/FEigenpair;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/FEigenpair;->getValue()F

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/data/FEigenpair;->getValue()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/ejml/data/FEigenpair;->getVector()Lorg/ejml/data/FMatrixRMaj;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ejml/data/FEigenpair;->getVector()Lorg/ejml/data/FMatrixRMaj;

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

.method public getValue()F
    .locals 1

    .line 33
    iget v0, p0, Lorg/ejml/data/FEigenpair;->value:F

    return v0
.end method

.method public getVector()Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/ejml/data/FEigenpair;->vector:Lorg/ejml/data/FMatrixRMaj;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 30
    invoke-virtual {p0}, Lorg/ejml/data/FEigenpair;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/ejml/data/FEigenpair;->getVector()Lorg/ejml/data/FMatrixRMaj;

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

.method public setValue(F)V
    .locals 0

    .line 30
    iput p1, p0, Lorg/ejml/data/FEigenpair;->value:F

    return-void
.end method

.method public setVector(Lorg/ejml/data/FMatrixRMaj;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lorg/ejml/data/FEigenpair;->vector:Lorg/ejml/data/FMatrixRMaj;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lorg/ejml/sparse/csc/decomposition/qr/pB/syaLyE;->hMOVvDNjtzzUfU:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ejml/data/FEigenpair;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ejml/data/FEigenpair;->getVector()Lorg/ejml/data/FMatrixRMaj;

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

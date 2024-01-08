.class public Lorg/ejml/data/IScalar;
.super Ljava/lang/Object;
.source "IScalar.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    instance-of p1, p1, Lorg/ejml/data/IScalar;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lorg/ejml/data/IScalar;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ejml/data/IScalar;

    invoke-virtual {p1, p0}, Lorg/ejml/data/IScalar;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/IScalar;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/data/IScalar;->getValue()I

    move-result p1

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getValue()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/ejml/data/IScalar;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x3b

    .line 28
    invoke-virtual {p0}, Lorg/ejml/data/IScalar;->getValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(I)V
    .locals 0

    .line 28
    iput p1, p0, Lorg/ejml/data/IScalar;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IScalar(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ejml/data/IScalar;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

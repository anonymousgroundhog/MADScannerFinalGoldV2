.class public Lorg/ejml/data/ElementLocation;
.super Ljava/lang/Object;
.source "ElementLocation.java"


# instance fields
.field public col:I

.field public row:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/ejml/data/ElementLocation;->row:I

    .line 40
    iput p2, p0, Lorg/ejml/data/ElementLocation;->col:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    instance-of p1, p1, Lorg/ejml/data/ElementLocation;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lorg/ejml/data/ElementLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ejml/data/ElementLocation;

    invoke-virtual {p1, p0}, Lorg/ejml/data/ElementLocation;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/ejml/data/ElementLocation;->getRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/data/ElementLocation;->getRow()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/ejml/data/ElementLocation;->getCol()I

    move-result v1

    invoke-virtual {p1}, Lorg/ejml/data/ElementLocation;->getCol()I

    move-result p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getCol()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/ejml/data/ElementLocation;->col:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/ejml/data/ElementLocation;->row:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 28
    invoke-virtual {p0}, Lorg/ejml/data/ElementLocation;->getRow()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/ejml/data/ElementLocation;->getCol()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public set(II)V
    .locals 0

    .line 49
    iput p1, p0, Lorg/ejml/data/ElementLocation;->row:I

    .line 50
    iput p2, p0, Lorg/ejml/data/ElementLocation;->col:I

    return-void
.end method

.method public set(Lorg/ejml/data/ElementLocation;)V
    .locals 1

    .line 44
    iget v0, p1, Lorg/ejml/data/ElementLocation;->row:I

    iput v0, p0, Lorg/ejml/data/ElementLocation;->row:I

    .line 45
    iget p1, p1, Lorg/ejml/data/ElementLocation;->col:I

    iput p1, p0, Lorg/ejml/data/ElementLocation;->col:I

    return-void
.end method

.method public setCol(I)V
    .locals 0

    .line 28
    iput p1, p0, Lorg/ejml/data/ElementLocation;->col:I

    return-void
.end method

.method public setRow(I)V
    .locals 0

    .line 28
    iput p1, p0, Lorg/ejml/data/ElementLocation;->row:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ElementLocation(row="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ejml/data/ElementLocation;->getRow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ejml/data/ElementLocation;->getCol()I

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

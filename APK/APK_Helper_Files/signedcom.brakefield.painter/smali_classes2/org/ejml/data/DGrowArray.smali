.class public Lorg/ejml/data/DGrowArray;
.super Ljava/lang/Object;
.source "DGrowArray.java"


# instance fields
.field public data:[D

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lorg/ejml/data/DGrowArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/data/DGrowArray;->data:[D

    .line 32
    iput p1, p0, Lorg/ejml/data/DGrowArray;->length:I

    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [D

    .line 92
    iput-object v1, p0, Lorg/ejml/data/DGrowArray;->data:[D

    .line 93
    iput v0, p0, Lorg/ejml/data/DGrowArray;->length:I

    return-void
.end method

.method public get(I)D
    .locals 2

    if-ltz p1, :cond_0

    .line 80
    iget v0, p0, Lorg/ejml/data/DGrowArray;->length:I

    if-ge p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/ejml/data/DGrowArray;->data:[D

    aget-wide v0, v0, p1

    return-wide v0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public growInternal(I)V
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/ejml/data/DGrowArray;->data:[D

    array-length v1, v0

    add-int/2addr v1, p1

    new-array p1, v1, [D

    const/4 v1, 0x0

    .line 70
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object p1, p0, Lorg/ejml/data/DGrowArray;->data:[D

    return-void
.end method

.method public length()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/ejml/data/DGrowArray;->length:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    return-void
.end method

.method public reshape(I)Lorg/ejml/data/DGrowArray;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/ejml/data/DGrowArray;->data:[D

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 52
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/ejml/data/DGrowArray;->data:[D

    .line 54
    :cond_0
    iput p1, p0, Lorg/ejml/data/DGrowArray;->length:I

    return-object p0
.end method

.method public set(ID)V
    .locals 1

    if-ltz p1, :cond_0

    .line 86
    iget v0, p0, Lorg/ejml/data/DGrowArray;->length:I

    if-ge p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/ejml/data/DGrowArray;->data:[D

    aput-wide p2, v0, p1

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/DGrowArray;)V
    .locals 3

    .line 75
    iget v0, p1, Lorg/ejml/data/DGrowArray;->length:I

    invoke-virtual {p0, v0}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    .line 76
    iget-object v0, p1, Lorg/ejml/data/DGrowArray;->data:[D

    iget-object v1, p0, Lorg/ejml/data/DGrowArray;->data:[D

    iget p1, p1, Lorg/ejml/data/DGrowArray;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

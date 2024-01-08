.class public Lorg/ejml/data/IGrowArray;
.super Ljava/lang/Object;
.source "IGrowArray.java"


# instance fields
.field public data:[I

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lorg/ejml/data/IGrowArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/data/IGrowArray;->data:[I

    .line 32
    iput p1, p0, Lorg/ejml/data/IGrowArray;->length:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 84
    iget v0, p0, Lorg/ejml/data/IGrowArray;->length:I

    iget-object v1, p0, Lorg/ejml/data/IGrowArray;->data:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 85
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2710

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/ejml/data/IGrowArray;->growInternal(I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/ejml/data/IGrowArray;->data:[I

    iget v1, p0, Lorg/ejml/data/IGrowArray;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ejml/data/IGrowArray;->length:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lorg/ejml/data/IGrowArray;->length:I

    return-void
.end method

.method public free()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 95
    iput-object v1, p0, Lorg/ejml/data/IGrowArray;->data:[I

    .line 96
    iput v0, p0, Lorg/ejml/data/IGrowArray;->length:I

    return-void
.end method

.method public get(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 72
    iget v0, p0, Lorg/ejml/data/IGrowArray;->length:I

    if-ge p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/ejml/data/IGrowArray;->data:[I

    aget p1, v0, p1

    return p1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public growInternal(I)V
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/ejml/data/IGrowArray;->data:[I

    array-length v1, v0

    add-int/2addr v1, p1

    new-array p1, v1, [I

    const/4 v1, 0x0

    .line 62
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object p1, p0, Lorg/ejml/data/IGrowArray;->data:[I

    return-void
.end method

.method public length()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/ejml/data/IGrowArray;->length:I

    return v0
.end method

.method public reshape(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/ejml/data/IGrowArray;->data:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 45
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/ejml/data/IGrowArray;->data:[I

    .line 47
    :cond_0
    iput p1, p0, Lorg/ejml/data/IGrowArray;->length:I

    return-void
.end method

.method public set(II)V
    .locals 1

    if-ltz p1, :cond_0

    .line 78
    iget v0, p0, Lorg/ejml/data/IGrowArray;->length:I

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/ejml/data/IGrowArray;->data:[I

    aput p2, v0, p1

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/IGrowArray;)V
    .locals 3

    .line 67
    iget v0, p1, Lorg/ejml/data/IGrowArray;->length:I

    invoke-virtual {p0, v0}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 68
    iget-object v0, p1, Lorg/ejml/data/IGrowArray;->data:[I

    iget-object v1, p0, Lorg/ejml/data/IGrowArray;->data:[I

    iget p1, p1, Lorg/ejml/data/IGrowArray;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

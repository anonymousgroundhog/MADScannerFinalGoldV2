.class public Lorg/ejml/data/FGrowArray;
.super Ljava/lang/Object;
.source "FGrowArray.java"


# instance fields
.field public data:[F

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lorg/ejml/data/FGrowArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/data/FGrowArray;->data:[F

    .line 34
    iput p1, p0, Lorg/ejml/data/FGrowArray;->length:I

    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [F

    .line 94
    iput-object v1, p0, Lorg/ejml/data/FGrowArray;->data:[F

    .line 95
    iput v0, p0, Lorg/ejml/data/FGrowArray;->length:I

    return-void
.end method

.method public get(I)F
    .locals 1

    if-ltz p1, :cond_0

    .line 82
    iget v0, p0, Lorg/ejml/data/FGrowArray;->length:I

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/ejml/data/FGrowArray;->data:[F

    aget p1, v0, p1

    return p1

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public growInternal(I)V
    .locals 3

    .line 70
    iget-object v0, p0, Lorg/ejml/data/FGrowArray;->data:[F

    array-length v1, v0

    add-int/2addr v1, p1

    new-array p1, v1, [F

    const/4 v1, 0x0

    .line 72
    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object p1, p0, Lorg/ejml/data/FGrowArray;->data:[F

    return-void
.end method

.method public length()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/ejml/data/FGrowArray;->length:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    return-void
.end method

.method public reshape(I)Lorg/ejml/data/FGrowArray;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/ejml/data/FGrowArray;->data:[F

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 54
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/ejml/data/FGrowArray;->data:[F

    .line 56
    :cond_0
    iput p1, p0, Lorg/ejml/data/FGrowArray;->length:I

    return-object p0
.end method

.method public set(IF)V
    .locals 1

    if-ltz p1, :cond_0

    .line 88
    iget v0, p0, Lorg/ejml/data/FGrowArray;->length:I

    if-ge p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/ejml/data/FGrowArray;->data:[F

    aput p2, v0, p1

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lorg/ejml/data/FGrowArray;)V
    .locals 3

    .line 77
    iget v0, p1, Lorg/ejml/data/FGrowArray;->length:I

    invoke-virtual {p0, v0}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    .line 78
    iget-object v0, p1, Lorg/ejml/data/FGrowArray;->data:[F

    iget-object v1, p0, Lorg/ejml/data/FGrowArray;->data:[F

    iget p1, p1, Lorg/ejml/data/FGrowArray;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

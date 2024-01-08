.class public Lpabeles/concurrency/GrowArray;
.super Ljava/lang/Object;
.source "GrowArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field

.field factory:Lpabeles/concurrency/ConcurrencyOps$NewInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/ConcurrencyOps$NewInstance<",
            "TD;>;"
        }
    .end annotation
.end field

.field reset:Lpabeles/concurrency/ConcurrencyOps$Reset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpabeles/concurrency/ConcurrencyOps$Reset<",
            "TD;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method public constructor <init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpabeles/concurrency/ConcurrencyOps$NewInstance<",
            "TD;>;)V"
        }
    .end annotation

    .line 38
    new-instance v0, Lpabeles/concurrency/GrowArray$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lpabeles/concurrency/GrowArray$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;Lpabeles/concurrency/ConcurrencyOps$Reset;)V

    return-void
.end method

.method public constructor <init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;Lpabeles/concurrency/ConcurrencyOps$Reset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpabeles/concurrency/ConcurrencyOps$NewInstance<",
            "TD;>;",
            "Lpabeles/concurrency/ConcurrencyOps$Reset<",
            "TD;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lpabeles/concurrency/GrowArray;->factory:Lpabeles/concurrency/ConcurrencyOps$NewInstance;

    .line 43
    iput-object p2, p0, Lpabeles/concurrency/GrowArray;->reset:Lpabeles/concurrency/ConcurrencyOps$Reset;

    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lpabeles/concurrency/GrowArray;->createArray(I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    .line 46
    iput p1, p0, Lpabeles/concurrency/GrowArray;->size:I

    return-void
.end method

.method private createArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TD;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lpabeles/concurrency/GrowArray;->factory:Lpabeles/concurrency/ConcurrencyOps$NewInstance;

    invoke-interface {v0}, Lpabeles/concurrency/ConcurrencyOps$NewInstance;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic lambda$new$0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TD;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public grow()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 81
    iget v0, p0, Lpabeles/concurrency/GrowArray;->size:I

    iget-object v1, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x5

    .line 82
    div-int/lit8 v0, v0, 0x3

    :goto_0
    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 83
    invoke-direct {p0, v0}, Lpabeles/concurrency/GrowArray;->createArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v1, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    array-length v1, v1

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 86
    iget-object v2, p0, Lpabeles/concurrency/GrowArray;->factory:Lpabeles/concurrency/ConcurrencyOps$NewInstance;

    invoke-interface {v2}, Lpabeles/concurrency/ConcurrencyOps$NewInstance;->newInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_1
    iput-object v0, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    .line 90
    :cond_2
    iget-object v0, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    iget v1, p0, Lpabeles/concurrency/GrowArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lpabeles/concurrency/GrowArray;->size:I

    aget-object v0, v0, v1

    .line 91
    iget-object v1, p0, Lpabeles/concurrency/GrowArray;->reset:Lpabeles/concurrency/ConcurrencyOps$Reset;

    invoke-interface {v1, v0}, Lpabeles/concurrency/ConcurrencyOps$Reset;->reset(Ljava/lang/Object;)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lpabeles/concurrency/GrowArray;->size:I

    return-void
.end method

.method public resize(I)V
    .locals 4

    .line 63
    iget-object v0, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 64
    invoke-direct {p0, p1}, Lpabeles/concurrency/GrowArray;->createArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget-object v1, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 67
    iget-object v2, p0, Lpabeles/concurrency/GrowArray;->factory:Lpabeles/concurrency/ConcurrencyOps$NewInstance;

    invoke-interface {v2}, Lpabeles/concurrency/ConcurrencyOps$NewInstance;->newInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iput-object v0, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    .line 71
    :cond_1
    iget v0, p0, Lpabeles/concurrency/GrowArray;->size:I

    :goto_1
    if-ge v0, p1, :cond_2

    .line 72
    iget-object v1, p0, Lpabeles/concurrency/GrowArray;->reset:Lpabeles/concurrency/ConcurrencyOps$Reset;

    iget-object v2, p0, Lpabeles/concurrency/GrowArray;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lpabeles/concurrency/ConcurrencyOps$Reset;->reset(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_2
    iput p1, p0, Lpabeles/concurrency/GrowArray;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 100
    iget v0, p0, Lpabeles/concurrency/GrowArray;->size:I

    return v0
.end method

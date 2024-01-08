.class public Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;
.super Ljava/lang/Object;
.source "MultiSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mSize:I

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mSize:I

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public keyAt(I)I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public pop(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mSize:I

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mSize:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mSize:I

    .line 32
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mSize:I

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public valuesAt(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

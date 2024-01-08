.class public Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ListDiffCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/brakefield/infinitestudio/ui/collections/Diffable<",
        "*>;>",
        "Landroidx/recyclerview/widget/DiffUtil$Callback;"
    }
.end annotation


# instance fields
.field private final newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final oldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;->oldList:Ljava/util/List;

    .line 14
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;->newList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;->newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ui/collections/Diffable;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;->oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;->newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ui/collections/Diffable;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/ui/collections/Diffable;->id()Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;->oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/Diffable;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/ui/collections/Diffable;->id()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;->newList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;->oldList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

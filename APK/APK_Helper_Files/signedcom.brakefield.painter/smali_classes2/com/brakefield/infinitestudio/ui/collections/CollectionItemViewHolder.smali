.class public abstract Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CollectionItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field protected final delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    return-void
.end method

.method private getObjectAtPosition(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "I)TT;"
        }
    .end annotation

    .line 52
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 55
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 56
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p1

    .line 57
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onItemClickAtPosition(I)V
    .locals 3

    .line 37
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getObjectAtPosition(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onItemContextClickAtPosition(I)Z
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getObjectAtPosition(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;->onItemContextClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private onItemLongClickAtPosition(I)Z
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getObjectAtPosition(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method synthetic lambda$setItemClickListener$0$com-brakefield-infinitestudio-ui-collections-CollectionItemViewHolder(Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->onItemClickAtPosition(I)V

    return-void
.end method

.method synthetic lambda$setItemContextClickListener$2$com-brakefield-infinitestudio-ui-collections-CollectionItemViewHolder(Landroid/view/View;)Z
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->onItemLongClickAtPosition(I)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$setItemLongClickListener$1$com-brakefield-infinitestudio-ui-collections-CollectionItemViewHolder(Landroid/view/View;)Z
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->onItemLongClickAtPosition(I)Z

    move-result p1

    return p1
.end method

.method public setItemClickListener()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->setItemClickListener(Landroid/view/View;)V

    return-void
.end method

.method public setItemClickListener(Landroid/view/View;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setItemContextClickListener()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->setItemContextClickListener(Landroid/view/View;)V

    return-void
.end method

.method public setItemContextClickListener(Landroid/view/View;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    return-void
.end method

.method public setItemLongClickListener()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;->setItemLongClickListener(Landroid/view/View;)V

    return-void
.end method

.method public setItemLongClickListener(Landroid/view/View;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public abstract update(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

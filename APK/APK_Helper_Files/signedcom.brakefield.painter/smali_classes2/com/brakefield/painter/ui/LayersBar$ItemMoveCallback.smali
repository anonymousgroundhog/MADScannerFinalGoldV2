.class public Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemMoveCallback"
.end annotation


# instance fields
.field private final mAdapter:Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;

.field final synthetic this$0:Lcom/brakefield/painter/ui/LayersBar;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 840
    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;->mAdapter:Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 874
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 875
    instance-of p1, p2, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;

    if-eqz p1, :cond_0

    .line 876
    check-cast p2, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;

    .line 877
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;->mAdapter:Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;

    invoke-interface {p1, p2}, Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;->onItemClear(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;)V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 855
    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 859
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;->mAdapter:Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;->onItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 865
    instance-of v0, p1, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;

    if-eqz v0, :cond_0

    .line 866
    move-object v0, p1

    check-cast v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;

    .line 867
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;->mAdapter:Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;

    invoke-interface {v1, v0}, Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;->onItemSelected(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;)V

    .line 870
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

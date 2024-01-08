.class public Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SwatchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/SwatchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemMoveCallback"
.end annotation


# instance fields
.field private final mAdapter:Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;

.field final synthetic this$0:Lcom/brakefield/painter/ui/SwatchBar;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SwatchBar;Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;->mAdapter:Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 192
    instance-of p1, p2, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    if-eqz p1, :cond_0

    .line 193
    check-cast p2, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    .line 194
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;->mAdapter:Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;

    invoke-interface {p1, p2}, Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;->onItemClear(Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;)V

    :cond_0
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 170
    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;->makeMovementFlags(II)I

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

    .line 175
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;->mAdapter:Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;->onItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 182
    instance-of v0, p1, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    if-eqz v0, :cond_0

    .line 183
    move-object v0, p1

    check-cast v0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;

    .line 184
    iget-object v1, p0, Lcom/brakefield/painter/ui/SwatchBar$ItemMoveCallback;->mAdapter:Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;

    invoke-interface {v1, v0}, Lcom/brakefield/painter/ui/SwatchBar$ItemTouchHelperContract;->onItemSelected(Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;)V

    .line 187
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

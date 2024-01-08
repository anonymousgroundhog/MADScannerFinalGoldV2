.class public Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LayersBar.java"

# interfaces
.implements Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;,
        Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;,
        Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;,
        Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;",
        ">;",
        "Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;"
    }
.end annotation


# static fields
.field private static final ADJUSTMENT:I = 0x2

.field private static final GROUP:I = 0x1

.field private static final LAYER:I


# instance fields
.field private delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

.field final synthetic this$0:Lcom/brakefield/painter/ui/LayersBar;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 905
    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    const/4 p1, 0x1

    .line 906
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1247
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 1248
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 1254
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->isLayerGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1255
    :cond_0
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->isAdjustmentLayer(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 896
    check-cast p1, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->onBindViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;I)V
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 1278
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->update(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 896
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;
    .locals 3

    .line 1267
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 1271
    new-instance p2, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;

    const v1, 0x7f0d0142

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    invoke-direct {p2, p0, p1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    return-object p2

    .line 1270
    :cond_0
    new-instance p2, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;

    const v1, 0x7f0d0143

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    invoke-direct {p2, p0, p1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    return-object p2

    .line 1269
    :cond_1
    new-instance p2, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;

    const v1, 0x7f0d0144

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    invoke-direct {p2, p0, p1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    return-object p2
.end method

.method public onItemClear(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;)V
    .locals 1

    .line 1307
    iget-object p1, p1, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1308
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    return-void
.end method

.method public onItemMoved(II)V
    .locals 3

    .line 1284
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v1, v0, p1

    sub-int/2addr v0, p2

    .line 1285
    invoke-static {v1, v0}, Lcom/brakefield/painter/PainterLib;->reorderLayer(II)V

    .line 1286
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 1288
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/AdapterListUpdateCallback;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$2500(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1290
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object v1

    .line 1291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1293
    invoke-static {v2, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1295
    new-instance p1, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;

    invoke-direct {p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 1296
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1297
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1298
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    return-void
.end method

.method public onItemSelected(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;)V
    .locals 2

    .line 1303
    iget-object p1, p1, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

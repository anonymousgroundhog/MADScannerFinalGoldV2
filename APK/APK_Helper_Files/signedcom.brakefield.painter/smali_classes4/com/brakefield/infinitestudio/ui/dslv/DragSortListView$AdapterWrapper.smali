.class Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 1

    .line 259
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    .line 260
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 263
    new-instance v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper$1;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V

    invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_1

    .line 330
    check-cast p2, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;

    const/4 p3, 0x0

    .line 331
    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-interface {v1, p1, v0, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_3

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;->removeViewAt(I)V

    .line 338
    :cond_0
    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 341
    :cond_1
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-interface {p2, p1, p3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 342
    instance-of p3, p2, Landroid/widget/Checkable;

    if-eqz p3, :cond_2

    .line 343
    new-instance p3, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemViewCheckable;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemViewCheckable;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 345
    :cond_2
    new-instance p3, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    .line 347
    :goto_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    invoke-virtual {p3, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    move-object p2, p3

    .line 355
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p3, p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;ILandroid/view/View;Z)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

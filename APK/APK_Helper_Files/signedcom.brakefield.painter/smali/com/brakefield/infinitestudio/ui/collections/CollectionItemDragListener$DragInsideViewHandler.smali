.class Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;
.super Ljava/lang/Object;
.source "CollectionItemDragListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragInsideViewHandler"
.end annotation


# instance fields
.field private itemAdded:Z

.field private final shouldRemoveItemOnExit:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->itemAdded:Z

    .line 45
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->shouldRemoveItemOnExit:Z

    return-void
.end method


# virtual methods
.method public onDragEntered(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 2

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->itemAdded:Z

    .line 50
    iget-object v0, p4, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p3}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/DragEvent;->getY()F

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 52
    iget-object p3, p4, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->item:Ljava/lang/Object;

    iget-object p4, p4, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->view:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;->onItemInserted(Ljava/lang/Object;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->itemAdded:Z

    :cond_0
    return-void
.end method

.method public onDragExited(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->itemAdded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->shouldRemoveItemOnExit:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p2, p2, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->item:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;->onItemRemoved(Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->itemAdded:Z

    return-void
.end method

.method public onDragMoved(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 1

    .line 60
    invoke-virtual {p3}, Landroid/view/DragEvent;->getX()F

    move-result v0

    .line 61
    invoke-virtual {p3}, Landroid/view/DragEvent;->getY()F

    move-result p3

    .line 62
    iget-object p4, p4, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->view:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    .line 63
    invoke-static {p1, v0, p3}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->access$000(Landroidx/recyclerview/widget/RecyclerView;FF)I

    move-result p1

    if-eq p4, p1, :cond_1

    const/4 p3, -0x1

    if-eq p4, p3, :cond_1

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {p2, p4, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;->onItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

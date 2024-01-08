.class Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;
.super Ljava/lang/Object;
.source "CollectionItemDragListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragOverViewHandler"
.end annotation


# instance fields
.field private childAlpha:F

.field private lastChildUnderView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->lastChildUnderView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$1;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;-><init>()V

    return-void
.end method

.method private resetLastChildUnderView()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->lastChildUnderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 100
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->childAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->lastChildUnderView:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public onDragDropped(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->lastChildUnderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p3, p3, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->item:Ljava/lang/Object;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->lastChildUnderView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;->onItemDropped(Ljava/lang/Object;I)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->resetLastChildUnderView()V

    return-void
.end method

.method public onDragMoved(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/DragEvent;)V
    .locals 1

    .line 80
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->lastChildUnderView:Landroid/view/View;

    if-eq p1, p2, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->resetLastChildUnderView()V

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->childAlpha:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->lastChildUnderView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->resetLastChildUnderView()V

    return-void
.end method

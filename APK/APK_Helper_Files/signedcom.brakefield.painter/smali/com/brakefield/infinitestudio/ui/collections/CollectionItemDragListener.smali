.class public abstract Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.super Ljava/lang/Object;
.source "CollectionItemDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;,
        Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;,
        Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;,
        Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;,
        Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;,
        Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterDropContract;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;

.field private final collectionDelegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "*>;"
        }
    .end annotation
.end field

.field private draggingInside:Z

.field private dropAdapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;

.field private final dropHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final reorderHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;

.field private targetDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "*>;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2, p4}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 123
    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropAdapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "*>;)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;-><init>(Z)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->reorderHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;

    .line 111
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$1;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;

    .line 112
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->targetDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    .line 116
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 117
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->adapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;

    .line 118
    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->collectionDelegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/RecyclerView;FF)I
    .locals 0

    .line 11
    invoke-static {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->getAdapterPostionAt(Landroidx/recyclerview/widget/RecyclerView;FF)I

    move-result p0

    return p0
.end method

.method public static findChildViewUnder(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;
    .locals 3

    .line 204
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 206
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 209
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAdapterPostionAt(Landroidx/recyclerview/widget/RecyclerView;FF)I
    .locals 0

    .line 199
    invoke-static {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->findChildViewUnder(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private onDragDropped(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 2

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->shouldDropOver(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropAdapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;

    invoke-virtual {p1, v0, v1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->onDragDropped(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    :cond_0
    return-void
.end method

.method private onDragEnded(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->collectionDelegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;->setDragView(Landroid/view/View;)V

    .line 178
    iget-object v0, p2, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->draggingInside:Z

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 183
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 184
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->adapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v2, p2, v0, v3, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;->onItemDragEnded(Ljava/lang/Object;Landroid/graphics/Rect;II)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->adapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, p2, v0, v2, v2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;->onItemDragEnded(Ljava/lang/Object;Landroid/graphics/Rect;II)V

    .line 188
    :goto_0
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->targetDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    return-void
.end method

.method private onDragEntered(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 3

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->shouldDropOver(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->reset()V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->reorderHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->adapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->onDragEntered(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    :goto_0
    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->draggingInside:Z

    return-void
.end method

.method private onDragExited(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 1

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->shouldDropOver(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->reset()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->reorderHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->adapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;

    invoke-virtual {p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->onDragExited(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    :goto_0
    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->draggingInside:Z

    return-void
.end method

.method private onDragMoved(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 3

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->shouldDropOver(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->onDragMoved(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/DragEvent;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragOverViewHandler;->reset()V

    .line 168
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->reorderHandler:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->adapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragInsideViewHandler;->onDragMoved(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    :goto_0
    return-void
.end method

.method private onDragStarted(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 0

    .line 153
    iget-object p1, p2, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;->view:Landroid/view/View;

    .line 154
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->adapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;->onItemDragStarted()V

    .line 155
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->collectionDelegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;->setDragView(Landroid/view/View;)V

    const/4 p2, 0x4

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->draggingInside:Z

    return-void
.end method

.method private shouldDropOver(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->dropAdapter:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->findChildViewUnder(Landroidx/recyclerview/widget/RecyclerView;FF)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;->shouldDrop(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected abstract handles(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    .line 135
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->targetDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    .line 137
    :cond_0
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 138
    :cond_1
    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    .line 139
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->handles(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 141
    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->onDragExited(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->onDragEntered(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-direct {p0, p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->onDragEnded(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-direct {p0, p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->onDragDropped(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    goto :goto_0

    .line 144
    :pswitch_4
    invoke-direct {p0, p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->onDragMoved(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    goto :goto_0

    .line 142
    :pswitch_5
    invoke-direct {p0, p2, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->onDragStarted(Landroid/view/DragEvent;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTargetDragView(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->targetDragView:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;

    return-void
.end method

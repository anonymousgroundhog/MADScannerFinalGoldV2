.class public Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;
    }
.end annotation


# static fields
.field public static final DEFAULT_SCROLLER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

.field public static final DEFAULT_TRANSFORMER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

.field private static final TAG:Ljava/lang/String; = "CarouselLayoutManager"


# instance fields
.field private mDecoratedChildHeight:I

.field private mDecoratedChildWidth:I

.field private mDrawOrder:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

.field private mExtraVisibleChilds:I

.field private mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private mHasDatasetUpdated:Z

.field private mInfinite:Z

.field private mLeftOffset:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mOnItemClickListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

.field private mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollOffset:I

.field private mScrollPositionUpdated:Z

.field private mScroller:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

.field private mTopOffset:I

.field private mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ImmutableTransformer;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/carousel/transformer/LinearViewTransformer;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/LinearViewTransformer;-><init>()V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ImmutableTransformer;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->DEFAULT_TRANSFORMER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    .line 35
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/scrolltweaker/NormalScroller;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/carousel/scrolltweaker/NormalScroller;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->DEFAULT_SCROLLER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 69
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mOnItemClickListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    .line 40
    sget-object v2, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstBack:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    iput-object v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDrawOrder:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    const/4 v2, 0x0

    .line 41
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mExtraVisibleChilds:I

    .line 42
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mGravity:I

    .line 47
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mPendingTasks:Ljava/util/Queue;

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mLeftOffset:I

    iput v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTopOffset:I

    .line 56
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    iput v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredHeight:I

    .line 57
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHasDatasetUpdated:Z

    .line 59
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollPositionUpdated:Z

    .line 62
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    .line 66
    sget-object v1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->DEFAULT_TRANSFORMER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    .line 70
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setTransformer(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    .line 71
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->resetOptions()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mOnItemClickListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    return-object p0
.end method

.method private computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 830
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    mul-int/2addr p1, v0

    .line 831
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 833
    :goto_0
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            ")V"
        }
    .end annotation

    .line 714
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "drawChild (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->translatePosition(I)I

    move-result v0

    .line 718
    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->pop(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_0

    .line 721
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p2

    .line 722
    new-instance p3, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;

    invoke-direct {p3, p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$2;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->addView(Landroid/view/View;)V

    .line 732
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0, p2}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "addView (%d [%d]) %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 736
    :cond_0
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->attachView(Landroid/view/View;)V

    .line 740
    :goto_0
    invoke-virtual {p0, p2, v1, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 742
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 746
    :cond_1
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mLeftOffset:I

    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTopOffset:I

    iget p3, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    add-int v6, v4, p3

    iget p3, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildHeight:I

    add-int v7, v5, p3

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 750
    iget-object p3, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    iget p4, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    invoke-virtual {p0, p4}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->pixelToPosition(I)F

    move-result p4

    int-to-float p1, p1

    sub-float/2addr p4, p1

    neg-float p1, p4

    invoke-interface {p3, p2, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;->transform(Landroid/view/View;F)V

    return-void
.end method

.method private fillChildrenView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "fillChildrenView =============="

    .line 602
    invoke-static {v2, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    new-instance v1, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getChildCount()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;-><init>(I)V

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getChildCount() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getChildCount()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_0
    if-ltz v2, :cond_0

    .line 611
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 612
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 613
    invoke-virtual {v1, v6, v5}, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->put(ILjava/lang/Object;)V

    .line 614
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "viewCache[%d] = %s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    invoke-virtual {p0, v5}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->detachView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getLeftmostVisiblePosition()I

    move-result v2

    .line 621
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getRightmostVisiblePosition()I

    move-result v5

    .line 622
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPosition()I

    move-result v6

    if-gt v2, v5, :cond_c

    .line 629
    sget-object v7, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$4;->$SwitchMap$com$brakefield$infinitestudio$ui$carousel$widget$CarouselView$DrawOrder:[I

    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDrawOrder:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v4, :cond_9

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    goto :goto_6

    .line 667
    :cond_1
    invoke-direct {p0, v6, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    sub-int/2addr v6, v4

    move v7, v5

    :cond_2
    :goto_1
    if-ge v6, v2, :cond_3

    if-gt v7, v5, :cond_c

    :cond_3
    if-lt v6, v2, :cond_4

    .line 672
    invoke-direct {p0, v6, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v6, v6, -0x1

    :cond_4
    if-gt v7, v5, :cond_2

    .line 676
    invoke-direct {p0, v7, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    sub-int v7, v6, v2

    sub-int v8, v5, v6

    if-le v7, v8, :cond_6

    .line 653
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    sub-int v8, v5, v6

    if-ge v7, v8, :cond_7

    .line 656
    invoke-direct {p0, v5, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-ge v2, v5, :cond_8

    .line 660
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 661
    invoke-direct {p0, v5, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 663
    :cond_8
    invoke-direct {p0, v6, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_6

    .line 633
    :cond_9
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDrawOrder:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    sget-object v7, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    if-ne v6, v7, :cond_a

    const/4 v6, -0x1

    move v9, v5

    move v5, v2

    move v2, v9

    goto :goto_5

    :cond_a
    move v6, v4

    :goto_5
    sub-int/2addr v2, v6

    :cond_b
    add-int/2addr v2, v6

    .line 646
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->drawChild(ILcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    if-ne v2, v5, :cond_b

    .line 688
    :cond_c
    :goto_6
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v4

    :goto_7
    if-ltz p2, :cond_e

    .line 689
    invoke-virtual {v1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->valuesAt(I)Ljava/util/ArrayList;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v4, "recycleView (%d) %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    invoke-virtual {v1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/util/MultiSparseArray;->valuesAt(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 693
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_8

    :cond_d
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 699
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getChildCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "fillChildrenView ============== end"

    new-array p2, v0, [Ljava/lang/Object;

    .line 701
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getContentLeftX()I
    .locals 2

    .line 262
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getContentWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getContentRightX()I
    .locals 2

    .line 266
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getContentWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getContentWidth()I
    .locals 2

    .line 374
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getLeftmostVisiblePosition()I
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getContentLeftX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->pixelToPosition(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mExtraVisibleChilds:I

    sub-int/2addr v0, v1

    .line 271
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getRightmostVisiblePosition()I
    .locals 2

    .line 275
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getContentRightX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->pixelToPosition(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mExtraVisibleChilds:I

    add-int/2addr v0, v1

    .line 276
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getVisibleChildCount()I
    .locals 2

    .line 567
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getContentWidth()I

    move-result v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 893
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    array-length v0, p1

    if-lez v0, :cond_0

    .line 895
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    :cond_0
    sget-object p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static varargs logv(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 903
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    array-length v0, p1

    if-lez v0, :cond_0

    .line 905
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 907
    :cond_0
    sget-object p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private measureChildSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 5

    .line 453
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildHeight:I

    mul-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 455
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 456
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->addView(Landroid/view/View;)V

    .line 457
    invoke-virtual {p0, v1, v0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 460
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    .line 461
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildHeight:I

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "child width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", my width = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scrap width = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    invoke-virtual {p0, v1, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_1
    return-void
.end method

.method private positionOfIndex(I)I
    .locals 0

    return p1
.end method

.method private updateWindowVariables()V
    .locals 2

    .line 494
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 505
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mLeftOffset:I

    goto :goto_0

    .line 500
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mLeftOffset:I

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mLeftOffset:I

    .line 509
    :goto_0
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    if-eq v0, v1, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTopOffset:I

    goto :goto_1

    .line 516
    :cond_2
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredHeight:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTopOffset:I

    goto :goto_1

    .line 520
    :cond_3
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredHeight:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTopOffset:I

    :goto_1
    return-void
.end method


# virtual methods
.method adjustHostDimension(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 4

    .line 395
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 396
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 397
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 398
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p4

    const/4 v1, 0x0

    .line 403
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    .line 404
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredHeight:I

    .line 405
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->measureChildSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 407
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getMinimumWidth()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 408
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildHeight:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq p2, v3, :cond_0

    if-eq p2, v2, :cond_1

    move p3, p1

    goto :goto_0

    .line 416
    :cond_0
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_1
    :goto_0
    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_3

    move p4, v1

    goto :goto_1

    .line 431
    :cond_2
    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 439
    :cond_3
    :goto_1
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    .line 440
    iput p4, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredHeight:I

    .line 442
    invoke-virtual {p0, p3, p4}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 232
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getCarouselView()Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    return-object v0
.end method

.method public getCurrentOffset()F
    .locals 3

    .line 301
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->pixelToPosition(I)F

    move-result v0

    float-to-double v1, v0

    .line 302
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->pixelToPosition(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getCurrentPositionPoint()F
    .locals 1

    .line 293
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->pixelToPosition(I)F

    move-result v0

    return v0
.end method

.method public getDrawOrder()Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDrawOrder:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    return-object v0
.end method

.method public getExtraVisibleChilds()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mExtraVisibleChilds:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mGravity:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    return v0
.end method

.method public getScroller()Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScroller:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    return-object v0
.end method

.method public getTransformer()Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    return-object v0
.end method

.method public isInfinite()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    return v0
.end method

.method public isValidPosition(I)Z
    .locals 3

    .line 589
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 591
    :cond_0
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    if-nez v2, :cond_1

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method synthetic lambda$smoothScrollToPosition$0$com-brakefield-infinitestudio-ui-carousel-manager-CarouselLayoutManager(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 798
    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 5

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 474
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 475
    invoke-virtual {p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 476
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 477
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 479
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    .line 480
    :goto_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredHeight:I

    .line 483
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    const/4 v4, 0x0

    .line 482
    invoke-static {v1, v3, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result p2

    .line 487
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    iget p3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 486
    invoke-static {v2, v1, p3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result p3

    .line 490
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 841
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 842
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->removeAllViews()V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 882
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 883
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 888
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 p1, 0x0

    .line 889
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 864
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x1

    .line 865
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHasDatasetUpdated:Z

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 847
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x1

    .line 848
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHasDatasetUpdated:Z

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 876
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    const/4 p1, 0x1

    .line 877
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHasDatasetUpdated:Z

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 870
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x1

    .line 871
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHasDatasetUpdated:Z

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 853
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p1, 0x1

    .line 854
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHasDatasetUpdated:Z

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    add-int v0, p2, p1

    .line 856
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    sget-object v0, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->ukiPJEUyYOfVPIL:Ljava/lang/String;

    .line 537
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->measureChildSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 539
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->updateWindowVariables()V

    .line 540
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHasDatasetUpdated:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollPositionUpdated:Z

    if-eqz v0, :cond_2

    .line 541
    :cond_1
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 542
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mHasDatasetUpdated:Z

    .line 543
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollPositionUpdated:Z

    .line 545
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->fillChildrenView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const-string p1, "onLayoutChildren : Queue Pending Tasks"

    new-array p2, v1, [Ljava/lang/Object;

    .line 548
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mPendingTasks:Ljava/util/Queue;

    .line 552
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mPendingTasks:Ljava/util/Queue;

    .line 553
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    new-instance p2, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$1;

    invoke-direct {p2, p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$1;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;Ljava/util/Queue;)V

    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->post(Ljava/lang/Runnable;)Z

    const-string p1, "onLayoutChildren ============== end"

    new-array p2, v1, [Ljava/lang/Object;

    .line 563
    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->logv(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 553
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 1

    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    .line 380
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildHeight:I

    .line 381
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 382
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->adjustHostDimension(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "carousel width = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", height = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 387
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 388
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 389
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p4

    .line 390
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "carousel onMeasure %d %d %d %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 84
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    check-cast p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;

    .line 89
    iget p1, p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;->scrollOffset:I

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 76
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;-><init>()V

    .line 77
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$SavedState;->scrollOffset:I

    return-object v0
.end method

.method protected pixelToPosition(I)F
    .locals 1

    .line 370
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    if-eqz v0, :cond_0

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 930
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public resetOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setScroller(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    .line 115
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstBack:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setDrawOrder(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .line 309
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScroller:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;->tweakScrollDx(I)I

    move-result p1

    .line 313
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    if-nez v0, :cond_4

    .line 314
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    add-int v2, v0, p1

    if-gez v2, :cond_3

    if-lez v0, :cond_2

    neg-int v1, v0

    :cond_2
    :goto_0
    move p1, v1

    goto :goto_1

    .line 317
    :cond_3
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    .line 318
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    add-int v3, v2, p1

    if-le v3, v0, :cond_4

    if-ge v2, v0, :cond_2

    sub-int v1, v0, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 325
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    .line 326
    invoke-direct {p0, p2, p3}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->fillChildrenView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 329
    :cond_5
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScroller:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;->inverseTweakScrollDx(I)I

    move-result p1

    :cond_6
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 10

    .line 760
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mPendingTasks:Ljava/util/Queue;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$3;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$3;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 769
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    mul-int/2addr v0, p1

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scrollToPosition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "scrollOffset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v4, v1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 772
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollPositionUpdated:Z

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "set mScrollPositionUpdated"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    :cond_1
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    .line 776
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isInLayout()Z

    move-result p1

    if-nez p1, :cond_2

    .line 777
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->requestLayout()V

    :cond_2
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 4

    .line 336
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScroller:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;->tweakScrollDx(I)I

    move-result p1

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    if-nez v0, :cond_4

    .line 341
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    add-int v2, v0, p1

    if-gez v2, :cond_3

    if-lez v0, :cond_2

    neg-int v1, v0

    :cond_2
    :goto_0
    move p1, v1

    goto :goto_1

    .line 344
    :cond_3
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    .line 345
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    add-int v3, v2, p1

    if-le v3, v0, :cond_4

    if-ge v2, v0, :cond_2

    sub-int v1, v0, v2

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 352
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    .line 353
    invoke-direct {p0, p2, p3}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->fillChildrenView(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 356
    :cond_5
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScroller:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;->inverseTweakScrollDx(I)I

    move-result p1

    :cond_6
    return p1
.end method

.method public setDrawOrder(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDrawOrder:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    return-object p0
.end method

.method public setExtraVisibleChilds(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;I)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
    .locals 0

    .line 144
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mExtraVisibleChilds:I

    add-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 145
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setItemViewCacheSize(I)V

    return-object p0
.end method

.method public setGravity(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mGravity:I

    .line 191
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->requestLayout()V

    return-void
.end method

.method public setInfinite(Z)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    return-object p0
.end method

.method public setMeasuredDimension(II)V
    .locals 0

    .line 447
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 448
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredWidth:I

    .line 449
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mMeasuredHeight:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mOnItemClickListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    return-object p0
.end method

.method public setScroller(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    sget-object p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->DEFAULT_SCROLLER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    :goto_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScroller:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;

    return-object p0
.end method

.method public setTransformer(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 99
    :cond_0
    sget-object v1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->DEFAULT_TRANSFORMER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    :goto_0
    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    if-eq v1, v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->resetOptions()V

    .line 102
    invoke-interface {p1, p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;->onAttach(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V

    :cond_1
    return-object p0
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 6

    .line 794
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v0

    .line 796
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mPendingTasks:Ljava/util/Queue;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    mul-int/2addr v1, v0

    if-nez v1, :cond_1

    return-void

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->isInfinite()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    add-int/lit8 p2, v0, -0x1

    .line 804
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 806
    :cond_2
    rem-int p2, p3, v0

    :goto_0
    const p3, 0x7fffffff

    const/4 v2, -0x1

    :goto_1
    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    .line 810
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->isInfinite()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    mul-int v3, v2, v0

    add-int/2addr v3, p2

    .line 811
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mDecoratedChildWidth:I

    mul-int/2addr v3, v4

    iget v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mScrollOffset:I

    mul-int/2addr v4, v0

    rem-int/2addr v5, v4

    sub-int/2addr v3, v5

    .line 812
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_4

    move p3, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 817
    :cond_5
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->canScrollVertically()Z

    move-result p2

    if-eqz p2, :cond_6

    neg-int p2, p3

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_2

    .line 818
    :cond_6
    invoke-virtual {p1, p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_2
    return-void
.end method

.method public translatePosition(I)I
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->mInfinite:Z

    if-nez v0, :cond_0

    return p1

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getItemCount()I

    move-result v0

    .line 578
    rem-int/2addr p1, v0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    :cond_1
    return p1
.end method

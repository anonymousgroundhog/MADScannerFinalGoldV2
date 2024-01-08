.class public Lcom/brakefield/infinitestudio/ui/DragSortGridView;
.super Landroid/widget/GridView;
.source "DragSortGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/DragSortGridView$OnReorderingListener;,
        Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;,
        Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;
    }
.end annotation


# instance fields
.field private dragListener:Landroid/view/View$OnDragListener;

.field private fadeOutAnimation:Landroid/view/animation/Animation;

.field protected itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected lastDraggingPosition:I

.field protected movingChildViews:Z

.field protected onReorderingListener:Lcom/brakefield/infinitestudio/ui/DragSortGridView$OnReorderingListener;

.field protected reorderingPositions:Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Lcom/brakefield/infinitestudio/ui/DragSortGridView$1;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$1;-><init>(Lcom/brakefield/infinitestudio/ui/DragSortGridView;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->movingChildViews:Z

    .line 126
    new-instance p1, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;-><init>(Lcom/brakefield/infinitestudio/ui/DragSortGridView;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->dragListener:Landroid/view/View$OnDragListener;

    .line 29
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 30
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->dragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/DragSortGridView;)Landroid/view/animation/Animation;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->fadeOutAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$002(Lcom/brakefield/infinitestudio/ui/DragSortGridView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->fadeOutAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/DragSortGridView;I)Landroid/view/View;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getView(I)Landroid/view/View;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->reorderingPositions:Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->get(I)I

    move-result p1

    .line 281
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private moveView(II)V
    .locals 5

    .line 229
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 230
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getView(I)Landroid/view/View;

    move-result-object p2

    .line 232
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 233
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 234
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 235
    invoke-direct {p0, p2, v1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 237
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-direct {v2, v1, v3, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 238
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x0

    .line 239
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    .line 240
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 242
    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 243
    new-instance v0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;-><init>(Lcom/brakefield/infinitestudio/ui/DragSortGridView;Landroid/view/View;II)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 245
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected reorderViews(II)V
    .locals 3

    if-ne p1, p2, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 210
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    if-ge p2, p1, :cond_2

    .line 215
    invoke-direct {p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    if-ge p2, p1, :cond_1

    add-int/lit8 v1, p2, 0x1

    .line 216
    invoke-direct {p0, p2, v1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->moveView(II)V

    move p2, v1

    goto :goto_0

    .line 217
    :cond_1
    iget p1, v2, Landroid/graphics/Rect;->left:I

    iget p2, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 221
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_1
    if-le p2, p1, :cond_3

    add-int/lit8 v1, p2, -0x1

    .line 222
    invoke-direct {p0, p2, v1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->moveView(II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 223
    :cond_3
    iget p1, v2, Landroid/graphics/Rect;->left:I

    iget p2, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_2
    return-void
.end method

.method public setOnReorderingListener(Lcom/brakefield/infinitestudio/ui/DragSortGridView$OnReorderingListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->onReorderingListener:Lcom/brakefield/infinitestudio/ui/DragSortGridView$OnReorderingListener;

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;
.super Lcom/brakefield/infinitestudio/ui/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ClickListener;
    }
.end annotation


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private clickListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ClickListener;

.field private doubleTapListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;

.field private dragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;

.field private expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

.field private mExpandEnabled:Z

.field private mExpandSlop:I

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsExpanding:Z

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTapped:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;III)V

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 121
    invoke-direct/range {v0 .. v5}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 126
    invoke-direct/range {v0 .. v6}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;IIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;IIIII)V
    .locals 3

    .line 130
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mSortEnabled:Z

    .line 65
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    .line 68
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandEnabled:Z

    .line 69
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    const/4 v2, -0x1

    .line 79
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    .line 80
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHitPos:I

    .line 82
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 84
    iput-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTempLoc:[I

    .line 92
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    const/high16 v2, 0x43fa0000    # 500.0f

    .line 94
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingSpeed:F

    .line 106
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTapped:Z

    .line 468
    new-instance v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 131
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    .line 132
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    .line 133
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandSlop:I

    .line 134
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragHandleId:I

    .line 135
    iput p5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mClickRemoveId:I

    .line 136
    iput p6, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHandleId:I

    .line 137
    invoke-virtual {p0, p4}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->setRemoveMode(I)V

    .line 138
    invoke-virtual {p0, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->setDragInitMode(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandSlop:I

    return p0
.end method

.method static synthetic access$102(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandEnabled:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    return p0
.end method

.method static synthetic access$1400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHitPos:I

    return p0
.end method

.method static synthetic access$1502(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCurrX:I

    return p1
.end method

.method static synthetic access$1602(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCurrY:I

    return p1
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingSpeed:F

    return p0
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mPositionX:I

    return p0
.end method

.method static synthetic access$402(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mPositionX:I

    return p1
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    return p0
.end method

.method static synthetic access$502(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    return p1
.end method

.method static synthetic access$600(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCanDrag:Z

    return p0
.end method

.method static synthetic access$602(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCanDrag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    return p0
.end method

.method static synthetic access$702(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    return p1
.end method

.method static synthetic access$800(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    return p0
.end method

.method static synthetic access$900(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    return p0
.end method

.method private handleTap()Z
    .locals 4

    .line 499
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_1

    .line 500
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    .line 502
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v0, v3

    .line 501
    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->removeItem(I)V

    :cond_0
    return v1

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->clickListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ClickListener;

    if-eqz v0, :cond_2

    .line 506
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ClickListener;->onClick(I)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bindExpandListener(Landroid/view/View;)V
    .locals 3

    .line 546
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Landroid/view/View;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 633
    new-instance v1, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 283
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1

    .line 287
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->doubleTapListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->doubleTapListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;->onClick(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 333
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 334
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 337
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 339
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    if-nez v1, :cond_1

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->startDrag(III)Z

    :cond_1
    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTapped:Z

    .line 345
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    .line 346
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    const/4 v1, 0x1

    .line 347
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCanDrag:Z

    .line 348
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mPositionX:I

    .line 349
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHitPos:I

    return v1
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 269
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    if-eqz p1, :cond_0

    .line 270
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mPositionX:I

    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 439
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 440
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->performHapticFeedback(I)Z

    .line 441
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCurrX:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mItemX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCurrY:I

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mItemY:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->startDrag(III)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 p3, 0x0

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 365
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mItemX:I

    sub-int v1, v0, v1

    .line 366
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mItemY:I

    sub-int v2, p2, v2

    .line 368
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCanDrag:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    if-nez v3, :cond_e

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHitPos:I

    if-eq v5, v4, :cond_e

    :cond_1
    const/4 v5, 0x1

    if-eq v3, v4, :cond_9

    .line 370
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    if-ne v3, v5, :cond_2

    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    if-le v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v3, :cond_2

    .line 372
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->startDrag(III)Z

    goto/16 :goto_2

    .line 374
    :cond_2
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    if-eqz v3, :cond_5

    sub-int v3, p2, p1

    .line 375
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    if-ge v3, v4, :cond_5

    sub-int v3, v0, p4

    .line 376
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandSlop:I

    if-le v4, v6, :cond_5

    iget-boolean v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    if-eqz v4, :cond_3

    .line 380
    invoke-interface {v4}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    .line 381
    invoke-interface {v4, v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->willExpand(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandEnabled:Z

    if-nez v3, :cond_5

    .line 382
    :cond_4
    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    .line 383
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->startDrag(III)Z

    goto/16 :goto_2

    .line 384
    :cond_5
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandEnabled:Z

    if-nez v1, :cond_6

    sub-int/2addr p2, p1

    .line 385
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    if-ge p1, p2, :cond_e

    sub-int p1, v0, p4

    .line 386
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandSlop:I

    if-le p1, p2, :cond_e

    .line 387
    :cond_6
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    if-eqz p1, :cond_8

    .line 388
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    if-nez p2, :cond_7

    sub-int/2addr v0, p4

    .line 389
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    .line 390
    invoke-interface {p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpandStarted(II)V

    goto :goto_0

    :cond_7
    sub-int/2addr v0, p4

    .line 393
    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpand(I)V

    .line 396
    :cond_8
    :goto_0
    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    goto/16 :goto_2

    .line 399
    :cond_9
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHitPos:I

    if-eq v3, v4, :cond_e

    sub-int/2addr p2, p1

    .line 400
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    if-ge p1, v3, :cond_a

    sub-int p1, v0, p4

    .line 401
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    if-le v3, v4, :cond_a

    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    if-eqz v3, :cond_a

    .line 405
    invoke-interface {v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    .line 406
    invoke-interface {v3, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->willExpand(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 407
    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    .line 408
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->startDrag(III)Z

    goto :goto_2

    .line 410
    :cond_a
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    if-eqz p1, :cond_d

    .line 411
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    if-ge p1, v1, :cond_d

    sub-int/2addr v0, p4

    .line 412
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandSlop:I

    if-le p1, p4, :cond_d

    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandEnabled:Z

    if-eqz p1, :cond_d

    .line 414
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    if-eqz p1, :cond_c

    .line 415
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    if-nez p2, :cond_b

    .line 416
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    .line 417
    invoke-interface {p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpandStarted(II)V

    goto :goto_1

    .line 420
    :cond_b
    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpand(I)V

    .line 423
    :cond_c
    :goto_1
    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    goto :goto_2

    .line 424
    :cond_d
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTouchSlop:I

    if-le p1, p2, :cond_e

    .line 425
    iput-boolean p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCanDrag:Z

    :cond_e
    :goto_2
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 493
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTapped:Z

    if-nez p1, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->handleTap()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 455
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->doubleTapListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;->confirmTap(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 458
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTapped:Z

    .line 459
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->handleTap()Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 192
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->doubleTapListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 199
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->isDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->listViewIntercepted()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 207
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :catch_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveMode:I

    if-ne v0, v1, :cond_4

    .line 212
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 215
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

    const/4 v2, 0x2

    if-eq v0, v1, :cond_7

    if-eq v0, v2, :cond_5

    const/4 p2, 0x3

    if-eq v0, p2, :cond_b

    goto/16 :goto_1

    .line 224
    :cond_5
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    if-nez v0, :cond_d

    .line 232
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->dragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_d

    .line 234
    :cond_6
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->dragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;->onDragOut(I)V

    goto :goto_1

    .line 241
    :cond_7
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    if-eqz p2, :cond_9

    .line 242
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mPositionX:I

    if-ltz p2, :cond_8

    goto :goto_0

    :cond_8
    neg-int p2, p2

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    if-le p2, v0, :cond_9

    .line 245
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 249
    :cond_9
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandEnabled:Z

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    if-eqz p2, :cond_a

    .line 250
    invoke-interface {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpandFinished()V

    .line 253
    :cond_a
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->dragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;

    if-eqz p2, :cond_b

    .line 254
    invoke-interface {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;->onDragEnd()V

    .line 257
    :cond_b
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    .line 258
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    .line 259
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    goto :goto_1

    .line 219
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCurrX:I

    .line 220
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mCurrY:I

    :cond_d
    :goto_1
    return p1
.end method

.method public setClickListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ClickListener;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->clickListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ClickListener;

    return-void
.end method

.method public setDoubleTapListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->doubleTapListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DoubleClickListener;

    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragHandleId:I

    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragInitMode:I

    return-void
.end method

.method public setDragListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->dragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;

    return-void
.end method

.method public setExpandEnabled(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mExpandEnabled:Z

    return-void
.end method

.method public setExpandListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->expandListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveMode:I

    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mSortEnabled:Z

    return-void
.end method

.method public startDrag(III)Z
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsExpanding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    if-nez v0, :cond_1

    const/16 v1, 0xc

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_2

    or-int/lit8 v0, v1, 0x1

    or-int/lit8 v1, v0, 0x2

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->startDrag(IIII)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    if-eqz p1, :cond_3

    .line 178
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->dragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;

    if-eqz p1, :cond_3

    .line 179
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mHitPos:I

    iget-object p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$DragListener;->onDragStart(I)V

    .line 181
    :cond_3
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDragging:Z

    return p1
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2

    .line 279
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 7

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 294
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v2, v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->pointToPosition(II)I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    .line 298
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 306
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mDslv:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    .line 307
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    .line 306
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 314
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 316
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTempLoc:[I

    const/4 v5, 0x0

    aget v5, v3, v5

    if-le v2, v5, :cond_1

    const/4 v6, 0x1

    aget v3, v3, v6

    if-le p1, v3, :cond_1

    .line 317
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v5, v3

    if-ge v2, v5, :cond_1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mTempLoc:[I

    aget v2, v2, v6

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    if-ge p1, v2, :cond_1

    .line 320
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mItemX:I

    .line 321
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->mItemY:I

    return v0

    :cond_1
    return v4
.end method

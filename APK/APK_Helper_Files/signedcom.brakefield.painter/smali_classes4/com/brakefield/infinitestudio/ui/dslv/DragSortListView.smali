.class public Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScrollProfile;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveAnimator;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropAnimator;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;,
        Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$SmoothAnimator;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewManager:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRemoveAnimator:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 142
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 53
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    const/4 v2, 0x0

    .line 55
    iput-boolean v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    iput v3, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatAlpha:F

    .line 58
    iput v3, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 62
    iput-boolean v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAnimate:Z

    const/4 v4, 0x1

    .line 69
    iput-boolean v4, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragEnabled:Z

    .line 77
    iput v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    .line 79
    iput v4, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 82
    iput v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mWidthMeasureSpec:I

    new-array v5, v4, [Landroid/view/View;

    .line 83
    iput-object v5, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    const v5, 0x3eaaaaab

    .line 85
    iput v5, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 86
    iput v5, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v5, 0x3f000000    # 0.5f

    .line 93
    iput v5, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 95
    new-instance v6, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$1;

    invoke-direct {v6, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$1;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V

    iput-object v6, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mScrollProfile:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScrollProfile;

    .line 113
    iput v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragFlags:I

    .line 115
    iput-boolean v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 116
    iput-boolean v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v6, 0x0

    .line 117
    iput-object v6, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewManager:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;

    .line 124
    iput v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelMethod:I

    const/high16 v6, 0x3e800000    # 0.25f

    .line 126
    iput v6, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v6, 0x0

    .line 127
    iput v6, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideFrac:F

    .line 129
    iput-boolean v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 130
    iput-boolean v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 132
    new-instance v7, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;I)V

    iput-object v7, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mChildHeightCache:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;

    .line 139
    iput v6, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1199
    iput-boolean v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mListViewIntercepted:Z

    const/16 v7, 0x96

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView:[I

    invoke-virtual {v8, v1, v9, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 152
    sget v8, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView_collapsed_height:I

    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 156
    sget v8, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView_float_alpha:I

    iget v9, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatAlpha:F

    .line 157
    iput v8, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 159
    sget v8, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView_drag_enabled:I

    iget-boolean v9, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragEnabled:Z

    .line 161
    sget v8, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView_slide_shuffle_speed:I

    const/high16 v9, 0x3f400000    # 0.75f

    .line 162
    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    sub-float v8, v3, v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 161
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideRegionFrac:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    move v2, v4

    .line 166
    :cond_0
    iput-boolean v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAnimate:Z

    .line 168
    sget v2, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView_drag_scroll_start:I

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 172
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 174
    sget v2, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView_max_drag_scroll_speed:I

    iget v3, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 178
    sget v2, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView_remove_animation_duration:I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 182
    sget v3, Lcom/brakefield/infinitestudio/R$styleable;->DragSortListView_drop_animation_duration:I

    invoke-virtual {v1, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 186
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v7

    move v7, v2

    goto :goto_0

    :cond_1
    move v1, v7

    .line 189
    :goto_0
    new-instance v2, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    invoke-direct {v2, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V

    iput-object v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    if-lez v7, :cond_2

    .line 193
    new-instance v2, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveAnimator;

    invoke-direct {v2, v0, v5, v7}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;FI)V

    iput-object v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveAnimator:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveAnimator;

    :cond_2
    if-lez v1, :cond_3

    .line 196
    new-instance v2, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropAnimator;

    invoke-direct {v2, v0, v5, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropAnimator;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;FI)V

    iput-object v2, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDropAnimator:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropAnimator;

    :cond_3
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 199
    invoke-static/range {v6 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 202
    new-instance v1, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$2;

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$2;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mMaxScrollSpeed:F

    return p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mItemHeightCollapsed:I

    return p0
.end method

.method static synthetic access$102(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    return p0
.end method

.method static synthetic access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    return p0
.end method

.method static synthetic access$1400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    return p0
.end method

.method static synthetic access$1500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveVelocityX:F

    return p0
.end method

.method static synthetic access$1602(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1616(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;F)F
    .locals 1

    .line 49
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveVelocityX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1700(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewMid:I

    return p0
.end method

.method static synthetic access$2100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUpScrollStartYF:F

    return p0
.end method

.method static synthetic access$2200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragUpScrollHeight:F

    return p0
.end method

.method static synthetic access$2300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScrollProfile;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mScrollProfile:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScrollProfile;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDownScrollStartYF:F

    return p0
.end method

.method static synthetic access$2500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDownScrollHeight:F

    return p0
.end method

.method static synthetic access$2602(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDeltaY:I

    return p0
.end method

.method static synthetic access$302(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return p0
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mY:I

    return p0
.end method

.method static synthetic access$700(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatPos:I

    return p0
.end method

.method static synthetic access$900(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    return p0
.end method

.method private adjustAllItems()V
    .locals 6

    .line 1344
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1345
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v1

    .line 1347
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v0

    .line 1348
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 1351
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int v5, v0, v2

    .line 1353
    invoke-direct {p0, v5, v4, v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 2

    .line 1361
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1363
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v1, :cond_0

    const/4 p3, -0x2

    goto :goto_0

    .line 1366
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result p3

    .line 1369
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, v1, :cond_1

    .line 1370
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1371
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1375
    :cond_1
    iget p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, p3, :cond_2

    iget p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_4

    .line 1376
    :cond_2
    iget p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, p3, :cond_3

    .line 1377
    move-object p3, p2

    check-cast p3, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;

    const/16 v0, 0x50

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1

    :cond_3
    if-le p1, p3, :cond_4

    .line 1379
    move-object p3, p2

    check-cast p3, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;

    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortItemView;->setGravity(I)V

    .line 1385
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    .line 1388
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eq p1, p3, :cond_6

    .line 1393
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private adjustOnReorder()V
    .locals 3

    .line 1073
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1074
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-ge v1, v0, :cond_1

    const/4 v1, 0x0

    .line 1077
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1080
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1082
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 7

    .line 1530
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    .line 1532
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 1533
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    .line 1537
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v2, :cond_0

    sub-int v3, p2, v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_0
    move v3, p2

    move v0, v1

    .line 1542
    :goto_0
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1543
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v2, v5, :cond_1

    iget v6, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v2, v6, :cond_1

    .line 1544
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v4, v2

    :cond_1
    const/4 v2, 0x0

    if-gt p1, p3, :cond_2

    if-le p1, v5, :cond_7

    sub-int/2addr v4, v0

    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    if-ne p1, p4, :cond_5

    if-gt p1, v5, :cond_4

    sub-int/2addr v3, v4

    :cond_3
    add-int/2addr v2, v3

    goto :goto_1

    .line 1554
    :cond_4
    iget p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p3, :cond_3

    sub-int/2addr p2, v1

    add-int/2addr v2, p2

    goto :goto_1

    :cond_5
    if-gt p1, v5, :cond_6

    sub-int/2addr v2, v4

    goto :goto_1

    .line 1562
    :cond_6
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, p2, :cond_7

    sub-int/2addr v2, v0

    :cond_7
    :goto_1
    return v2
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 8

    .line 1869
    invoke-static {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 1873
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    add-int/2addr v0, v4

    move v5, v2

    .line 1876
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    if-ge v6, p2, :cond_3

    .line 1877
    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v6, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1882
    :cond_2
    aput v1, p3, v5

    .line 1883
    aput v3, p4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v6, 0x1

    move v3, v1

    move v1, v6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, p2, :cond_4

    move v3, p1

    .line 1897
    :cond_4
    aput v1, p3, v5

    .line 1898
    aput v3, p4, v5

    add-int/2addr v5, v4

    if-le v5, v4, :cond_5

    .line 1902
    aget p0, p3, v2

    if-ne p0, p1, :cond_5

    add-int/lit8 p0, v5, -0x1

    aget p2, p4, p0

    if-ne p2, p1, :cond_5

    .line 1907
    aget p0, p3, p0

    aput p0, p3, v2

    add-int/lit8 v5, v5, -0x1

    :cond_5
    return v5
.end method

.method private calcItemHeight(II)I
    .locals 6

    .line 1483
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getDividerHeight()I

    .line 1485
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAnimate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1486
    :goto_0
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v1, v2

    .line 1487
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1491
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 1492
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, p1, :cond_2

    if-eqz v0, :cond_1

    add-int p2, v4, v2

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    .line 1498
    :cond_2
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, p1, :cond_3

    sub-int p2, v1, v4

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_1

    .line 1504
    :cond_4
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_5

    add-int/2addr p2, v4

    goto :goto_1

    :cond_5
    add-int/2addr p2, v3

    goto :goto_1

    .line 1510
    :cond_6
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v0, :cond_7

    add-int/2addr p2, v3

    sub-int/2addr p2, v4

    :cond_7
    :goto_1
    return p2
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 0

    .line 1478
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private clearPositions()V
    .locals 1

    const/4 v0, -0x1

    .line 1015
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    .line 1016
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 1017
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    .line 1018
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatPos:I

    return-void
.end method

.method private continueDrag(II)V
    .locals 5

    .line 1279
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1280
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v0, p2, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    const/4 p1, 0x1

    .line 1282
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1284
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewMid:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1285
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewMid:I

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1288
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v1

    .line 1290
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastY:I

    const/4 v3, -0x1

    if-le v0, v2, :cond_1

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v0, v4, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v1, v3, :cond_0

    .line 1296
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1300
    :cond_0
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    :cond_1
    if-ge p2, v2, :cond_3

    .line 1301
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge p2, v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    .line 1307
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1311
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1313
    :cond_3
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt p2, v1, :cond_4

    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v0, p2, :cond_4

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    .line 1314
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1318
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private destroyFloatView()V
    .locals 2

    .line 1818
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 1819
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1820
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewManager:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 1823
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 1824
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->invalidate()V

    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    const/4 v0, 0x0

    .line 1171
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelMethod:I

    .line 1172
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1173
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1174
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    .line 1176
    :cond_0
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatAlpha:F

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1177
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1178
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mChildHeightCache:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;->clear()V

    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1734
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 1736
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->updateFloatView()V

    .line 1738
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 1739
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    .line 1741
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->updatePositions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1744
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->adjustAllItems()V

    .line 1745
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v0

    .line 1747
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1748
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->layoutChildren()V

    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 1752
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->invalidate()V

    :cond_2
    const/4 p1, 0x0

    .line 1755
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 2

    .line 1723
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1724
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1730
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .line 1046
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doRemoveItem(I)V

    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1052
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    .line 1055
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1056
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1059
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->destroyFloatView()V

    .line 1061
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->adjustOnReorder()V

    .line 1062
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->clearPositions()V

    .line 1065
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 1066
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1068
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 8

    .line 363
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getDividerHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    .line 367
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingLeft()I

    move-result v3

    .line 371
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 375
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 377
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v6, :cond_0

    .line 378
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    add-int/2addr p1, v5

    add-int/2addr v1, p1

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    sub-int/2addr p1, v5

    sub-int v1, p1, v1

    move v7, v1

    move v1, p1

    move p1, v7

    .line 385
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 386
    invoke-virtual {p2, v3, p1, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 387
    invoke-virtual {v0, v3, p1, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 389
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private dropFloatView()V
    .locals 4

    const/4 v0, 0x2

    .line 1024
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    .line 1026
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDropListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatPos:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1028
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDropListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1031
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->destroyFloatView()V

    .line 1033
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->adjustOnReorder()V

    .line 1034
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->clearPositions()V

    .line 1035
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->adjustAllItems()V

    .line 1038
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 1039
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1041
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    :goto_0
    return-void
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 2

    .line 1915
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1916
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 1917
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    if-ge v1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_2

    .line 1919
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    if-lt p0, p2, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method private getChildHeight(I)I
    .locals 4

    .line 1398
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1407
    invoke-direct {p0, p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result p1

    return p1

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mChildHeightCache:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return v0

    .line 1416
    :cond_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1417
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1420
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1421
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1422
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    :cond_3
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    .line 1426
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v3, v3, v1

    if-nez v3, :cond_4

    .line 1427
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1428
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v0, v2, v1

    goto :goto_0

    .line 1430
    :cond_4
    invoke-interface {v0, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1434
    :cond_5
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 1438
    invoke-direct {p0, p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1441
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mChildHeightCache:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;

    invoke-virtual {v1, p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$HeightCache;->add(II)V

    return v0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 3

    .line 1448
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1456
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1459
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1462
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_3

    .line 1463
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1

    .line 1467
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_5

    .line 1470
    :cond_4
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1471
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :cond_5
    return p1
.end method

.method private getItemHeight(I)I
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1

    .line 445
    :cond_0
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->calcItemHeight(II)I

    move-result p1

    return p1
.end method

.method private getShuffleEdge(II)I
    .locals 7

    .line 494
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 495
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_7

    .line 501
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 509
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v1, v2

    .line 510
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildHeight(I)I

    move-result v2

    .line 511
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getItemHeight(I)I

    move-result v3

    .line 516
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    iget v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-gt v4, v5, :cond_3

    if-ne p1, v4, :cond_2

    .line 519
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v6, v4, :cond_2

    if-ne p1, v5, :cond_1

    add-int/2addr p2, v3

    .line 521
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    goto :goto_0

    :cond_2
    if-le p1, v4, :cond_5

    if-gt p1, v5, :cond_5

    :goto_0
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    if-le p1, v5, :cond_4

    .line 533
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v6, :cond_4

    add-int/2addr p2, v1

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_5

    .line 535
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v1, v4, :cond_5

    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    :cond_5
    :goto_1
    if-gt p1, v5, :cond_6

    .line 543
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildHeight(I)I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v0

    .line 545
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_7
    :goto_2
    return p2
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4

    .line 1926
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sub-int v2, v0, v1

    if-lez v2, :cond_1

    add-int v2, v1, v0

    shr-int/lit8 v2, v2, 0x1

    .line 1929
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private measureFloatView()V
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1589
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1590
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1591
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeightHalf:I

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 4

    .line 1571
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1573
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1574
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    :cond_0
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v2

    .line 1577
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1576
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1579
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 1580
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1582
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1584
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    .line 1184
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastX:I

    .line 1185
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastY:I

    .line 1187
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mX:I

    .line 1188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mY:I

    if-nez v0, :cond_1

    .line 1190
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mX:I

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastX:I

    .line 1191
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastY:I

    :cond_1
    return-void
.end method

.method private updateFloatView()V
    .locals 7

    .line 1760
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewManager:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mX:I

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mY:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1762
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewManager:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 1766
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 1769
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingLeft()I

    move-result v2

    .line 1770
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1

    if-le v0, v2, :cond_1

    .line 1771
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-ge v0, v2, :cond_2

    .line 1773
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1777
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1778
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    .line 1779
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 1780
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1782
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    if-ge v3, v0, :cond_3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 1784
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1786
    :cond_3
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    .line 1787
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-gt v3, v0, :cond_4

    sub-int/2addr v0, v3

    .line 1788
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1793
    :cond_4
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    .line 1794
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_5

    .line 1795
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1797
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1799
    :cond_5
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    .line 1800
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v2, :cond_6

    sub-int/2addr v2, v3

    .line 1801
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1803
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_6
    if-ge v1, v5, :cond_7

    .line 1808
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 1809
    :cond_7
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_8

    .line 1810
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1814
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewMid:I

    return-void
.end method

.method private updatePositions()Z
    .locals 13

    .line 553
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 554
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    sub-int v2, v1, v0

    .line 555
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int v0, v1, v0

    .line 559
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 561
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 563
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 565
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v3

    .line 568
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 572
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v5, v3, :cond_4

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 576
    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getItemHeight(I)I

    move-result v2

    if-nez v1, :cond_1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    :goto_1
    move v12, v3

    move v3, v0

    move v0, v12

    goto :goto_3

    :cond_1
    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    .line 584
    invoke-direct {p0, v1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v2

    .line 586
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewMid:I

    if-lt v5, v2, :cond_2

    move v0, v3

    move v3, v2

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_3

    .line 594
    :cond_4
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v5

    :goto_2
    if-ge v1, v5, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_5

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    goto :goto_1

    :cond_5
    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 602
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getItemHeight(I)I

    move-result v6

    .line 603
    invoke-direct {p0, v2, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v7

    .line 606
    iget v8, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v8, v7, :cond_6

    move v0, v3

    move v3, v7

    goto :goto_3

    :cond_6
    move v1, v2

    move v2, v6

    move v3, v7

    goto :goto_2

    .line 615
    :goto_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    .line 616
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    .line 620
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 621
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    .line 622
    iget v7, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideFrac:F

    .line 624
    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAnimate:Z

    if-eqz v8, :cond_a

    sub-int v8, v3, v0

    .line 625
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 628
    iget v9, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewMid:I

    if-ge v9, v3, :cond_7

    move v12, v3

    move v3, v0

    move v0, v12

    .line 635
    :cond_7
    iget v10, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideRegionFrac:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    int-to-float v8, v8

    mul-float/2addr v10, v8

    float-to-int v8, v10

    int-to-float v10, v8

    add-int/2addr v3, v8

    sub-int v8, v0, v8

    if-ge v9, v3, :cond_8

    add-int/lit8 v0, v1, -0x1

    .line 642
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 643
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    sub-int/2addr v3, v9

    int-to-float v0, v3

    mul-float/2addr v0, v11

    div-float/2addr v0, v10

    .line 644
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_4

    :cond_8
    if-ge v9, v8, :cond_9

    .line 646
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 647
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    goto :goto_4

    .line 649
    :cond_9
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    add-int/lit8 v3, v1, 0x1

    .line 650
    iput v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    sub-int/2addr v0, v9

    int-to-float v0, v0

    div-float/2addr v0, v10

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    mul-float/2addr v0, v11

    .line 651
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideFrac:F

    goto :goto_4

    .line 655
    :cond_a
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 656
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    .line 660
    :goto_4
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_b

    .line 662
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 663
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    move v1, v2

    goto :goto_5

    .line 664
    :cond_b
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-lt v0, v8, :cond_c

    .line 665
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 666
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 667
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    .line 670
    :cond_c
    :goto_5
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v0, v5, :cond_e

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v0, v6, :cond_e

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSlideFrac:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    move v0, v3

    .line 675
    :goto_7
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatPos:I

    if-eq v1, v4, :cond_10

    .line 676
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_f

    sub-int/2addr v4, v2

    sub-int v2, v1, v2

    .line 677
    invoke-interface {v0, v4, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;->drag(II)V

    .line 680
    :cond_f
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatPos:I

    goto :goto_8

    :cond_10
    move v3, v0

    :goto_8
    return v3
.end method

.method private updateScrollStarts()V
    .locals 7

    .line 1323
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1324
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v0

    .line 1327
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUpScrollStartYF:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1328
    iget v6, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    iput v5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v2, v4

    .line 1330
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUpScrollStartY:I

    float-to-int v2, v5

    .line 1331
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDownScrollStartY:I

    sub-float/2addr v4, v3

    .line 1333
    iput v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragUpScrollHeight:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v5

    .line 1334
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDownScrollHeight:F

    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .line 1000
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1002
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->destroyFloatView()V

    .line 1003
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->clearPositions()V

    .line 1004
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->adjustAllItems()V

    .line 1006
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1007
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1009
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 396
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 398
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 399
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_0

    .line 400
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 402
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v1, :cond_1

    .line 403
    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 409
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 411
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 413
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getWidth()I

    move-result v3

    if-gez v2, :cond_2

    neg-int v2, v2

    :cond_2
    if-ge v2, v3, :cond_3

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    .line 424
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    float-to-int v10, v4

    .line 426
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 427
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 428
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    int-to-float v9, v1

    const/16 v11, 0x1f

    move-object v5, p1

    .line 429
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 430
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAdapterWrapper:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 252
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 1844
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .line 1609
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1611
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1612
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 1616
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->measureFloatView()V

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1619
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .line 1196
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveItem(II)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDropListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDropListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;

    invoke-interface {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;->drop(II)V

    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1629
    :cond_0
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_1

    .line 1630
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->cancelDrag()V

    .line 1632
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1641
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 1635
    :cond_3
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 1636
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->stopDrag(Z)Z

    .line 1638
    :cond_4
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_0
    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1203
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    .line 1204
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1207
    :cond_0
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 1208
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 1213
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    .line 1215
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v0

    .line 1218
    :cond_1
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1224
    :cond_2
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move p1, v0

    goto :goto_1

    .line 1228
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1229
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mListViewIntercepted:Z

    move p1, v0

    goto :goto_0

    :cond_4
    move p1, v4

    :goto_0
    if-eq v1, v0, :cond_6

    if-eq v1, v3, :cond_6

    if-eqz p1, :cond_5

    .line 1240
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 1242
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1236
    :cond_6
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doActionUpOrCancel()V

    :goto_1
    if-eq v1, v0, :cond_7

    if-ne v1, v3, :cond_8

    .line 1248
    :cond_7
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    :cond_8
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1597
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1598
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 1599
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1600
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->measureFloatView()V

    :cond_0
    const/4 p2, 0x1

    .line 1602
    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 1604
    :cond_1
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1340
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->updateScrollStarts()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1120
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1121
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    return v1

    .line 1125
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_1

    .line 1126
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1131
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1132
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLastCallWasIntercept:Z

    if-nez v0, :cond_2

    .line 1135
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1139
    :cond_2
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 1140
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 1148
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    .line 1153
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    if-eqz v1, :cond_6

    .line 1162
    iput v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1158
    :cond_5
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doActionUpOrCancel()V

    :cond_6
    :goto_0
    move v3, v1

    :goto_1
    return v3
.end method

.method public removeItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 949
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 950
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->removeItem(IF)V

    return-void
.end method

.method public removeItem(IF)V
    .locals 3

    .line 954
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_6

    :cond_0
    if-nez v0, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    .line 959
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 960
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    .line 961
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatPos:I

    .line 962
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 964
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 968
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    .line 969
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 971
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz p2, :cond_4

    .line 972
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelMethod:I

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 977
    :cond_2
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 974
    :cond_3
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 982
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveAnimator:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveAnimator;

    if-eqz p2, :cond_5

    .line 983
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveAnimator;->start()V

    goto :goto_1

    .line 985
    :cond_5
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->doRemoveItem(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1522
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1523
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 49
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAdapterWrapper:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 229
    new-instance v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAdapterWrapper:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    .line 230
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 232
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_1

    .line 233
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->setDropListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;)V

    .line 235
    :cond_1
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_2

    .line 236
    move-object v0, p1

    check-cast v0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->setDragListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;)V

    .line 238
    :cond_2
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_4

    .line 239
    check-cast p1, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->setRemoveListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAdapterWrapper:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    .line 245
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mAdapterWrapper:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1841
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragEnabled:Z

    return-void
.end method

.method public setDragListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;)V
    .locals 0

    .line 1838
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .line 1255
    invoke-virtual {p0, p1, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 1260
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1262
    :cond_0
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 1266
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1

    .line 1268
    :cond_1
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1271
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1272
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->updateScrollStarts()V

    :cond_2
    return-void
.end method

.method public setDropListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;)V
    .locals 0

    .line 1847
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDropListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatViewManager(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewManager:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setRemoveListener(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;)V
    .locals 0

    .line 1850
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mRemoveListener:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$RemoveListener;

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 8

    .line 1649
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatViewManager:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1653
    :cond_0
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 1658
    invoke-virtual/range {v2 .. v7}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 3

    .line 1664
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1669
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1670
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1673
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 1674
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFirstExpPos:I

    .line 1675
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSecondExpPos:I

    .line 1676
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    .line 1677
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatPos:I

    const/4 p1, 0x4

    .line 1680
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragState:I

    or-int/2addr p3, v1

    .line 1682
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragFlags:I

    .line 1684
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 1685
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->measureFloatView()V

    .line 1687
    iput p4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDeltaX:I

    .line 1688
    iput p5, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDeltaY:I

    .line 1689
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mY:I

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragStartY:I

    .line 1692
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mX:I

    sub-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 1693
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget p3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mY:I

    iget p4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Point;->y:I

    .line 1696
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1699
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    :cond_2
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelMethod:I

    if-eq p1, v2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 1709
    :cond_3
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1706
    :cond_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1713
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->requestLayout()V

    .line 1715
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mLiftAnimator:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;

    if-eqz p1, :cond_5

    .line 1716
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->start()V

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public stopDrag(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1087
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    .line 1088
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p1

    return p1
.end method

.method public stopDrag(ZF)Z
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDragScroller:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    if-eqz p1, :cond_0

    .line 1102
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->removeItem(IF)V

    goto :goto_0

    .line 1104
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mDropAnimator:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropAnimator;

    if-eqz p1, :cond_1

    .line 1105
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1107
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->dropFloatView()V

    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1093
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1094
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result p1

    return p1
.end method

.class public Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    const/high16 v2, -0x40800000    # -1.0f

    .line 63
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mLastMotionX:F

    const/4 v2, -0x1

    .line 64
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mActivePointerId:I

    .line 77
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v2

    .line 83
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    .line 93
    iput-boolean p3, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCentered:Z

    const/4 p3, 0x0

    .line 94
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mOrientation:I

    .line 95
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 99
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40c00000    # 6.0f

    .line 102
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mRadius:F

    .line 103
    iput-boolean p3, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mSnap:Z

    .line 105
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mTouchSlop:I

    return-void
.end method

.method private measureLong(I)I
    .locals 5

    .line 468
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 469
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    .line 477
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 482
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    return p1
.end method

.method private measureShort(I)I
    .locals 3

    .line 497
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 498
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 505
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mRadius:F

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 509
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 179
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 400
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 193
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 203
    :cond_1
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 204
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->setCurrentItem(I)V

    return-void

    .line 212
    :cond_2
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mOrientation:I

    if-nez v1, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getWidth()I

    move-result v1

    .line 214
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 215
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingRight()I

    move-result v3

    .line 216
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getHeight()I

    move-result v1

    .line 219
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 220
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    .line 221
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    .line 224
    :goto_0
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mRadius:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v5

    int-to-float v4, v4

    add-float/2addr v4, v5

    int-to-float v7, v2

    add-float/2addr v7, v5

    .line 227
    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCentered:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_4

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v9

    int-to-float v2, v0

    mul-float/2addr v2, v6

    div-float/2addr v2, v9

    sub-float/2addr v1, v2

    add-float/2addr v7, v1

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 237
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v9

    sub-float/2addr v5, v1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_9

    int-to-float v2, v1

    mul-float/2addr v2, v6

    add-float/2addr v2, v7

    .line 243
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mOrientation:I

    if-nez v3, :cond_6

    move v3, v4

    goto :goto_2

    :cond_6
    move v3, v2

    move v2, v4

    .line 251
    :goto_2
    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_7

    .line 252
    iget-object v8, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    :cond_7
    iget v8, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mRadius:F

    cmpl-float v9, v5, v8

    if-eqz v9, :cond_8

    .line 257
    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    :cond_9
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mSnap:Z

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mSnapPage:I

    goto :goto_3

    :cond_a
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v1, v6

    if-nez v0, :cond_b

    .line 264
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPageOffset:F

    mul-float/2addr v0, v6

    add-float/2addr v1, v0

    .line 266
    :cond_b
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_c

    add-float/2addr v7, v1

    move v10, v7

    move v7, v4

    move v4, v10

    goto :goto_4

    :cond_c
    add-float/2addr v7, v1

    .line 273
    :goto_4
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mRadius:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 450
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 451
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->measureLong(I)I

    move-result p1

    .line 452
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->measureShort(I)I

    move-result p2

    .line 451
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->measureShort(I)I

    move-result p1

    .line 455
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->measureLong(I)I

    move-result p2

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 405
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mScrollState:I

    .line 407
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 415
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    .line 416
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPageOffset:F

    .line 417
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    .line 419
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 428
    :cond_0
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    .line 429
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mSnapPage:I

    .line 430
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 434
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 517
    check-cast p1, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator$SavedState;

    .line 518
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 519
    iget v0, p1, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    .line 520
    iget p1, p1, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mSnapPage:I

    .line 521
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 526
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 527
    new-instance v1, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 528
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 277
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 284
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_e

    const/4 v3, 0x3

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_0

    .line 349
    :cond_2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 350
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 352
    iget v4, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    move v2, v1

    .line 354
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mActivePointerId:I

    .line 357
    :cond_4
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mActivePointerId:I

    .line 358
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 357
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_0

    .line 342
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 343
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mLastMotionX:F

    .line 344
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_0

    .line 292
    :cond_6
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 294
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 295
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mLastMotionX:F

    sub-float v0, p1, v0

    .line 297
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mIsDragging:Z

    if-nez v2, :cond_7

    .line 298
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 299
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mIsDragging:Z

    .line 303
    :cond_7
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mIsDragging:Z

    if-eqz v2, :cond_f

    .line 304
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mLastMotionX:F

    .line 305
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 306
    :cond_8
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 315
    :cond_9
    iget-boolean v4, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mIsDragging:Z

    if-nez v4, :cond_d

    .line 316
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    .line 317
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    .line 321
    iget v7, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    if-lez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v8, v6, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    if-eq v0, v3, :cond_a

    .line 323
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    return v1

    .line 326
    :cond_b
    iget v7, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    sub-int/2addr v4, v1

    if-ge v7, v4, :cond_d

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v6, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_c

    .line 329
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_c
    return v1

    .line 335
    :cond_d
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mIsDragging:Z

    const/4 p1, -0x1

    .line 336
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mActivePointerId:I

    .line 337
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 338
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    goto :goto_0

    .line 287
    :cond_e
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mActivePointerId:I

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mLastMotionX:F

    :cond_f
    :goto_0
    return v1

    :cond_10
    :goto_1
    return v2
.end method

.method public setCentered(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCentered:Z

    .line 112
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 394
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mCurrentPage:I

    .line 395
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void

    .line 391
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFillColor(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_1
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mOrientation:I

    .line 142
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->requestLayout()V

    return-void
.end method

.method public setPageColor(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mRadius:F

    .line 175
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mSnap:Z

    .line 184
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 371
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 377
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 378
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 379
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->invalidate()V

    return-void

    .line 374
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 385
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/CirclePageIndicator;->setCurrentItem(I)V

    return-void
.end method

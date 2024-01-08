.class public Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;,
        Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;,
        Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$IconTabProvider;,
        Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private longClickListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;

.field private minTabWidth:I

.field private final pageListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x1010095

    const v1, 0x1010098

    .line 57
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p3, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;-><init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;)V

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pageListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;

    const/4 p3, 0x0

    .line 70
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPosition:I

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPositionOffset:F

    const v1, -0x99999a

    .line 76
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorColor:I

    .line 77
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineColor:I

    .line 78
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerColor:I

    const/4 v2, 0x1

    .line 79
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->shouldExpand:Z

    .line 80
    iput-boolean p3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->textAllCaps:Z

    const/16 v3, 0x34

    .line 81
    iput v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->scrollOffset:I

    .line 82
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorHeight:I

    .line 83
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineHeight:I

    const/16 v3, 0xc

    .line 84
    iput v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPadding:I

    .line 85
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabPadding:I

    .line 86
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerWidth:I

    .line 87
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/brakefield/infinitestudio/R$dimen;->text_size_normal:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextSize:I

    .line 89
    iput v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextColor:I

    .line 90
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 91
    iput v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 92
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->minTabWidth:I

    .line 93
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->lastScrollX:I

    const/4 v0, 0x2

    .line 110
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->setOverScrollMode(I)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 113
    invoke-virtual {p0, p3}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 115
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 116
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 120
    sget-object v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 122
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextSize:I

    .line 123
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextColor:I

    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 132
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 135
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->longClickListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$600(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private addIconTab(II)V
    .locals 2

    .line 220
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 224
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->longClickListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;

    if-eqz p2, :cond_0

    .line 225
    new-instance p2, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 230
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 236
    new-instance v0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 243
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabPadding:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 244
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 2

    .line 199
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 201
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 203
    iget p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->minTabWidth:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 204
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->longClickListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;

    if-eqz p2, :cond_0

    .line 205
    new-instance p2, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$2;

    invoke-direct {p2, p0, p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$2;-><init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 270
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 277
    :cond_1
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 280
    :cond_2
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, p1, :cond_3

    .line 281
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->lastScrollX:I

    const/4 p1, 0x0

    .line 282
    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method private updateTabStyles()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 249
    :goto_0
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabCount:I

    if-ge v1, v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 253
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 255
    check-cast v2, Landroid/widget/TextView;

    .line 256
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 258
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 261
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 451
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 396
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 405
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 523
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 532
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 500
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method synthetic lambda$addIconTab$0$com-brakefield-infinitestudio-ui-PagerSlidingTabStrip(ILandroid/view/View;)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->longClickListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;

    invoke-interface {v0, p2, p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;->onLongClick(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$addTab$1$com-brakefield-infinitestudio-ui-PagerSlidingTabStrip(ILandroid/view/View;)V
    .locals 0

    .line 237
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 238
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 160
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabCount:I

    const/4 v0, 0x0

    .line 162
    :goto_0
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->addIconTab(II)V

    goto :goto_1

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->updateTabStyles()V

    .line 174
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$1;-><init>(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 289
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 291
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getHeight()I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 308
    iget v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPosition:I

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 310
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 311
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 312
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 314
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v5

    mul-float/2addr v7, v2

    add-float v2, v4, v7

    mul-float/2addr v3, v5

    sub-float/2addr v6, v5

    mul-float/2addr v6, v1

    add-float v1, v3, v6

    :cond_1
    add-float v3, v2, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v2

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    sub-float v5, v3, v1

    add-float v7, v3, v1

    .line 326
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v1, v0, v1

    int-to-float v6, v1

    int-to-float v12, v0

    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v8, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 331
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v9, 0x0

    .line 332
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v1, v0, v1

    int-to-float v10, v1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    iget-object v13, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 337
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 338
    :goto_0
    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 537
    check-cast p1, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$SavedState;

    .line 538
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 539
    iget p1, p1, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPosition:I

    .line 540
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 545
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 546
    new-instance v1, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 547
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->currentPosition:I

    iput v0, v1, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$SavedState;->currentPosition:I

    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .line 477
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->textAllCaps:Z

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerColor:I

    .line 424
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerColor:I

    .line 429
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->dividerPadding:I

    .line 447
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setFixedTabWidth(I)V
    .locals 2

    .line 508
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorColor:I

    .line 387
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorColor:I

    .line 392
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 400
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->indicatorHeight:I

    .line 401
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setMinimumTabWidth(I)V
    .locals 0

    .line 504
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->minTabWidth:I

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabLongClickListener(Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->longClickListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$OnTabLongClickListener;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 455
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->scrollOffset:I

    .line 456
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->shouldExpand:Z

    .line 465
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->requestLayout()V

    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 519
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabBackgroundResId:I

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 527
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabPadding:I

    .line 528
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 490
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextColor:I

    .line 491
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextColor:I

    .line 496
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 481
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTextSize:I

    .line 482
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 514
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 515
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineColor:I

    .line 410
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineColor:I

    .line 415
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 437
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->underlineHeight:I

    .line 438
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 142
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 143
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->pageListener:Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/PagerSlidingTabStrip;->notifyDataSetChanged()V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

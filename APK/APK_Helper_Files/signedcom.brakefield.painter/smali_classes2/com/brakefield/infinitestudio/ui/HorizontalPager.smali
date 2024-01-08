.class public Lcom/brakefield/infinitestudio/ui/HorizontalPager;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalPager.java"


# instance fields
.field private leftHint:Landroid/view/View;

.field private mActiveFeature:I

.field private rightHint:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->mActiveFeature:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->mActiveFeature:I

    .line 25
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->setHorizontalScrollBarEnabled(Z)V

    .line 27
    new-instance p1, Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager$1;-><init>(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/brakefield/infinitestudio/ui/HorizontalPager$2;

    invoke-direct {p2, p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager$2;-><init>(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/brakefield/infinitestudio/ui/HorizontalPager$3;

    invoke-direct {p2, p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager$3;-><init>(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->mActiveFeature:I

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->mActiveFeature:I

    return p0
.end method

.method static synthetic access$002(Lcom/brakefield/infinitestudio/ui/HorizontalPager;I)I
    .locals 0

    .line 12
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->mActiveFeature:I

    return p1
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/HorizontalPager;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->updateArrows()V

    return-void
.end method

.method private updateArrows()V
    .locals 5

    .line 96
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 99
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->leftHint:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    if-gtz v0, :cond_0

    .line 101
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->rightHint:Landroid/view/View;

    if-eqz v3, :cond_3

    if-lt v0, v2, :cond_2

    .line 108
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public setHintArrows(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->leftHint:Landroid/view/View;

    .line 91
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->rightHint:Landroid/view/View;

    .line 92
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/HorizontalPager;->updateArrows()V

    return-void
.end method

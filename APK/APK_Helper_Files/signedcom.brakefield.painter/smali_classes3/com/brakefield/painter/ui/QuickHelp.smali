.class public Lcom/brakefield/painter/ui/QuickHelp;
.super Ljava/lang/Object;
.source "QuickHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/QuickHelp$OverlayView;
    }
.end annotation


# instance fields
.field private indicator:Landroid/view/View;

.field private overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp;->indicator:Landroid/view/View;

    .line 46
    iput-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    return-void
.end method

.method private hideOverlay()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$addOverlayView$1(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->postInvalidate()V

    return-void
.end method

.method private showOverlay()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animateIn()V

    .line 89
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addIndicator(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 67
    new-instance v0, Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0483

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f08023b

    .line 69
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setImageResource(I)V

    const/16 v1, 0x8

    .line 71
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setVisibility(I)V

    const/4 v1, -0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setColorFilter(I)V

    .line 73
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 75
    new-instance v1, Lcom/brakefield/painter/ui/QuickHelp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/QuickHelp$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/QuickHelp;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 81
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public addOverlayView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Lcom/brakefield/painter/ui/QuickHelp$OverlayView;
    .locals 2

    .line 98
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setViewGroup(Landroid/view/ViewGroup;)V

    .line 100
    invoke-virtual {v0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/ui/QuickHelp$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/QuickHelp$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    const/16 p2, 0x8

    .line 103
    invoke-virtual {v0, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setVisibility(I)V

    .line 105
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method synthetic lambda$addIndicator$0$com-brakefield-painter-ui-QuickHelp(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/brakefield/painter/ui/QuickHelp;->showOverlay()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/ui/QuickHelp;->hideOverlay()V

    :goto_0
    return-void
.end method

.method public setup(Landroid/view/ViewGroup;Lcom/brakefield/painter/app/PainterApp;ZZ)V
    .locals 2

    move-object v0, p1

    .line 52
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/ui/QuickHelp;->addOverlayView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    .line 57
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/QuickHelp;->addIndicator(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->indicator:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setIndicator(Landroid/view/View;)V

    .line 60
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setApp(Lcom/brakefield/painter/app/PainterApp;)V

    .line 62
    invoke-virtual {p0, p3, p4}, Lcom/brakefield/painter/ui/QuickHelp;->updateViewVisibility(ZZ)V

    return-void
.end method

.method public updateViewVisibility(ZZ)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->indicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setVisualizeCoverage(Z)V

    if-eqz p2, :cond_0

    .line 114
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {p1, v1}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->indicator:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp;->overlayView:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->setVisibility(I)V

    :goto_0
    return-void
.end method

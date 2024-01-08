.class public Lcom/brakefield/painter/ZoomViewAnimator;
.super Ljava/lang/Object;
.source "ZoomViewAnimator.java"


# instance fields
.field private final boundsAnimator:Lcom/brakefield/painter/BoundsAnimator;

.field private onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 26
    new-instance v0, Lcom/brakefield/painter/BoundsAnimator;

    invoke-direct {v0}, Lcom/brakefield/painter/BoundsAnimator;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator;->boundsAnimator:Lcom/brakefield/painter/BoundsAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;II)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ZoomViewAnimator;->getBackgroundColorAnimator(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ZoomViewAnimator;->calculateFromBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ZoomViewAnimator;)Lcom/brakefield/painter/BoundsAnimator;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/brakefield/painter/ZoomViewAnimator;->boundsAnimator:Lcom/brakefield/painter/BoundsAnimator;

    return-object p0
.end method

.method private adjustPreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 131
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 133
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private animatePreview(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz p4, :cond_0

    .line 126
    iget-object p3, p0, Lcom/brakefield/painter/ZoomViewAnimator;->boundsAnimator:Lcom/brakefield/painter/BoundsAnimator;

    invoke-virtual {p3, p1, p2, p5}, Lcom/brakefield/painter/BoundsAnimator;->animate(Landroid/view/View;Landroid/graphics/Rect;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/ZoomViewAnimator;->boundsAnimator:Lcom/brakefield/painter/BoundsAnimator;

    invoke-virtual {p2, p1, p3, p5}, Lcom/brakefield/painter/BoundsAnimator;->animate(Landroid/view/View;Landroid/graphics/Rect;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    :goto_0
    return-void
.end method

.method private calculateFromBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 108
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 109
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 113
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 115
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 117
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 118
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method private getBackgroundColorAnimator(Landroid/view/View;II)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 73
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "backgroundColor"

    .line 73
    invoke-static {p1, p3, v0, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 75
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x258

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private onFullPreviewLayout(Landroid/view/View;Landroid/view/View;IZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V
    .locals 8

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 84
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 85
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 87
    invoke-direct {p0, p1, v4}, Lcom/brakefield/painter/ZoomViewAnimator;->calculateFromBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 88
    invoke-virtual {p2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 90
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 92
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 93
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 94
    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    if-eqz p4, :cond_0

    .line 97
    invoke-virtual {v4, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 98
    invoke-direct {p0, p2, v5}, Lcom/brakefield/painter/ZoomViewAnimator;->adjustPreview(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p2, v4}, Lcom/brakefield/painter/ZoomViewAnimator;->adjustPreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 102
    :goto_0
    new-instance p1, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    iput-object p1, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public animateFromEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V
    .locals 9

    .line 46
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v8, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object v8, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 67
    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    iget-object p5, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p3, p5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p3, 0x0

    .line 68
    invoke-virtual {p2, p1, v7, p3}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    const/4 p1, -0x1

    .line 69
    invoke-virtual {v7, p4, p1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public animateToEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V
    .locals 9

    .line 29
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v8, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object v8, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 40
    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    iget-object p5, p0, Lcom/brakefield/painter/ZoomViewAnimator;->onPreviewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p3, p5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p3, 0x0

    .line 41
    invoke-virtual {p2, p1, v7, p3}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    const/4 p1, -0x1

    .line 42
    invoke-virtual {v7, p4, p1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method synthetic lambda$animateFromEditor$1$com-brakefield-painter-ZoomViewAnimator(Landroid/view/View;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 6

    .line 0
    const/4 v4, 0x1

    .line 47
    new-instance v5, Lcom/brakefield/painter/ZoomViewAnimator$2;

    invoke-direct {v5, p0, p1, p4, p5}, Lcom/brakefield/painter/ZoomViewAnimator$2;-><init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ZoomViewAnimator;->onFullPreviewLayout(Landroid/view/View;Landroid/view/View;IZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    return-void
.end method

.method synthetic lambda$animateToEditor$0$com-brakefield-painter-ZoomViewAnimator(Landroid/view/View;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 6

    .line 0
    const/4 v4, 0x0

    .line 30
    new-instance v5, Lcom/brakefield/painter/ZoomViewAnimator$1;

    invoke-direct {v5, p0, p4, p5}, Lcom/brakefield/painter/ZoomViewAnimator$1;-><init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ZoomViewAnimator;->onFullPreviewLayout(Landroid/view/View;Landroid/view/View;IZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    return-void
.end method

.method synthetic lambda$onFullPreviewLayout$2$com-brakefield-painter-ZoomViewAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V
    .locals 0

    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/brakefield/painter/ZoomViewAnimator;->animatePreview(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/ui/carousel/transformer/InverseTimeMachineViewTransformer;
.super Ljava/lang/Object;
.source "InverseTimeMachineViewTransformer.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;


# static fields
.field protected static final translationXRate:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->FirstFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setDrawOrder(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-void
.end method

.method public transform(Landroid/view/View;F)V
    .locals 3

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 25
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    add-float v0, p2, v2

    div-float/2addr v2, v0

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr p2, v2

    .line 28
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;
.super Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;
.source "CoverFlowViewTransformer.java"


# instance fields
.field private mYProjection:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;-><init>()V

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 24
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;->mYProjection:D

    const v0, 0x3f4ccccd    # 0.8f

    .line 27
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;->setOffsetXPercent(F)V

    const v0, -0x41b33333    # -0.2f

    .line 28
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;->setScaleYFactor(F)V

    return-void
.end method


# virtual methods
.method public getOffsetXPercent()F
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getOffsetXPercent()F

    move-result v0

    return v0
.end method

.method public getScaleYFactor()F
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getScaleYFactor()F

    move-result v0

    return v0
.end method

.method public getYProjection()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;->mYProjection:D

    return-wide v0
.end method

.method public onAttach(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->CenterFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setDrawOrder(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-void
.end method

.method public setOffsetXPercent(F)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setOffsetXPercent(F)V

    return-void
.end method

.method public setScaleYFactor(F)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setScaleYFactor(F)V

    return-void
.end method

.method public setYProjection(D)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;->mYProjection:D

    return-void
.end method

.method public transform(Landroid/view/View;F)V
    .locals 7

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    .line 67
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr v0, p2

    .line 69
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;->mOffsetXPercent:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 70
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    iget-wide v5, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;->mYProjection:D

    neg-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v1, v3

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 71
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;->mScaleYFactor:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr v0, p2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

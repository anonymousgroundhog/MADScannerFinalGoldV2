.class public Lcom/brakefield/infinitestudio/ui/carousel/transformer/LinearViewTransformer;
.super Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;
.source "LinearViewTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/LinearViewTransformer;->setOffsetXPercent(F)V

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/LinearViewTransformer;->setOffsetYPercent(F)V

    return-void
.end method


# virtual methods
.method public getMaxScaleX()F
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getMaxScaleX()F

    move-result v0

    return v0
.end method

.method public getMaxScaleY()F
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getMaxScaleY()F

    move-result v0

    return v0
.end method

.method public getMinScaleX()F
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getMinScaleX()F

    move-result v0

    return v0
.end method

.method public getMinScaleY()F
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getMinScaleY()F

    move-result v0

    return v0
.end method

.method public getOffsetXPercent()F
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getOffsetXPercent()F

    move-result v0

    return v0
.end method

.method public getOffsetYPercent()F
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getOffsetYPercent()F

    move-result v0

    return v0
.end method

.method public getScaleXFactor()F
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getScaleXFactor()F

    move-result v0

    return v0
.end method

.method public getScaleYFactor()F
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getScaleYFactor()F

    move-result v0

    return v0
.end method

.method public isScaleLargestAtCenter()Z
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->isScaleLargestAtCenter()Z

    move-result v0

    return v0
.end method

.method public setMaxScaleX(F)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setMaxScaleX(F)V

    return-void
.end method

.method public setMaxScaleY(F)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setMaxScaleY(F)V

    return-void
.end method

.method public setMinScaleX(F)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setMinScaleX(F)V

    return-void
.end method

.method public setMinScaleY(F)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setMinScaleY(F)V

    return-void
.end method

.method public setOffsetXPercent(F)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setOffsetXPercent(F)V

    return-void
.end method

.method public setOffsetYPercent(F)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setOffsetYPercent(F)V

    return-void
.end method

.method public setScaleLargestAtCenter(Z)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setScaleLargestAtCenter(Z)V

    return-void
.end method

.method public setScaleXFactor(F)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setScaleXFactor(F)V

    return-void
.end method

.method public setScaleYFactor(F)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setScaleYFactor(F)V

    return-void
.end method

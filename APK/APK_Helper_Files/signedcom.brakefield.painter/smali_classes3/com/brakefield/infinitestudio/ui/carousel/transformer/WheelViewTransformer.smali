.class public Lcom/brakefield/infinitestudio/ui/carousel/transformer/WheelViewTransformer;
.super Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;
.source "WheelViewTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 24
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/WheelViewTransformer;->setRotateDegree(F)V

    return-void
.end method


# virtual methods
.method public getMaxScaleX()F
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getMaxScaleX()F

    move-result v0

    return v0
.end method

.method public getMaxScaleY()F
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getMaxScaleY()F

    move-result v0

    return v0
.end method

.method public getMinScaleX()F
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getMinScaleX()F

    move-result v0

    return v0
.end method

.method public getMinScaleY()F
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getMinScaleY()F

    move-result v0

    return v0
.end method

.method public getRotateDegree()F
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getRotateDegree()F

    move-result v0

    return v0
.end method

.method public getScaleXFactor()F
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getScaleXFactor()F

    move-result v0

    return v0
.end method

.method public getScaleYFactor()F
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->getScaleYFactor()F

    move-result v0

    return v0
.end method

.method public isScaleLargestAtCenter()Z
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->isScaleLargestAtCenter()Z

    move-result v0

    return v0
.end method

.method public setMaxScaleX(F)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setMaxScaleX(F)V

    return-void
.end method

.method public setMaxScaleY(F)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setMaxScaleY(F)V

    return-void
.end method

.method public setMinScaleX(F)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setMinScaleX(F)V

    return-void
.end method

.method public setMinScaleY(F)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setMinScaleY(F)V

    return-void
.end method

.method public setRotateDegree(F)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setRotateDegree(F)V

    return-void
.end method

.method public setScaleLargestAtCenter(Z)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setScaleLargestAtCenter(Z)V

    return-void
.end method

.method public setScaleXFactor(F)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setScaleXFactor(F)V

    return-void
.end method

.method public setScaleYFactor(F)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizableViewTransformer;->setScaleYFactor(F)V

    return-void
.end method

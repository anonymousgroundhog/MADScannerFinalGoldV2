.class public Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;
.super Ljava/lang/Object;
.source "FlatMerryGoRoundTransformer.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;


# instance fields
.field private mFarAlpha:D

.field private mFarScale:D

.field private mHorizontalViewPort:D

.field private mNumPies:I

.field private mPieRad:D

.field private mViewPerspective:D


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 29
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mNumPies:I

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 30
    iput-wide v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mPieRad:D

    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 32
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mHorizontalViewPort:D

    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 33
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mViewPerspective:D

    const-wide v0, 0x3fd6666666666666L    # 0.35

    .line 34
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mFarScale:D

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mFarAlpha:D

    return-void
.end method


# virtual methods
.method public getFarAlpha()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mFarAlpha:D

    return-wide v0
.end method

.method public getFarScale()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mFarScale:D

    return-wide v0
.end method

.method public getHorizontalViewPort()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mHorizontalViewPort:D

    return-wide v0
.end method

.method public getNumPies()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mNumPies:I

    return v0
.end method

.method public getViewPerspective()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mViewPerspective:D

    return-wide v0
.end method

.method public onAttach(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;->CenterFront:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setDrawOrder(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-void
.end method

.method public setFarAlpha(D)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mFarAlpha:D

    return-void
.end method

.method public setFarScale(D)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mFarScale:D

    return-void
.end method

.method public setHorizontalViewPort(D)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mHorizontalViewPort:D

    return-void
.end method

.method public setNumPies(I)V
    .locals 4

    .line 47
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mNumPies:I

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 48
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mPieRad:D

    return-void
.end method

.method public setViewPerspective(D)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mViewPerspective:D

    return-void
.end method

.method public transform(Landroid/view/View;F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move/from16 v3, p2

    float-to-double v3, v3

    .line 98
    iget-wide v5, v0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mPieRad:D

    mul-double/2addr v3, v5

    const-wide v5, 0x4012d97c7f3321d2L    # 4.71238898038469

    add-double/2addr v3, v5

    int-to-double v5, v2

    .line 99
    iget-wide v7, v0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mHorizontalViewPort:D

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    .line 100
    iget-wide v9, v0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mViewPerspective:D

    mul-double/2addr v9, v5

    .line 102
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v5, v11

    .line 103
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double v2, v11, v2

    mul-double/2addr v2, v9

    mul-double/2addr v9, v7

    .line 108
    iget-wide v13, v0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mFarScale:D

    sub-double/2addr v13, v11

    sub-double v15, v2, v9

    mul-double/2addr v13, v15

    const-wide/16 v7, 0x0

    sub-double v17, v7, v9

    div-double v13, v13, v17

    add-double/2addr v13, v11

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 109
    iget-wide v7, v0, Lcom/brakefield/infinitestudio/ui/carousel/transformer/FlatMerryGoRoundTransformer;->mFarAlpha:D

    sub-double/2addr v7, v11

    mul-double/2addr v7, v15

    div-double v7, v7, v17

    add-double/2addr v7, v11

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    sub-double/2addr v2, v9

    double-to-float v4, v5

    .line 115
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    double-to-float v2, v2

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    double-to-float v2, v13

    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    double-to-float v2, v7

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

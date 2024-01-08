.class public Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RevealFrameLayout.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/RevealAnimator;


# instance fields
.field mCenterX:F

.field mCenterY:F

.field mClipOutlines:Z

.field mRadius:F

.field mRevealPath:Landroid/graphics/Path;

.field mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 69
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mClipOutlines:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mTarget:Landroid/view/View;

    if-eq p2, v0, :cond_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 75
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mCenterX:F

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mCenterY:F

    iget v4, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 77
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 81
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method public setCenter(FF)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mCenterX:F

    .line 53
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mCenterY:F

    return-void
.end method

.method public setClipOutlines(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mClipOutlines:Z

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;->mTarget:Landroid/view/View;

    return-void
.end method

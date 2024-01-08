.class public Lcom/brakefield/infinitestudio/ui/blurview/BlurView;
.super Landroid/widget/FrameLayout;
.source "BlurView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurView"


# instance fields
.field blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

.field private overlayColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Lcom/brakefield/infinitestudio/ui/blurview/NoOpController;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Lcom/brakefield/infinitestudio/ui/blurview/NoOpController;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Lcom/brakefield/infinitestudio/ui/blurview/NoOpController;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 61
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->TAG:Ljava/lang/String;

    const-string v1, "BlurView can\'t be used in not hardware-accelerated window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->setBlurAutoUpdate(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->setBlurAutoUpdate(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 49
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->updateBlurViewSize()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->setBlurAutoUpdate(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurEnabled(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->setBlurEnabled(Z)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurRadius(F)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->setBlurRadius(F)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayColor(I)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 1

    .line 94
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->overlayColor:I

    .line 95
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->setOverlayColor(I)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setupWith(Landroid/view/ViewGroup;)Lcom/brakefield/infinitestudio/ui/blurview/BlurViewFacade;
    .locals 2

    .line 75
    new-instance v0, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->overlayColor:I

    invoke-direct {v0, p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/blurview/BlockingBlurController;-><init>(Landroid/view/View;Landroid/view/ViewGroup;I)V

    .line 76
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/ui/blurview/BlurController;->destroy()V

    .line 77
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->blurController:Lcom/brakefield/infinitestudio/ui/blurview/BlurController;

    return-object v0
.end method

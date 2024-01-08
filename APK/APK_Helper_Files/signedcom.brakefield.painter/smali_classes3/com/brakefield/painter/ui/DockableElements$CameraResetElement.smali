.class public Lcom/brakefield/painter/ui/DockableElements$CameraResetElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraResetElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1565
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method

.method static synthetic lambda$handleClick$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1583
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->updateCameraIcon()V

    .line 1584
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xa0

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0800fa

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120a50

    .line 1573
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1203e5

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 6

    .line 1581
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropLeft()I

    move-result p3

    int-to-float v0, p3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropTop()I

    move-result p3

    int-to-float v1, p3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropRight()I

    move-result p3

    int-to-float v2, p3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropBottom()I

    move-result p3

    int-to-float v3, p3

    const/4 v4, 0x0

    new-instance v5, Lcom/brakefield/painter/ui/DockableElements$CameraResetElement$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/brakefield/painter/ui/DockableElements$CameraResetElement$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1586
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 1587
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public updateIcon(Landroid/view/View;)V
    .locals 2

    .line 1596
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v0

    .line 1597
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    neg-float v0, v0

    .line 1602
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

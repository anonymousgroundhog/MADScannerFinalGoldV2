.class public Lcom/brakefield/painter/ui/DockableElements$CameraFlipElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraFlipElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1606
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method

.method static synthetic lambda$handleClick$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1623
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->updateCameraIcon()V

    .line 1624
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xa1

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0801db

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201bf

    .line 1614
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1203e8

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 3

    .line 1622
    sget p3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    new-instance v0, Lcom/brakefield/painter/ui/DockableElements$CameraFlipElement$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/DockableElements$CameraFlipElement$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v2, 0x1

    invoke-static {p3, v1, v2, v0}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->flip(FFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1626
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 1627
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

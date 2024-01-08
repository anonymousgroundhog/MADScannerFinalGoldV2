.class public Lcom/brakefield/painter/ui/DockableElements$LayerVisibilitySoloModeElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerVisibilitySoloModeElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2177
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x105

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080282

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120aaf

    .line 2185
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f12061c

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 2193
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getLayerRenderingMode()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    .line 2194
    invoke-static {p1, p3}, Lcom/brakefield/painter/PainterLib;->setLayerRenderingMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 2196
    :cond_0
    invoke-static {p1, v0}, Lcom/brakefield/painter/PainterLib;->setLayerRenderingMode(Landroid/content/Context;I)V

    .line 2198
    :goto_0
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 2199
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public isElementActive()Z
    .locals 2

    .line 2204
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getLayerRenderingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

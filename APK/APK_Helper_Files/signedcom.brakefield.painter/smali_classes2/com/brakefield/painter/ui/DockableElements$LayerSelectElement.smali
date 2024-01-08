.class public Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerSelectElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2142
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;-><init>(Lcom/brakefield/painter/ui/DockableElements$1;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x101

    return v0
.end method

.method public bridge synthetic getLayerId()I
    .locals 1

    .line 2142
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getLayerId()I

    move-result v0

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080464

    return v0
.end method

.method public bridge synthetic getTarget()J
    .locals 2

    .line 2142
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getTarget()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120a83

    .line 2150
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f12060f

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 2

    .line 2158
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerSelectElement;->getLayerId()I

    move-result v0

    .line 2159
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMaskActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2164
    :cond_0
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->selectionLayerReplace(I)V

    const/4 p3, 0x1

    .line 2165
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setMaskActive(Z)V

    .line 2166
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 2167
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    goto :goto_1

    .line 2160
    :cond_1
    :goto_0
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;

    invoke-direct {v1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;-><init>()V

    .line 2161
    invoke-virtual {v1, p1, p2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerSelectionOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object v0

    .line 2162
    invoke-virtual {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic setLayerId(I)V
    .locals 0

    .line 2142
    invoke-super {p0, p1}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->setLayerId(I)V

    return-void
.end method

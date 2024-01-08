.class public Lcom/brakefield/painter/ui/DockableElements$LayerLockElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerLockElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1941
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;-><init>(Lcom/brakefield/painter/ui/DockableElements$1;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public bridge synthetic getLayerId()I
    .locals 1

    .line 1941
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getLayerId()I

    move-result v0

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080295

    return v0
.end method

.method public bridge synthetic getTarget()J
    .locals 2

    .line 1941
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getTarget()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12024d

    .line 1949
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1205fd

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 1957
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerLockElement;->getLayerId()I

    move-result p3

    .line 1958
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerLockAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Lcom/brakefield/painter/PainterLib;->setLayerLockAlpha(IZ)V

    .line 1959
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 1960
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 1961
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method public isElementActive()Z
    .locals 1

    .line 1966
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerLockElement;->getLayerId()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getLayerLockAlpha(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setLayerId(I)V
    .locals 0

    .line 1941
    invoke-super {p0, p1}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->setLayerId(I)V

    return-void
.end method

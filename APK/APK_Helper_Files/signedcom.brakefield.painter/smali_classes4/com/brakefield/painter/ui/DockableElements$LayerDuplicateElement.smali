.class public Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerDuplicateElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2060
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;-><init>(Lcom/brakefield/painter/ui/DockableElements$1;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xfe

    return v0
.end method

.method public bridge synthetic getLayerId()I
    .locals 1

    .line 2060
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getLayerId()I

    move-result v0

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080147

    return v0
.end method

.method public bridge synthetic getTarget()J
    .locals 2

    .line 2060
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getTarget()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120127

    .line 2068
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1205f7

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 2076
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->atMaxLayers(Landroid/app/Activity;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 2077
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 2078
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerDuplicateElement;->getLayerId()I

    move-result p3

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->duplicateLayer(I)V

    .line 2079
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 2080
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setLayerId(I)V
    .locals 0

    .line 2060
    invoke-super {p0, p1}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->setLayerId(I)V

    return-void
.end method

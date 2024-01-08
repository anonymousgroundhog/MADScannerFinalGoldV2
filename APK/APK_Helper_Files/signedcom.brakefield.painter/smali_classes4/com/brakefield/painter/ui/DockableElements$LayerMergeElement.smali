.class public Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerMergeElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2033
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;-><init>(Lcom/brakefield/painter/ui/DockableElements$1;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public bridge synthetic getLayerId()I
    .locals 1

    .line 2033
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getLayerId()I

    move-result v0

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0802c5

    return v0
.end method

.method public bridge synthetic getTarget()J
    .locals 2

    .line 2033
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getTarget()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120944

    .line 2041
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f120603

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 2049
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 2050
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerMergeElement;->getLayerId()I

    move-result p3

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->mergeLayer(I)V

    .line 2051
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 2052
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method public bridge synthetic setLayerId(I)V
    .locals 0

    .line 2033
    invoke-super {p0, p1}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->setLayerId(I)V

    return-void
.end method

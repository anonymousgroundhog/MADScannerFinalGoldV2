.class public Lcom/brakefield/painter/ui/DockableElements$LayerClearElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerClearElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2007
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;-><init>(Lcom/brakefield/painter/ui/DockableElements$1;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xfb

    return v0
.end method

.method public bridge synthetic getLayerId()I
    .locals 1

    .line 2007
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getLayerId()I

    move-result v0

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080103

    return v0
.end method

.method public bridge synthetic getTarget()J
    .locals 2

    .line 2007
    invoke-super {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->getTarget()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1200b3

    .line 2015
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1205ed

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 2023
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 2024
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$LayerClearElement;->getLayerId()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->clearLayer(I)V

    .line 2025
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public bridge synthetic setLayerId(I)V
    .locals 0

    .line 2007
    invoke-super {p0, p1}, Lcom/brakefield/painter/ui/DockableElements$DockableLayerElement;->setLayerId(I)V

    return-void
.end method

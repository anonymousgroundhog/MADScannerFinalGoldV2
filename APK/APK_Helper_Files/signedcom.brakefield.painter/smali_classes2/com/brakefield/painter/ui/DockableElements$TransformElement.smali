.class public Lcom/brakefield/painter/ui/DockableElements$TransformElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0804c6

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120b04

    .line 342
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f120904

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 350
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 351
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->maskingTransform()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 353
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setTool(I)V

    .line 355
    :goto_0
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 356
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 357
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

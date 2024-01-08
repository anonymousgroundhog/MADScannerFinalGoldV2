.class public Lcom/brakefield/painter/ui/DockableElements$EyedropperElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EyedropperElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1694
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xb4

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0801aa

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120180

    .line 1702
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f120442

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 1710
    invoke-static {p3, v0}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 1711
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 1712
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public isElementActive()Z
    .locals 1

    .line 1717
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isEyedropper()Z

    move-result v0

    return v0
.end method

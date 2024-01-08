.class public Lcom/brakefield/painter/ui/DockableElements$SymmetryMasterElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SymmetryMasterElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 999
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x7c

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080499

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120ae0

    .line 1005
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 3

    .line 1012
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getSymmetryManager()Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 p3, 0x0

    .line 1014
    invoke-virtual {v0, p3}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setType(I)V

    goto :goto_0

    .line 1016
    :cond_0
    invoke-virtual {v0, v2}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->toggleOrSetSymmetry(I)V

    .line 1017
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;-><init>()V

    .line 1018
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SymmetrySettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 1019
    invoke-virtual {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->transformPopup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    .line 1021
    :goto_0
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public isPaidFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

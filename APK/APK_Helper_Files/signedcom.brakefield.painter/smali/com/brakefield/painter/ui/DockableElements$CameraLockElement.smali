.class public Lcom/brakefield/painter/ui/DockableElements$CameraLockElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraLockElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1636
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xa2

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0800f9

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12024c

    .line 1644
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1203eb

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 1652
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showBindingIncompleteDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public isElementActive()Z
    .locals 1

    .line 1657
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v0

    return v0
.end method

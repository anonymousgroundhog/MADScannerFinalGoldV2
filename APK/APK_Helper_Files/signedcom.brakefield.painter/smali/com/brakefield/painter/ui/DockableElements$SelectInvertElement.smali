.class public Lcom/brakefield/painter/ui/DockableElements$SelectInvertElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectInvertElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2273
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x12d

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080463

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12021e

    .line 2281
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f12081a

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 2289
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showBindingIncompleteDialog(Landroid/app/Activity;)V

    return-void
.end method

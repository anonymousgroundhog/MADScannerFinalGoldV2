.class public abstract Lcom/brakefield/painter/ui/DockableElements$GuideElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GuideElement"
.end annotation


# instance fields
.field private guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1033
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1036
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getGuideManager()Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/DockableElements$GuideElement;->guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    .line 1037
    invoke-super {p0, p1, p2}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getType()I
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 1040
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showBindingIncompleteDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public isElementActive()Z
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/brakefield/painter/ui/DockableElements$GuideElement;->guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$GuideElement;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

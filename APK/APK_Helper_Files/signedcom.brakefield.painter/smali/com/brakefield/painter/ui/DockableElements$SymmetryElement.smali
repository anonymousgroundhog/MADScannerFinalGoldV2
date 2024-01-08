.class public abstract Lcom/brakefield/painter/ui/DockableElements$SymmetryElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SymmetryElement"
.end annotation


# instance fields
.field private symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 894
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 897
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getSymmetryManager()Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/DockableElements$SymmetryElement;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    .line 898
    invoke-super {p0, p1, p2}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getType()I
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 901
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showBindingIncompleteDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public isElementActive()Z
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/brakefield/painter/ui/DockableElements$SymmetryElement;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/DockableElements$SymmetryElement;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Lcom/brakefield/painter/ui/DockableElements$OptionsOpenElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsOpenElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1749
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xc9

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0801e1

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1209bd

    .line 1757
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1206e1

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x1

    .line 1765
    invoke-virtual {p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI;->returnHomeFromEditor(Landroid/content/Context;I)V

    return-void
.end method

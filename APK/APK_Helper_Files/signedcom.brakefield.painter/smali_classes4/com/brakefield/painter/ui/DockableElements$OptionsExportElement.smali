.class public Lcom/brakefield/painter/ui/DockableElements$OptionsExportElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsExportElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1901
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xcd

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f0801a3

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12017c

    .line 1909
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1206d8

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 1917
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 1918
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;

    invoke-direct {p3}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;-><init>()V

    .line 1919
    invoke-virtual {p3, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ExportViewController;->show(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

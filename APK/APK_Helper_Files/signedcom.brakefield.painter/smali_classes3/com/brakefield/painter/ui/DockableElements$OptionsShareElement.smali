.class public Lcom/brakefield/painter/ui/DockableElements$OptionsShareElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsShareElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1838
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xcc

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080476

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120a8b

    .line 1846
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
    .locals 2

    .line 1854
    new-instance p3, Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProject()J

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;-><init>(J)V

    .line 1855
    invoke-virtual {p3}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getDisplayName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, "Untitled"

    .line 1859
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isPatternMode()Z

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/brakefield/painter/ShareManager;->launchShareOptions(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 1860
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

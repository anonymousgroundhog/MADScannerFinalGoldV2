.class public Lcom/brakefield/painter/ui/DockableElements$PerpectivesElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerpectivesElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1536
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0x9c

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f080336

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1209e9

    .line 1544
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
    .locals 2

    .line 1552
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getPerspectiveManager()Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    move-result-object v0

    const/4 v1, 0x5

    .line 1553
    invoke-virtual {v0, v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->toggleOrSetPerspective(I)V

    .line 1554
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;-><init>()V

    .line 1555
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PerspectiveSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 1556
    invoke-virtual {p2, p1, v0, p3}, Lcom/brakefield/painter/ui/SimpleUI;->transformPopup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    .line 1557
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

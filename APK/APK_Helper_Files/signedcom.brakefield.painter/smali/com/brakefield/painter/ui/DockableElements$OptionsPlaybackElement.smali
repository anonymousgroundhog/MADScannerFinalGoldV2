.class public Lcom/brakefield/painter/ui/DockableElements$OptionsPlaybackElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsPlaybackElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1868
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xce

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f08033c

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120a3e

    .line 1876
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1206e4

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1886
    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1888
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 1890
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;

    invoke-direct {v1}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;-><init>()V

    .line 1891
    new-instance v2, Lcom/brakefield/painter/PlaybackManager;

    invoke-direct {v2}, Lcom/brakefield/painter/PlaybackManager;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/PlaybackManager;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v1, 0x0

    aget v7, v0, v1

    const/4 v1, 0x1

    aget v8, v0, v1

    .line 1893
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v10

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V

    return-void
.end method

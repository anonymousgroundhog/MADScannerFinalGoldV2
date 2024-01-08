.class public Lcom/brakefield/painter/ui/DockableElements$OptionsSaveElement;
.super Lcom/brakefield/painter/ui/DockableElements$DockableElement;
.source "DockableElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/DockableElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsSaveElement"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1773
    invoke-direct {p0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;-><init>()V

    return-void
.end method

.method static synthetic lambda$handleClick$0(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    const/4 v0, 0x0

    .line 1793
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->saveProjectChanges(Z)V

    .line 1794
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->createLastSave()V

    const v0, 0x7f120a07

    .line 1795
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const/16 v0, 0xca

    return v0
.end method

.method public getResourceId()I
    .locals 1

    const v0, 0x7f08044c

    return v0
.end method

.method public getToolTip()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120a60

    .line 1781
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUIBindingKey()I
    .locals 1

    const v0, 0x7f1206e7

    return v0
.end method

.method protected handleClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 1790
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    .line 1792
    new-instance p1, Lcom/brakefield/painter/ui/DockableElements$OptionsSaveElement$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/brakefield/painter/ui/DockableElements$OptionsSaveElement$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 1797
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsSaveProject:Z

    .line 1798
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

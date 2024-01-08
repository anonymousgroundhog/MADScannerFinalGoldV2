.class Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$1;
.super Lcom/brakefield/painter/ui/MiniToolbars$ToggleAction;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

.field final synthetic this$1:Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;)V
    .locals 2

    .line 367
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$1;->this$1:Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;

    iget-object p1, p1, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$ToggleAction;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V

    .line 368
    new-instance p1, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPerspectiveManager()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;-><init>(J)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$1;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    return-void
.end method


# virtual methods
.method getIcon()I
    .locals 1

    const v0, 0x7f08047e

    return v0
.end method

.method isOn()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$1;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getSnap()Z

    move-result v0

    return v0
.end method

.method onClick(Landroid/view/View;)V
    .locals 1

    .line 375
    iget-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$1;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$1;->isOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->setSnap(Z)V

    return-void
.end method

.class abstract Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;
.super Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PerspectiveToolbar"
.end annotation


# instance fields
.field final showGridAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

.field final snapAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

.field final synthetic this$0:Lcom/brakefield/painter/ui/MiniToolbars;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;)V
    .locals 1

    .line 366
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V

    .line 367
    new-instance p1, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$1;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$1;-><init>(Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;->snapAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

    .line 382
    new-instance p1, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$2;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar$2;-><init>(Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;->showGridAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

    return-void
.end method


# virtual methods
.method getActions()[Lcom/brakefield/painter/ui/MiniToolbars$Action;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/brakefield/painter/ui/MiniToolbars$Action;

    const/4 v1, 0x0

    .line 399
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;->snapAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;->showGridAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

    aput-object v2, v0, v1

    return-object v0
.end method

.class abstract Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;
.super Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MiniToolbars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ShapeToolbar"
.end annotation


# instance fields
.field final stampAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

.field final synthetic this$0:Lcom/brakefield/painter/ui/MiniToolbars;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MiniToolbars;)V
    .locals 1

    .line 303
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;->this$0:Lcom/brakefield/painter/ui/MiniToolbars;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;Lcom/brakefield/painter/ui/MiniToolbars$1;)V

    .line 304
    new-instance p1, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar$1;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar$1;-><init>(Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;->stampAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

    return-void
.end method


# virtual methods
.method getActions()[Lcom/brakefield/painter/ui/MiniToolbars$Action;
    .locals 3

    .line 316
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/brakefield/painter/ui/MiniToolbars$Action;

    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;->stampAction:Lcom/brakefield/painter/ui/MiniToolbars$Action;

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    new-array v0, v1, [Lcom/brakefield/painter/ui/MiniToolbars$Action;

    return-object v0
.end method

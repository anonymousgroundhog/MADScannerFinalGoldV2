.class Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$1;
.super Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;
.source "TransformFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->onUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromPoint:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic val$toPoint:Lcom/brakefield/infinitestudio/geometry/Point;


# direct methods
.method constructor <init>(ILcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 0

    .line 742
    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$1;->val$toPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$1;->val$fromPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;-><init>(I)V

    return-void
.end method


# virtual methods
.method public redo()V
    .locals 2

    .line 746
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$000()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$1;->val$toPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 747
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public undo()V
    .locals 2

    .line 752
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->access$000()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$1;->val$fromPoint:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/geometry/Point;->set(Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 753
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

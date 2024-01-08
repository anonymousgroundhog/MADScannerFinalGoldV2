.class Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$3;
.super Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;
.source "TransformFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->onMultiUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromMatrix:Landroid/graphics/Matrix;

.field final synthetic val$toMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 0

    .line 895
    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$3;->val$toMatrix:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$3;->val$fromMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;-><init>(I)V

    return-void
.end method


# virtual methods
.method public redo()V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$3;->val$toMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->setMatrix(Landroid/graphics/Matrix;)V

    .line 900
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public undo()V
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$3;->val$fromMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->setMatrix(Landroid/graphics/Matrix;)V

    .line 906
    sget-object v0, Lcom/brakefield/infinitestudio/Main;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

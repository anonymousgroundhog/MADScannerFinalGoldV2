.class Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$4;
.super Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;
.source "TransformFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->rotate90CW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$im:Landroid/graphics/Matrix;

.field final synthetic val$m:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(ILandroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 0

    .line 964
    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$4;->val$m:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$4;->val$im:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;-><init>(I)V

    return-void
.end method


# virtual methods
.method public redo()V
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$4;->val$m:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public undo()V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame$4;->val$im:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/tools/TransformFrame;->transform(Landroid/graphics/Matrix;I)V

    return-void
.end method

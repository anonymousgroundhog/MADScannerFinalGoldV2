.class Lcom/brakefield/painter/ui/MainViewX$4;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setFingerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MainViewX;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$4;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 352
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$4;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1100(Lcom/brakefield/painter/ui/MainViewX;)V

    :cond_0
    return-void
.end method

.method public onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 331
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$4;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/MainViewX;->down(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_0
    return-void
.end method

.method public onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V
    .locals 2

    .line 338
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$4;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0, p1, p2, p3}, Lcom/brakefield/painter/ui/MainViewX;->access$900(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    :cond_0
    return-void
.end method

.method public onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 345
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$4;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1000(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_0
    return-void
.end method

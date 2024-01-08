.class Lcom/brakefield/painter/ui/MainView$9;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainView;->setThreeFingerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MainView;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$9;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onDown(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 559
    invoke-static {p1}, Lcom/brakefield/infinitestudio/sketchbook/GuideLines;->onUp(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMove(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUp(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 568
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canRedo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 569
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setRedo()V

    .line 570
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView$9;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainView;->access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    :cond_0
    return-void
.end method

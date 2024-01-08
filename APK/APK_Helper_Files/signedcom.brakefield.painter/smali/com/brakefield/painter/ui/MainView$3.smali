.class Lcom/brakefield/painter/ui/MainView$3;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainView;->setFingerListener()V
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

    .line 202
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$3;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 227
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$3;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$200(Lcom/brakefield/painter/ui/MainView;)V

    :cond_0
    return-void
.end method

.method public onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 206
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$3;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/MainView;->down(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_0
    return-void
.end method

.method public onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V
    .locals 0

    .line 213
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result p2

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    .line 214
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainView$3;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p2, p1}, Lcom/brakefield/painter/ui/MainView;->access$000(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_0
    return-void
.end method

.method public onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 220
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$3;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainView;->access$100(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_0
    return-void
.end method

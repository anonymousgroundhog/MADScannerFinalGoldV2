.class Lcom/brakefield/painter/ui/MainViewX$11;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setFourFingerListener()V
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

    .line 692
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$11;->this$0:Lcom/brakefield/painter/ui/MainViewX;

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

    .line 700
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$11;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->toggleInterface()V

    :cond_0
    return-void
.end method

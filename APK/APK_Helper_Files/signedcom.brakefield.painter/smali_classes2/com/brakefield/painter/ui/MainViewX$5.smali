.class Lcom/brakefield/painter/ui/MainViewX$5;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setStylusListener()V
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

    .line 361
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$5;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$5;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$1100(Lcom/brakefield/painter/ui/MainViewX;)V

    return-void
.end method

.method public onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;ZZ)V
    .locals 0

    .line 365
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$5;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/MainViewX;->down(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

.method public onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;IIZZ)V
    .locals 0

    .line 370
    iget-object p4, p0, Lcom/brakefield/painter/ui/MainViewX$5;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p4, p1, p2, p3}, Lcom/brakefield/painter/ui/MainViewX;->access$900(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    return-void
.end method

.method public onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;ZZ)V
    .locals 0

    .line 375
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$5;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p2, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$1000(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

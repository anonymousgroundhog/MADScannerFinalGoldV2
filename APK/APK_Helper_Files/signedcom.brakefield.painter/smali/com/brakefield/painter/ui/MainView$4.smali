.class Lcom/brakefield/painter/ui/MainView$4;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainView;->setStylusListener()V
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

    .line 236
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$4;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$4;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainView;->access$200(Lcom/brakefield/painter/ui/MainView;)V

    return-void
.end method

.method public onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;ZZ)V
    .locals 0

    .line 240
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainView$4;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/MainView;->down(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

.method public onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;IIZZ)V
    .locals 0

    .line 245
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainView$4;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p2, p1}, Lcom/brakefield/painter/ui/MainView;->access$000(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

.method public onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;ZZ)V
    .locals 0

    .line 250
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainView$4;->this$0:Lcom/brakefield/painter/ui/MainView;

    invoke-static {p2, p1}, Lcom/brakefield/painter/ui/MainView;->access$100(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

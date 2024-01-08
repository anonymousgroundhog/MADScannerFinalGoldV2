.class Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;
.super Ljava/lang/Object;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->bindExpandListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

.field final synthetic val$detector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Landroid/view/GestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 633
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->val$detector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 638
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 640
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->val$detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    .line 654
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 655
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpandFinished()V

    .line 661
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$102(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    .line 662
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$502(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    .line 663
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$702(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    goto :goto_0

    .line 644
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1502(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;I)I

    .line 645
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$3;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1602(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;I)I

    :goto_0
    return v0
.end method

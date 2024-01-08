.class Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 474
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->getWidth()I

    move-result p1

    .line 475
    div-int/lit8 p1, p1, 0x5

    .line 476
    iget-object p4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p4}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)F

    move-result p4

    cmpl-float p4, p3, p4

    const/4 v0, 0x1

    if-lez p4, :cond_0

    .line 477
    iget-object p4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p4}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result p4

    neg-int p1, p1

    if-le p4, p1, :cond_1

    .line 478
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    goto :goto_0

    .line 480
    :cond_0
    iget-object p4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p4}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)F

    move-result p4

    neg-float p4, p4

    cmpg-float p4, p3, p4

    if-gez p4, :cond_1

    .line 481
    iget-object p4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p4}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result p4

    if-ge p4, p1, :cond_1

    .line 482
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 485
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$1;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$102(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    :cond_2
    return p2
.end method

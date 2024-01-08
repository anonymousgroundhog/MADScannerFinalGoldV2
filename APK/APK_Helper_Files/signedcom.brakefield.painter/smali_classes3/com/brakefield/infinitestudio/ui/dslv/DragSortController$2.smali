.class Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;
.super Ljava/lang/Object;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


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

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 624
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$502(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    .line 625
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$102(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    .line 626
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$602(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    .line 627
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$402(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;I)I

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 613
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 p3, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 566
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 568
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 569
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 571
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$600(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$700(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 572
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$800(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    sub-int v1, p2, p1

    .line 573
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$900(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result v3

    if-ge v1, v3, :cond_3

    sub-int v1, v0, p4

    .line 574
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result v4

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    .line 575
    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 576
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 577
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 578
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result p2

    invoke-interface {p1, v1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpandStarted(II)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpand(I)V

    .line 584
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$502(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    goto/16 :goto_2

    .line 585
    :cond_3
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    .line 586
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$800(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result v1

    if-eqz v1, :cond_6

    sub-int v1, p2, p1

    .line 587
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$900(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result v3

    if-ge v1, v3, :cond_6

    sub-int/2addr v0, p4

    .line 588
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1000(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result v1

    if-le p4, v1, :cond_6

    iget-object p4, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    .line 589
    invoke-static {p4}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 590
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 591
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 592
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpandStarted(II)V

    goto :goto_1

    .line 595
    :cond_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$1200(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$ExpandListener;->onExpand(I)V

    .line 598
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1, v2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$502(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    goto :goto_2

    :cond_6
    sub-int/2addr p2, p1

    .line 599
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$900(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)I

    move-result p2

    if-le p1, p2, :cond_7

    .line 600
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$602(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;Z)Z

    :cond_7
    :goto_2
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 551
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;->access$500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortController$2;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

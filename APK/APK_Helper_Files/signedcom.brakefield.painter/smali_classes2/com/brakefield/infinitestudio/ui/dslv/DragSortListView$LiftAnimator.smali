.class Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;
.super Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;FI)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    .line 762
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;FI)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 768
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$400(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    return-void
.end method

.method public onUpdate(FF)V
    .locals 2

    .line 773
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$100(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->cancel()V

    goto :goto_0

    .line 776
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    iget p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$302(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;I)I

    .line 778
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$500(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$600(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I

    move-result p2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$300(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 779
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView$LiftAnimator;->this$0:Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;->access$700(Lcom/brakefield/infinitestudio/ui/dslv/DragSortListView;Z)V

    :goto_0
    return-void
.end method

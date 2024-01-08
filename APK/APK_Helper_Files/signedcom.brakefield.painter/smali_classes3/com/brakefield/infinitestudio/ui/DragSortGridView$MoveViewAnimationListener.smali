.class Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/DragSortGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveViewAnimationListener"
.end annotation


# instance fields
.field private newX:I

.field private newY:I

.field private target:Landroid/view/View;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/DragSortGridView;Landroid/view/View;II)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->target:Landroid/view/View;

    .line 256
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->newX:I

    .line 257
    iput p4, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->newY:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .line 262
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->target:Landroid/view/View;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->newX:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->newY:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->newY:I

    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->target:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 263
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 264
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$MoveViewAnimationListener;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->movingChildViews:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

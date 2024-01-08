.class Lcom/brakefield/infinitestudio/ui/SlideshowView$1;
.super Ljava/lang/Object;
.source "SlideshowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/SlideshowView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

.field final synthetic val$minHeight:I

.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 475
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->val$minHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 479
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 480
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 482
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$000(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$000(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    move-result-object v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->val$minHeight:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    .line 484
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$100(Lcom/brakefield/infinitestudio/ui/SlideshowView;)I

    move-result v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->val$minHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 483
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;->onPullDown(F)V

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

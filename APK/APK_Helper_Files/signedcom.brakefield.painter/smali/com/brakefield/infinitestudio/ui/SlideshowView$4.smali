.class Lcom/brakefield/infinitestudio/ui/SlideshowView$4;
.super Ljava/lang/Object;
.source "SlideshowView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/SlideshowView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$4;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 562
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$4;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$000(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 563
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$4;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$000(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView$SlideshowListener;->onStop()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

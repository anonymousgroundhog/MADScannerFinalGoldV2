.class Lcom/brakefield/infinitestudio/ui/UIManager$4$1;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/UIManager$4;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/UIManager$4;

.field final synthetic val$controller:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/UIManager$4;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4$1;->this$0:Lcom/brakefield/infinitestudio/ui/UIManager$4;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4$1;->val$controller:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4$1;->this$0:Lcom/brakefield/infinitestudio/ui/UIManager$4;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager$4;->access$000(Lcom/brakefield/infinitestudio/ui/UIManager$4;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$4$1;->val$controller:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removeView(Landroid/view/View;)V

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

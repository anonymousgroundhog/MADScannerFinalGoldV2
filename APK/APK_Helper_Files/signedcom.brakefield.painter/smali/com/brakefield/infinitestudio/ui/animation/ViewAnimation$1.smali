.class Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation$1;
.super Ljava/lang/Object;
.source "ViewAnimation.java"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->remove(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation$1;->val$parent:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation$1;->val$parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation$1;->val$v:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.class Lcom/brakefield/infinitestudio/ui/UIManager$1;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field startAlpha:F

.field final synthetic val$animateView:Landroid/view/View;

.field final synthetic val$pressInDistance:F


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$pressInDistance:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->startAlpha:F

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->startAlpha:F

    .line 58
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 59
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$pressInDistance:F

    sub-float v1, p1, v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    div-float/2addr p1, v1

    .line 62
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 63
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 65
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    iget v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->startAlpha:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const-string/jumbo v6, "scaleX"

    invoke-static {v1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 70
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    new-array v6, v2, [F

    aput v5, v6, v4

    const-string/jumbo v5, "scaleY"

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 71
    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    new-array v6, v2, [F

    aput v0, v6, v4

    const-string/jumbo v0, "translationZ"

    invoke-static {v5, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 72
    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->val$animateView:Landroid/view/View;

    new-array v2, v2, [F

    iget v6, p0, Lcom/brakefield/infinitestudio/ui/UIManager$1;->startAlpha:F

    aput v6, v2, v4

    const-string v4, "alpha"

    invoke-static {v5, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v4, 0x190

    int-to-long v4, v4

    .line 73
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    invoke-virtual {v3, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 82
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 83
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void
.end method

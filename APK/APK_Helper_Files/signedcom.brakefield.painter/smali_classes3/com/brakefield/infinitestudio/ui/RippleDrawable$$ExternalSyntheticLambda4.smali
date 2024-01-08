.class public final synthetic Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/RippleDrawable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    iput-boolean p2, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/RippleDrawable$$ExternalSyntheticLambda4;->f$1:Z

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->lambda$startRipple$3$com-brakefield-infinitestudio-ui-RippleDrawable(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

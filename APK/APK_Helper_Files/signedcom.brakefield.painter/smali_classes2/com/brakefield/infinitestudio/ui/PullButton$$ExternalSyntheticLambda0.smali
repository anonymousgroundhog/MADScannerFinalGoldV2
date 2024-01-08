.class public final synthetic Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/PullButton;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/PullButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/ui/PullButton;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/PullButton$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->lambda$setScaleValue$1$com-brakefield-infinitestudio-ui-PullButton(Landroid/animation/ValueAnimator;)V

    return-void
.end method

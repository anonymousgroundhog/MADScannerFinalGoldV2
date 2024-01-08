.class public final synthetic Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/BoundsAnimator;

.field public final synthetic f$1:Lcom/brakefield/painter/BoundsAnimator$AnimationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/BoundsAnimator;Lcom/brakefield/painter/BoundsAnimator$AnimationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/BoundsAnimator;

    iput-object p2, p0, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/BoundsAnimator$AnimationListener;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/BoundsAnimator;

    iget-object v1, p0, Lcom/brakefield/painter/BoundsAnimator$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/BoundsAnimator$AnimationListener;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/BoundsAnimator;->lambda$animate$0$com-brakefield-painter-BoundsAnimator(Lcom/brakefield/painter/BoundsAnimator$AnimationListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

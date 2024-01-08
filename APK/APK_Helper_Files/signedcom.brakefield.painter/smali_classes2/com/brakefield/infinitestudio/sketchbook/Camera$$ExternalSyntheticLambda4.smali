.class public final synthetic Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroid/graphics/Matrix;

.field public final synthetic f$4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public synthetic constructor <init>(ZFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$0:Z

    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$1:F

    iput p3, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$2:F

    iput-object p4, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/Matrix;

    iput-object p5, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$0:Z

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$2:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda4;->f$4:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->lambda$flip$3(ZFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.class public final synthetic Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:Landroid/graphics/Matrix;

.field public final synthetic f$6:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public synthetic constructor <init>(FFFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$0:F

    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$2:F

    iput p4, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$3:F

    iput p5, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$4:F

    iput-object p6, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/Matrix;

    iput-object p7, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$6:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$0:F

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$3:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$4:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda1;->f$6:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->lambda$settleOrientation$4(FFFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method

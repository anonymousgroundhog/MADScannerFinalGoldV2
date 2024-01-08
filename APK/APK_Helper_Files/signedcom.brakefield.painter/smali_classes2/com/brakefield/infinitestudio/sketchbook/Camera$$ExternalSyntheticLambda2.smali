.class public final synthetic Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:Landroid/graphics/Matrix;

.field public final synthetic f$5:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public synthetic constructor <init>(ZFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$0:Z

    iput p2, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$1:F

    iput p3, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$2:F

    iput p4, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$3:F

    iput-object p5, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$4:Landroid/graphics/Matrix;

    iput-object p6, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$5:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$0:Z

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$2:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$3:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$4:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda2;->f$5:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->lambda$rotate$2(ZFFFLandroid/graphics/Matrix;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method

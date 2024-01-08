.class public final synthetic Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/geometry/Point;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/geometry/Point;

.field public final synthetic f$10:F

.field public final synthetic f$11:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/geometry/Point;

.field public final synthetic f$3:Lcom/brakefield/infinitestudio/geometry/Point;

.field public final synthetic f$4:Lcom/brakefield/infinitestudio/geometry/Point;

.field public final synthetic f$5:Lcom/brakefield/infinitestudio/geometry/Point;

.field public final synthetic f$6:Lcom/brakefield/infinitestudio/geometry/Point;

.field public final synthetic f$7:Lcom/brakefield/infinitestudio/geometry/Point;

.field public final synthetic f$8:Landroid/graphics/Matrix;

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/graphics/Matrix;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$2:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p4, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$3:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p5, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$4:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p6, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$5:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p7, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$6:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p8, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$7:Lcom/brakefield/infinitestudio/geometry/Point;

    iput-object p9, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$8:Landroid/graphics/Matrix;

    iput p10, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$9:F

    iput p11, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$10:F

    iput-object p12, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$11:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13

    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$2:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$3:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$4:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v5, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$5:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v6, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$6:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$7:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v8, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$8:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$9:F

    iget v10, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$10:F

    iget-object v11, p0, Lcom/brakefield/infinitestudio/sketchbook/Camera$$ExternalSyntheticLambda3;->f$11:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object v12, p1

    invoke-static/range {v0 .. v12}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->lambda$animateCenter$0(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;Landroid/graphics/Matrix;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method

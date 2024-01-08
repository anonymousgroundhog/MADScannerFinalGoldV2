.class public final synthetic Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/CustomSwitch;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    iput p2, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;->f$1:F

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/CustomSwitch$$ExternalSyntheticLambda1;->f$2:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->lambda$animateToggle$1$com-brakefield-infinitestudio-ui-CustomSwitch(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

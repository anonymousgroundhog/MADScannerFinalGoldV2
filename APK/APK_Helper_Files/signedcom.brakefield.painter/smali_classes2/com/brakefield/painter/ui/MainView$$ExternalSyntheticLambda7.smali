.class public final synthetic Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/MainView;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/painter/ui/MainView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/painter/ui/MainView;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/MainView;->lambda$setTwoFingerPinchListener$0$com-brakefield-painter-ui-MainView(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.class public final synthetic Lcom/brakefield/painter/PainterMainControls$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/PainterMainControls;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/PainterMainControls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PainterMainControls$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/PainterMainControls;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/PainterMainControls$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/PainterMainControls;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterMainControls;->lambda$handleGestureEvent$1$com-brakefield-painter-PainterMainControls(Landroid/animation/ValueAnimator;)V

    return-void
.end method

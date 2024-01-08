.class public final synthetic Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/PainterGraphicsRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->lambda$renderResizeProject$2$com-brakefield-painter-PainterGraphicsRenderer(Landroid/animation/ValueAnimator;)V

    return-void
.end method

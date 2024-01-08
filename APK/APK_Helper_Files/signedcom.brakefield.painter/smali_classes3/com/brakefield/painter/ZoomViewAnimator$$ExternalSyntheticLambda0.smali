.class public final synthetic Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ZoomViewAnimator;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lcom/brakefield/painter/BoundsAnimator$AnimationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ZoomViewAnimator;

    iput-object p2, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    iput-boolean p5, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$4:Z

    iput-object p6, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$5:Lcom/brakefield/painter/BoundsAnimator$AnimationListener;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ZoomViewAnimator;

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$4:Z

    iget-object v5, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda0;->f$5:Lcom/brakefield/painter/BoundsAnimator$AnimationListener;

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ZoomViewAnimator;->lambda$onFullPreviewLayout$2$com-brakefield-painter-ZoomViewAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLcom/brakefield/painter/BoundsAnimator$AnimationListener;)V

    return-void
.end method

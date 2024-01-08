.class public final synthetic Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ZoomViewAnimator;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/widget/FrameLayout;

.field public final synthetic f$5:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ZoomViewAnimator;

    iput-object p2, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$2:Landroid/view/View;

    iput p4, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$4:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$5:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/ZoomViewAnimator;

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$2:Landroid/view/View;

    iget v3, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$3:I

    iget-object v4, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$4:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/brakefield/painter/ZoomViewAnimator$$ExternalSyntheticLambda2;->f$5:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ZoomViewAnimator;->lambda$animateToEditor$0$com-brakefield-painter-ZoomViewAnimator(Landroid/view/View;Landroid/view/View;ILandroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

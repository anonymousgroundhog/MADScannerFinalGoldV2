.class public final synthetic Lcom/brakefield/painter/ZoomViewAnimator$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ZoomViewAnimator$2;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ZoomViewAnimator$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ZoomViewAnimator$2;

    iput-object p2, p0, Lcom/brakefield/painter/ZoomViewAnimator$2$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$2$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ZoomViewAnimator$2;

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ZoomViewAnimator$2;->lambda$onStart$0$com-brakefield-painter-ZoomViewAnimator$2(Landroid/view/View;)V

    return-void
.end method

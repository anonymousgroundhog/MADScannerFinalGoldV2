.class Lcom/brakefield/painter/ZoomViewAnimator$2;
.super Ljava/lang/Object;
.source "ZoomViewAnimator.java"

# interfaces
.implements Lcom/brakefield/painter/BoundsAnimator$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ZoomViewAnimator;->animateFromEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic this$0:Lcom/brakefield/painter/ZoomViewAnimator;

.field final synthetic val$previewContainer:Landroid/widget/FrameLayout;

.field final synthetic val$thumb:Landroid/view/View;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->this$0:Lcom/brakefield/painter/ZoomViewAnimator;

    iput-object p2, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$thumb:Landroid/view/View;

    iput-object p3, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$previewContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onStart$0$com-brakefield-painter-ZoomViewAnimator$2(Landroid/view/View;)V
    .locals 2

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->this$0:Lcom/brakefield/painter/ZoomViewAnimator;

    invoke-static {v1, p1, v0}, Lcom/brakefield/painter/ZoomViewAnimator;->access$100(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 54
    iget-object p1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->this$0:Lcom/brakefield/painter/ZoomViewAnimator;

    invoke-static {p1}, Lcom/brakefield/painter/ZoomViewAnimator;->access$200(Lcom/brakefield/painter/ZoomViewAnimator;)Lcom/brakefield/painter/BoundsAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/BoundsAnimator;->update(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$thumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 63
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$thumb:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$thumb:Landroid/view/View;

    new-instance v1, Lcom/brakefield/painter/ZoomViewAnimator$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/painter/ZoomViewAnimator$2$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ZoomViewAnimator$2;Landroid/view/View;)V

    iput-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$thumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->this$0:Lcom/brakefield/painter/ZoomViewAnimator;

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$previewContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBackgroundColor()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/painter/ZoomViewAnimator;->access$000(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 58
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$2;->val$thumb:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

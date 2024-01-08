.class Lcom/brakefield/painter/ZoomViewAnimator$1;
.super Ljava/lang/Object;
.source "ZoomViewAnimator.java"

# interfaces
.implements Lcom/brakefield/painter/BoundsAnimator$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ZoomViewAnimator;->animateToEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ZoomViewAnimator;

.field final synthetic val$previewContainer:Landroid/widget/FrameLayout;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/widget/FrameLayout;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/brakefield/painter/ZoomViewAnimator$1;->this$0:Lcom/brakefield/painter/ZoomViewAnimator;

    iput-object p2, p0, Lcom/brakefield/painter/ZoomViewAnimator$1;->val$previewContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/brakefield/painter/ZoomViewAnimator$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopups()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/ZoomViewAnimator$1;->this$0:Lcom/brakefield/painter/ZoomViewAnimator;

    iget-object v1, p0, Lcom/brakefield/painter/ZoomViewAnimator$1;->val$previewContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBackgroundColor()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/brakefield/painter/ZoomViewAnimator;->access$000(Lcom/brakefield/painter/ZoomViewAnimator;Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

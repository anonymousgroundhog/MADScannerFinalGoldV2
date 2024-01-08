.class Lcom/brakefield/painter/ui/QuickHelp$OverlayView$1;
.super Ljava/lang/Object;
.source "QuickHelp.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->animateIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView$1;->this$0:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/brakefield/painter/ui/QuickHelp$OverlayView$1;->this$0:Lcom/brakefield/painter/ui/QuickHelp$OverlayView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/QuickHelp$OverlayView;->access$002(Lcom/brakefield/painter/ui/QuickHelp$OverlayView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

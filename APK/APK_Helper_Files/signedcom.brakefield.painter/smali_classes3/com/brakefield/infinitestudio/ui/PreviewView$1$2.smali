.class Lcom/brakefield/infinitestudio/ui/PreviewView$1$2;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/PreviewView$1;->onUp(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/infinitestudio/ui/PreviewView$1;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/PreviewView$1;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$2;->this$1:Lcom/brakefield/infinitestudio/ui/PreviewView$1;

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

    .line 152
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/PreviewView$1$2;->this$1:Lcom/brakefield/infinitestudio/ui/PreviewView$1;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ui/PreviewView$1;->this$0:Lcom/brakefield/infinitestudio/ui/PreviewView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/brakefield/infinitestudio/ui/PreviewView;->animator:Landroid/animation/ValueAnimator;

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

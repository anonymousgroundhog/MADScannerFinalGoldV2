.class Lcom/brakefield/infinitestudio/ProjectGallery$4;
.super Ljava/lang/Object;
.source "ProjectGallery.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;->revealView(Landroid/view/View;FFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;)V
    .locals 0

    .line 2056
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$4;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 2067
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$4;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$400(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ui/SlideshowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->play()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2063
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$4;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$400(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ui/SlideshowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->play()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 2059
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$4;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$400(Lcom/brakefield/infinitestudio/ProjectGallery;)Lcom/brakefield/infinitestudio/ui/SlideshowView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->pause()V

    return-void
.end method

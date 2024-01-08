.class Lcom/brakefield/infinitestudio/ProjectGallery$3;
.super Ljava/lang/Object;
.source "ProjectGallery.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ProjectGallery;->hide(ZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2005
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->val$listener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->val$v:Landroid/view/View;

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

    .line 2011
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->val$v:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2013
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->val$v:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2014
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1800(Lcom/brakefield/infinitestudio/ProjectGallery;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2016
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/brakefield/infinitestudio/ProjectGallery;->oldPreviewThumb:Landroid/view/View;

    .line 2017
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    iput-object v0, p1, Lcom/brakefield/infinitestudio/ProjectGallery;->previewProject:Lcom/brakefield/infinitestudio/ProjectGallery$GalleryObject;

    .line 2019
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$3;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

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

    return-void
.end method

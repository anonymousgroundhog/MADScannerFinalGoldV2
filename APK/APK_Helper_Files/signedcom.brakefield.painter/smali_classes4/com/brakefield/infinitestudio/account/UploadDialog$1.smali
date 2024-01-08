.class Lcom/brakefield/infinitestudio/account/UploadDialog$1;
.super Ljava/lang/Object;
.source "UploadDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/account/UploadDialog;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/account/UploadDialog;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$000(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 74
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$100(Lcom/brakefield/infinitestudio/account/UploadDialog;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyfishjy/library/RippleBackground;->stopRippleAnimation()V

    .line 76
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    .line 77
    invoke-static {v2}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v4}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    .line 76
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 78
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x2d0

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 80
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 82
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$300(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$300(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$string;->upload_success:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog$1;->this$0:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->access$300(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/brakefield/infinitestudio/account/UploadDialog$1$1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/account/UploadDialog$1$1;-><init>(Lcom/brakefield/infinitestudio/account/UploadDialog$1;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/account/UploadDialog;
.super Landroid/app/AlertDialog;
.source "UploadDialog.java"


# instance fields
.field private animation:Landroid/view/animation/ScaleAnimation;

.field private context:Landroid/content/Context;

.field private image:Landroid/widget/ImageView;

.field private rippleBackground:Lcom/skyfishjy/library/RippleBackground;

.field private success:Landroid/view/View;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/animation/ScaleAnimation;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->animation:Landroid/view/animation/ScaleAnimation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/account/UploadDialog;)Lcom/skyfishjy/library/RippleBackground;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->rippleBackground:Lcom/skyfishjy/library/RippleBackground;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->success:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/account/UploadDialog;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->text:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->image:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/infinitestudio/account/UploadDialog$1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/account/UploadDialog$1;-><init>(Lcom/brakefield/infinitestudio/account/UploadDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 38
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 40
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->uploader:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/UploadDialog;->setContentView(Landroid/view/View;)V

    .line 43
    new-instance v0, Lcom/brakefield/infinitestudio/ui/PanelDrawable;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/PanelDrawable;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    sget p1, Lcom/brakefield/infinitestudio/R$id;->upload_image:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/UploadDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->image:Landroid/widget/ImageView;

    .line 47
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->animation:Landroid/view/animation/ScaleAnimation;

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 49
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->animation:Landroid/view/animation/ScaleAnimation;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 50
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->animation:Landroid/view/animation/ScaleAnimation;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->animation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 52
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->animation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    sget p1, Lcom/brakefield/infinitestudio/R$id;->upload_ripple:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/UploadDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/skyfishjy/library/RippleBackground;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->rippleBackground:Lcom/skyfishjy/library/RippleBackground;

    .line 55
    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->startRippleAnimation()V

    .line 57
    sget p1, Lcom/brakefield/infinitestudio/R$id;->upload_text:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/UploadDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->text:Landroid/widget/TextView;

    .line 59
    sget p1, Lcom/brakefield/infinitestudio/R$id;->upload_success:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/UploadDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->success:Landroid/view/View;

    return-void
.end method

.method public setUploadImage(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/UploadDialog;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

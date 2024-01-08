.class Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;
.super Ljava/lang/Object;
.source "BackgroundColorViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeDepth:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeOpacity:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observePaperTextureCustomSource:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observePaperTextureResourceSource:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final observeScale:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeUsePaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Landroid/view/View;)V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Landroid/view/View;)V

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 102
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;)V

    invoke-direct {p2, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observeUsePaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 107
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/Resources;Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;)V

    invoke-direct {p2, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observePaperTextureResourceSource:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 114
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observePaperTextureCustomSource:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 121
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observeOpacity:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 122
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observeDepth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 123
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observeScale:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->backgroundColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setBackgroundColor(I)V

    .line 100
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Ljava/lang/Boolean;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureSettings:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureSettings:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$2(Landroid/content/res/Resources;Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result p2

    .line 110
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 111
    iget-object p1, p1, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushTexturesPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 118
    iget-object p0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$4(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Ljava/lang/Float;)V
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$5(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Ljava/lang/Float;)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$6(Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;Ljava/lang/Float;)V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->scaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observeUsePaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->usePaperTexture()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observeOpacity:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaperTextureOpacity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observeDepth:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaperTextureDepth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observeScale:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaperTextureScale()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observePaperTextureResourceSource:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaperResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BackgroundColorViewController$UpdateHandler;->observePaperTextureCustomSource:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaperCustomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method

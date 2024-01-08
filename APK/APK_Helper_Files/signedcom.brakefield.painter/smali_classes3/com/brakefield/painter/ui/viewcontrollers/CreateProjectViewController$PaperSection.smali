.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;
.super Ljava/lang/Object;
.source "CreateProjectViewController.java"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$Section;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaperSection"
.end annotation


# instance fields
.field private final observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observePaperIsVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
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

.field private final observeUsePaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V
    .locals 1

    .line 927
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 930
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observePaperIsVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 934
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observeUsePaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 942
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observePaperTextureResourceSource:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 949
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observePaperTextureCustomSource:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V
    .locals 0

    .line 927
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Ljava/lang/Integer;)V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 931
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperSettings:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 932
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperSettings:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$2$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 935
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 936
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->removeTexture:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 938
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->removeTexture:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 939
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperTexture:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$new$3$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Ljava/lang/String;)V
    .locals 3

    .line 0
    if-eqz p1, :cond_0

    .line 943
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 944
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result p1

    .line 945
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$2200(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 946
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperTexture:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$2200(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$4$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Ljava/lang/String;)V
    .locals 3

    .line 0
    if-eqz p1, :cond_0

    .line 950
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 951
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushTexturesPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 952
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 953
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperTexture:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$2200(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setup$10$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 981
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;Landroid/view/View;)V

    sput-object v0, Lcom/brakefield/painter/activities/BrushTextureResourcesActivity;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;

    .line 992
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/brakefield/painter/activities/BrushTextureResourcesActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 993
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$setup$5$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 962
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperIsVisible(Z)V

    .line 963
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method synthetic lambda$setup$6$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(IZ)V
    .locals 0

    .line 969
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperColor(I)V

    .line 970
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method synthetic lambda$setup$7$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7

    .line 968
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$2500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getPaperColor()I

    move-result v4

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;)V

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/brakefield/painter/ui/SimpleUI;->showColorsPanel(Landroid/app/Activity;Landroid/view/View;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V

    return-void
.end method

.method synthetic lambda$setup$8$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Landroid/view/View;)V
    .locals 2

    .line 976
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperTexture(Ljava/lang/String;Z)V

    .line 977
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method synthetic lambda$setup$9$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PaperSection(Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 1

    .line 982
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->isPreset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object p2, p2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 984
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 985
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperTexture(Ljava/lang/String;Z)V

    goto :goto_0

    .line 987
    :cond_0
    iget-object p1, p2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 988
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperTexture(Ljava/lang/String;Z)V

    .line 990
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 3

    .line 960
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperVisibilityToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;)V

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    .line 965
    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isPaperVisible()Z

    move-result v2

    .line 960
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 967
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 975
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->removeTexture:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperTexture:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperTexture:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 996
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->paperTexture:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    return-void
.end method

.method public updateSection()V
    .locals 5

    .line 1001
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observePaperIsVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isPaperVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1002
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observePaperColor:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getPaperColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1003
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->hasPaperTexture()Z

    move-result v0

    .line 1004
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getPaperTextureName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$1400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/nativeobjs/ProjectNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isPaperTextureCustom()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1016
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observeUsePaperTexture:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1017
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observePaperTextureResourceSource:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1018
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PaperSection;->observePaperTextureCustomSource:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method

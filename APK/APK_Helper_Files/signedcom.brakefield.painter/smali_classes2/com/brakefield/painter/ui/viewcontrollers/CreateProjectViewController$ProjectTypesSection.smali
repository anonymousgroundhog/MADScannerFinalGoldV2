.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;
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
    name = "ProjectTypesSection"
.end annotation


# instance fields
.field private final observeBlankProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeImageProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observePatternProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
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

    .line 350
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->observeBlankProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 353
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->observeImageProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 354
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->observePatternProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$1;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)V

    return-void
.end method

.method static synthetic lambda$setup$5(Landroid/app/Activity;I)V
    .locals 1

    .line 371
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private removeImportedImage()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$702(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 404
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method private styleButton(Landroid/widget/ImageView;Z)V
    .locals 2

    .line 391
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    .line 392
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    if-eqz p2, :cond_0

    .line 394
    new-instance p2, Lcom/brakefield/infinitestudio/ui/CircleDrawable;

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/CircleDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 395
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 397
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$ProjectTypesSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newBlankImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->styleButton(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$ProjectTypesSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newImageImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->styleButton(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method synthetic lambda$new$2$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$ProjectTypesSection(Ljava/lang/Boolean;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newPatternImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->styleButton(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method synthetic lambda$setup$3$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$ProjectTypesSection(Landroid/view/View;)V
    .locals 1

    .line 359
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->BLANK:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$602(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    .line 360
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->removeImportedImage()V

    .line 361
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method synthetic lambda$setup$4$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$ProjectTypesSection(Landroid/app/Activity;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->isCopy:Z

    .line 369
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    iget-object p2, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importImage(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method synthetic lambda$setup$6$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$ProjectTypesSection(Landroid/app/Activity;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 367
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;Landroid/app/Activity;)V

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda8;-><init>(Landroid/app/Activity;)V

    invoke-static {p2, p3, v0, v1}, Lcom/brakefield/painter/FileImporter;->processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void
.end method

.method synthetic lambda$setup$7$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$ProjectTypesSection(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$800(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;Landroid/app/Activity;)V

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    return-void
.end method

.method synthetic lambda$setup$8$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$ProjectTypesSection(Landroid/view/View;)V
    .locals 1

    .line 377
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->PATTERN:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$602(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    .line 378
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->update()V

    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newBlankButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newBlankImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 365
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newImageButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newImageImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 376
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newPatternButton:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->newPatternImage:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method

.method public updateSection()V
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->observeBlankProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    move-result-object v1

    sget-object v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->BLANK:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->observeImageProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    move-result-object v1

    sget-object v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->IMAGE:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->observePatternProjectSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectTypesSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    move-result-object v1

    sget-object v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->PATTERN:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method

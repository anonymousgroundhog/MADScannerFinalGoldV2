.class public abstract Lcom/brakefield/painter/activities/ResourcesActivity;
.super Lcom/brakefield/infinitestudio/activities/CollectionActivity;
.source "ResourcesActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/activities/CollectionActivity<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
        ">;"
    }
.end annotation


# static fields
.field public static listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;


# instance fields
.field private importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

.field private final quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

.field private final viewController:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->ResourcesViewController()Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    .line 27
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/QuickHelp;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    return-void
.end method

.method private ResourcesViewController()Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->getResourcesViewController()Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->getCollectionViewController()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->setCollectionViewController(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;)V

    return-object v0
.end method

.method static synthetic lambda$bindMainContent$1(Landroid/view/View;I)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 5

    .line 39
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->bindMainContent(Landroid/view/ViewGroup;)V

    .line 41
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v1, 0x7f080079

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 45
    new-instance v1, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ResourcesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/activities/ResourcesActivity;->addTitleBarContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v0, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/ImportIntentLaunchers;-><init>(Landroid/content/Context;Landroidx/activity/result/ActivityResultRegistry;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    .line 58
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 60
    iget-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showQuickHelp()Z

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->visualizeQuickHelpCoverage()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/brakefield/painter/ui/QuickHelp;->setup(Landroid/view/ViewGroup;Lcom/brakefield/painter/app/PainterApp;ZZ)V

    return-void
.end method

.method protected getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    new-instance v1, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ResourcesActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getCollectionViewControllerDelegate(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getResourcesViewController()Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$bindMainContent$0$com-brakefield-painter-activities-ResourcesActivity(Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->importResourceAndRefresh(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/brakefield/painter/FileImporter$ImportUri;)V

    return-void
.end method

.method synthetic lambda$bindMainContent$2$com-brakefield-painter-activities-ResourcesActivity(Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 46
    new-instance v0, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ResourcesActivity;)V

    new-instance v1, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-static {p2, p3, v0, v1}, Lcom/brakefield/painter/FileImporter;->processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void
.end method

.method synthetic lambda$bindMainContent$3$com-brakefield-painter-activities-ResourcesActivity(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/brakefield/painter/activities/ResourcesActivity;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    new-instance v1, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/activities/ResourcesActivity$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/activities/ResourcesActivity;Landroid/view/View;)V

    invoke-static {p0, p1, v0, v1}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    return-void
.end method

.method synthetic lambda$getCollectionViewControllerDelegate$4$com-brakefield-painter-activities-ResourcesActivity(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 1

    .line 71
    sget-object v0, Lcom/brakefield/painter/activities/ResourcesActivity;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;

    invoke-interface {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;->resourceSelected(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V

    .line 72
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ResourcesActivity;->finish()V

    return-void
.end method

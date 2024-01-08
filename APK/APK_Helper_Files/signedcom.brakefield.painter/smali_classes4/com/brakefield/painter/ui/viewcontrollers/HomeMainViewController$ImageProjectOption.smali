.class Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;
.super Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;
.source "HomeMainViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProjectOption"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V
    .locals 1

    .line 299
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 322
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopups()V

    return-void
.end method

.method static synthetic lambda$onClick$1(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 1

    .line 322
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProjectListener:Ljava/lang/Runnable;

    .line 323
    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getLocation()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method static synthetic lambda$onClick$2(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 2

    .line 316
    iget-object v0, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/FileImporter;->isProjectFileType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p2}, Lcom/brakefield/painter/FileImporter$ImportUri;->asFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p1

    .line 321
    new-instance p2, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    invoke-direct {p2, p1, v0}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;-><init>(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/Runnable;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, v1, [Ljava/lang/Void;

    .line 325
    invoke-virtual {p2, p0, p1}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/FileImporter;->isImageFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iput-boolean v1, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->isCopy:Z

    .line 329
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/PainterProjectStore;->navigateTo(Lcom/brakefield/infinitestudio/ProjectStore$Project;)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showCreateProjectScreen(Landroid/app/Activity;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    move-result-object p0

    .line 331
    iget-object p2, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importImage(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$onClick$3(Landroid/app/Activity;I)V
    .locals 1

    .line 334
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$onClick$4(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 315
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    new-instance p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    invoke-static {p2, p3, v0, p0}, Lcom/brakefield/painter/FileImporter;->processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void
.end method


# virtual methods
.method getIcon()I
    .locals 1

    const v0, 0x7f08027a

    return v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201cc

    .line 302
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUIBindingKey()I
    .locals 1

    const v0, 0x7f1207ae

    return v0
.end method

.method onClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->access$1200(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-static {p1, p3, v0, v1}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    return-void
.end method

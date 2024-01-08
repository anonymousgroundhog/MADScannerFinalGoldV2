.class Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption;
.super Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;
.source "HomeMainViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChallengesProjectOption"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V
    .locals 1

    .line 360
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V

    return-void
.end method

.method static synthetic lambda$openChallengeProject$1(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopups()V

    return-void
.end method

.method static synthetic lambda$openChallengeProject$2(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 394
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 395
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$openChallengeProject$3(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 1

    .line 393
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProjectListener:Ljava/lang/Runnable;

    .line 399
    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getLocation()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    .line 400
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method private openChallengeProject(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V
    .locals 5

    const-string v0, ".pntr"

    .line 382
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 383
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeProjectsDirectory()Ljava/lang/String;

    move-result-object v1

    .line 384
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/FileManager;->buildPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 385
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 386
    invoke-static {v3, v1, p2, p2, v2}, Lcom/brakefield/painter/PainterLib;->unzipProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 390
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeProjectsDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p2

    .line 391
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->showProgress()V

    .line 392
    new-instance v0, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    invoke-direct {v0, p2, v1}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;-><init>(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/Runnable;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v2, [Ljava/lang/Void;

    .line 401
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method getIcon()I
    .locals 1

    const v0, 0x7f0800fc

    return v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1200ab

    .line 363
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUIBindingKey()I
    .locals 1

    const v0, 0x7f1207ab

    return v0
.end method

.method synthetic lambda$onClick$0$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController$ChallengesProjectOption(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V
    .locals 0

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption;->openChallengeProject(Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V

    return-void
.end method

.method onClick(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 375
    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p2, p1, p3}, Lcom/brakefield/painter/ui/SimpleUI;->showChallengesScreen(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;)Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

    return-void
.end method

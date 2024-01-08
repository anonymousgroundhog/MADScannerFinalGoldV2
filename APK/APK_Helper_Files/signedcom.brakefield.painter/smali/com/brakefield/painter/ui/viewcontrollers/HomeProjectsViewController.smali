.class public Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;
.super Ljava/lang/Object;
.source "HomeProjectsViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderDragView;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectDragView;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFoldersSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderItemViewHolder;
    }
.end annotation


# instance fields
.field private intentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

.field private optionsPopup:Landroid/widget/PopupWindow;

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final projectAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

.field private final projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 71
    new-instance v0, Lcom/brakefield/painter/ZoomViewAnimator;

    invoke-direct {v0}, Lcom/brakefield/painter/ZoomViewAnimator;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->intentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    .line 73
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->optionsPopup:Landroid/widget/PopupWindow;

    .line 74
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->getProjectFolderOptions(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->getProjectOptions(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Landroid/widget/PopupWindow;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->optionsPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$302(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->optionsPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)Lcom/brakefield/painter/ZoomViewAnimator;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

    return-object p0
.end method

.method private getProjectFolderOptions(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/brakefield/painter/ui/SimpleUI;",
            "Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/MenuOption;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    new-instance v0, Lcom/brakefield/infinitestudio/MenuOption;

    const v1, 0x7f120a47

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    const v3, 0x7f080439

    invoke-direct {v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Lcom/brakefield/infinitestudio/MenuOption;

    const v1, 0x7f1200fd

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    const p1, 0x7f08013e

    invoke-direct {v0, v1, p1, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_0
    new-instance p1, Lcom/brakefield/infinitestudio/MenuOption;

    const v0, 0x7f120b18

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    const p3, 0x7f0804d0

    invoke-direct {p1, v0, p3, v1}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p2
.end method

.method private getProjectOptions(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/brakefield/painter/ui/SimpleUI;",
            "Lcom/brakefield/painter/PainterProjectStore$Project;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/MenuOption;",
            ">;"
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isZipped()Z

    move-result v1

    .line 369
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isRenamable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a47

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const v5, 0x7f080439

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_0
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120127

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const v5, 0x7f080147

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a8b

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0, p3, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    const v5, 0x7f080476

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    .line 402
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isTemplate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f120ae8

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const v4, 0x7f080487

    invoke-direct {v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_1
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f120ae7

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const v4, 0x7f080488

    invoke-direct {v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :goto_0
    iget-object v1, p3, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p3, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/brakefield/painter/PainterLib;->canRestoreProject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f120a54

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda23;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Lcom/brakefield/painter/ui/SimpleUI;)V

    const p2, 0x7f08043d

    invoke-direct {v1, v2, p2, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/brakefield/painter/PainterProjectStore;->canNavigateBack()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 437
    new-instance p2, Lcom/brakefield/infinitestudio/MenuOption;

    const v1, 0x7f120b18

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda24;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const v3, 0x7f0801e2

    invoke-direct {p2, v1, v3, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_3
    new-instance p2, Lcom/brakefield/infinitestudio/MenuOption;

    const v1, 0x7f1200fd

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda25;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const p1, 0x7f08013e

    invoke-direct {p2, v1, p1, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic lambda$createNewProject$17(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    .line 457
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showCreateProjectScreen(Landroid/app/Activity;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    return-void
.end method

.method static synthetic lambda$createNewProject$18(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 468
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopups()V

    return-void
.end method

.method static synthetic lambda$createNewProject$19(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 1

    .line 468
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProjectListener:Ljava/lang/Runnable;

    .line 469
    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getLocation()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    .line 470
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method static synthetic lambda$createNewProject$20(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 2

    .line 462
    iget-object v0, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/FileImporter;->isProjectFileType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 466
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p2}, Lcom/brakefield/painter/FileImporter$ImportUri;->asFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p1

    .line 467
    new-instance p2, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    invoke-direct {p2, p1, v0}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;-><init>(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/Runnable;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, v1, [Ljava/lang/Void;

    .line 471
    invoke-virtual {p2, p0, p1}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/FileImporter;->isImageFileType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iput-boolean v1, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->isCopy:Z

    .line 475
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showCreateProjectScreen(Landroid/app/Activity;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    move-result-object p0

    .line 476
    iget-object p2, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->importImage(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$createNewProject$21(Landroid/view/View;I)V
    .locals 1

    .line 479
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

.method static synthetic lambda$createNewProject$22(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 461
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    new-instance p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda12;

    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda12;-><init>(Landroid/view/View;)V

    invoke-static {p3, p4, v0, p0}, Lcom/brakefield/painter/FileImporter;->processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void
.end method

.method static synthetic lambda$createNewProject$24(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showCreateProjectScreen(Landroid/app/Activity;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    move-result-object p0

    .line 484
    sget-object p1, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;->PATTERN:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->setProjectType(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$ProjectType;)V

    return-void
.end method


# virtual methods
.method public animateFromEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 223
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 247
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public createNewFolder(Landroid/app/Activity;)V
    .locals 3

    const v0, 0x7f1201c3

    .line 492
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)V

    const v2, 0x7f12099b

    invoke-static {p1, v2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public createNewProject(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 5

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f12006c

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    const v4, 0x7f080103

    invoke-direct {v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f120211

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;)V

    const v4, 0x7f08027a

    invoke-direct {v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f1209dd

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda7;

    invoke-direct {v3, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    const p2, 0x7f080324

    invoke-direct {v1, v2, p2, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance p2, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {p2, p1}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual {p2, p1, p3, v0}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 218
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/PainterProjectStore;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$animateFromEditor$1$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Z
    .locals 8

    .line 224
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 226
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->getItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0a045c

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 232
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 234
    :try_start_0
    invoke-virtual {v0}, Lcom/brakefield/painter/PainterProjectStore$Project;->getFullPreviewThumb()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 236
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->getMarginAt(II)F

    move-result p1

    float-to-int v7, p1

    .line 241
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/brakefield/painter/ZoomViewAnimator;->animateFromEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$createNewFolder$25$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Ljava/lang/String;)V
    .locals 1

    .line 493
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->getProjectFolder(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object p1

    .line 494
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->addFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I

    .line 495
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 496
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    return-void
.end method

.method synthetic lambda$createNewProject$23$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->intentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p3, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/ImportOptions;->showOptions(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;Lcom/brakefield/infinitestudio/ImportIntentLaunchers$ResultCallback;)V

    return-void
.end method

.method synthetic lambda$getProjectFolderOptions$2$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p2, p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    .line 334
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    .line 335
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$getProjectFolderOptions$3$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    .locals 2

    .line 332
    iget-object v0, p2, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    const p2, 0x7f12099b

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$getProjectFolderOptions$4$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 344
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/PainterProjectStore;->removeFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I

    .line 345
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 346
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    return-void
.end method

.method synthetic lambda$getProjectFolderOptions$5$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    .locals 6

    .line 0
    const v1, 0x7f120a11

    const v2, 0x7f1200fd

    const v3, 0x7f12009e

    .line 343
    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$getProjectFolderOptions$6$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    .locals 1

    .line 351
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->explodeFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    .line 352
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$10$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/painter/PainterProjectStore$Project;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 3

    .line 386
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pntr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object p1, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/brakefield/painter/PainterLib;->shareProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedDocumentsDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "Projects"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    const-string p3, "application/com.brakefield.painter.pntr"

    invoke-static {p2, v0, p3, p1, v1}, Lcom/brakefield/painter/ExportManager;->saveFileToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ExportManager$Callback;)V

    return-void
.end method

.method synthetic lambda$getProjectOptions$11$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 404
    invoke-virtual {p1, v0}, Lcom/brakefield/painter/PainterProjectStore$Project;->setAsTemplate(Z)V

    .line 405
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$12$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 409
    invoke-virtual {p1, v0}, Lcom/brakefield/painter/PainterProjectStore$Project;->setAsTemplate(Z)V

    .line 410
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$13$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 4

    .line 415
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    iget-object v1, p2, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p2, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;

    invoke-direct {v3, p0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;)V

    .line 431
    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->getView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method synthetic lambda$getProjectOptions$14$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 1

    .line 438
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->moveProjectToParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)V

    .line 439
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$15$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/painter/PainterProjectStore$Project;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 444
    iget-object p2, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object p3, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/brakefield/painter/PainterLib;->deleteProject(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/PainterProjectStore;->removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    .line 446
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 447
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$16$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 6

    .line 0
    const v1, 0x7f120a16

    const v2, 0x7f1209b7

    const v3, 0x7f12009e

    .line 443
    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$getProjectOptions$7$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/String;)V
    .locals 0

    .line 372
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/PainterProjectStore$Project;->rename(Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$8$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 2

    .line 371
    invoke-virtual {p2}, Lcom/brakefield/painter/PainterProjectStore$Project;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const p2, 0x7f12099b

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$getProjectOptions$9$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 3

    .line 378
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->findParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v0

    .line 379
    iget-object v1, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/brakefield/painter/PainterLib;->duplicateProject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->indexOfProject(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    .line 382
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    .line 383
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$setup$0$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V
    .locals 1

    .line 180
    iget p4, p5, Landroid/graphics/PointF;->x:F

    iget p7, p5, Landroid/graphics/PointF;->y:F

    iget v0, p6, Landroid/graphics/PointF;->x:F

    iget p6, p6, Landroid/graphics/PointF;->y:F

    invoke-static {p4, p7, v0, p6}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result p4

    const/high16 p6, 0x42400000    # 48.0f

    .line 181
    invoke-static {p6}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p6

    cmpl-float p4, p4, p6

    if-lez p4, :cond_4

    .line 182
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->optionsPopup:Landroid/widget/PopupWindow;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 183
    :cond_0
    iget p4, p5, Landroid/graphics/PointF;->x:F

    iget p5, p5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p4, p5}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    .line 185
    :cond_1
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 186
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p5

    check-cast p5, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 187
    invoke-static {p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;I)Z

    move-result p6

    if-nez p6, :cond_2

    return-void

    .line 188
    :cond_2
    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p1

    invoke-virtual {p5, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 190
    instance-of p2, p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-eqz p2, :cond_3

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderDragView;

    invoke-direct {p2, p4, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectFolderDragView;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_3
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectDragView;

    invoke-direct {p2, p4, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectDragView;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    .line 192
    :goto_0
    invoke-virtual {p3, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->setTargetDragView(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    const-string p1, "name"

    const-string p3, "project"

    .line 193
    invoke-static {p1, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    new-instance p3, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p3, p4}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 p5, 0x0

    invoke-virtual {p4, p1, p3, p2, p5}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    :cond_4
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/PainterProjectStore;->refreshMainFolder()V

    .line 214
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
    .locals 9

    .line 77
    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->intentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    .line 81
    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

    invoke-direct {v7, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;)V

    .line 82
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$1;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v7, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 91
    new-instance v8, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroid/content/res/Resources;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;)V

    .line 153
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$4;

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;

    invoke-direct {v4, p0, p3, v7}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;)V

    move-object v0, p1

    move-object v2, p3

    move-object v3, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 177
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 179
    new-instance p2, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p3, v7, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;)V

    invoke-direct {p2, p5, v0}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;)V

    invoke-virtual {p4, p2}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V

    .line 197
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->projectCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1, p3, v7, v8}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method

.class public Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "ProjectHistoryViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;,
        Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$CustomTimeMachineViewTransformer;,
        Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;
    }
.end annotation


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

.field private final context:Landroid/content/Context;

.field private currentVersion:Ljava/lang/String;

.field private lastVersion:Ljava/lang/String;

.field private final listener:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;

.field private final observePosition:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private projectDirectory:Ljava/lang/String;

.field private projectName:Ljava/lang/String;

.field private projectPath:Ljava/lang/String;

.field private final versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$X8G6MbqO10wp8Ddn6bjtCGiYxk8(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->updateButtons(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    .line 235
    new-instance v0, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->observePosition:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 54
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectDirectory:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;

    .line 58
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectPath:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->refresh()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Lcom/brakefield/infinitestudio/ui/components/Observe;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->observePosition:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->currentVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectDirectory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->lastVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    return-object p0
.end method

.method private deleteProjectVersion(I)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->currentVersion:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->lastVersion:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->deleteProjectLastSave(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectPath:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/brakefield/painter/PainterLib;->deleteProjectVersion(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;

    invoke-interface {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;->callDismiss()V

    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->refresh()V

    :goto_2
    return-void
.end method

.method private restoreProjectVersion(I)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectDirectory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->duplicateProject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectName:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectPath:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->currentVersion:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->lastVersion:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->restoreProjectLastSave(Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectDirectory:Ljava/lang/String;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectName:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/brakefield/painter/PainterLib;->restoreProjectVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;->onProjectRestore(Ljava/lang/String;)V

    return-void
.end method

.method private updateButtons(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->currentVersion:Ljava/lang/String;

    if-ne p1, v0, :cond_1

    .line 225
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->deleteButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setInvisible(Landroid/view/View;)V

    .line 226
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->restoreButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setInvisible(Landroid/view/View;)V

    .line 227
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->cancelButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->cancelButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setInvisible(Landroid/view/View;)V

    .line 230
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->deleteButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    .line 231
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->restoreButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper;->setupBlurView(Landroid/view/Window;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;)V

    .line 80
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$CustomTimeMachineViewTransformer;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$CustomTimeMachineViewTransformer;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformer(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    .line 81
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setOnScrollListener(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    .line 90
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->restoreButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->cancelButton:Landroid/widget/Button;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-ProjectHistoryViewController(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getCurrentPosition()I

    move-result p1

    .line 92
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->scrollToPosition(I)V

    .line 93
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->restoreProjectVersion(I)V

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-ProjectHistoryViewController(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->deleteProjectVersion(I)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-ProjectHistoryViewController(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7

    .line 96
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getCurrentPosition()I

    move-result p2

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->scrollToPosition(I)V

    const v2, 0x7f120a12

    const v3, 0x7f1200fd

    const v4, 0x7f12009e

    .line 98
    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;I)V

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-ProjectHistoryViewController(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;

    invoke-interface {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;->callDismiss()V

    return-void
.end method

.method refresh()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getProjectVersions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectName:Ljava/lang/String;

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->currentVersion:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->projectPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->hasProjectLastSave(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Last Save"

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->lastVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->lastVersion:Ljava/lang/String;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->lastVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->currentVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->versions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 72
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->binding:Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ProjectHistoryViewControllerBinding;->carouselView:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

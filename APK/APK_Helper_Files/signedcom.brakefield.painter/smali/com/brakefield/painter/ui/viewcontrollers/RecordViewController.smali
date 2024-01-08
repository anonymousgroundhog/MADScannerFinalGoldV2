.class public Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "RecordViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private getDistanceTraveled(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .line 82
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getProjectStatsDistanceTraveled()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatScreenDistance(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNumberOfUndos()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getProjectStatsUndoTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStrokesDrawn()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lorg/ejml/dense/block/decomposition/hessenberg/Ia/xeDaWsHfrd;->RKFhLzWxfYLEkX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getProjectStatsStrokesDrawn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimelapseDuration()Ljava/lang/String;
    .locals 2

    .line 66
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTimelapseEstimatedDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimelapseFileSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 70
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTimelapseEstimatedFileSize()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTrackedTime()Ljava/lang/String;
    .locals 4

    .line 78
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getProjectStatsTrackedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupTimelapseSection$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setRecordingPlayback(Z)V

    return-void
.end method

.method static synthetic lambda$setupTimelapseSection$1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 45
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$setupTimelapseSection$2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 54
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setPlaybackShowUserNavigation(Z)V

    return-void
.end method

.method private setupProjectStatsSection(Landroid/content/res/Resources;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->projectStatsStrokesDrawn:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->getStrokesDrawn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setValue(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->projectStatsTrackedTime:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->getTrackedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setValue(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->projectStatsDistanceTraveled:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->getDistanceTraveled(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setValue(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->projectStatsUndoCount:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->getNumberOfUndos()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setupTimelapseSection(Landroid/app/Activity;Lcom/brakefield/painter/PlaybackManager;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->timelapseDuration:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->getTimelapseDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setValue(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->timelapseFilesize:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->getTimelapseFileSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setValue(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->timelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController$$ExternalSyntheticLambda0;-><init>()V

    .line 41
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isRecordingPlayback()Z

    move-result v2

    .line 38
    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 44
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->playbackViewButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->playbackViewButton:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/brakefield/painter/PlaybackManager;->getVideoList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 49
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->playbackViewButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 52
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->showNavigationToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController$$ExternalSyntheticLambda2;-><init>()V

    .line 55
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackShowUserNavigation()Z

    move-result v0

    .line 52
    invoke-static {p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/PlaybackManager;)Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->setupTimelapseSection(Landroid/app/Activity;Lcom/brakefield/painter/PlaybackManager;)V

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->setupProjectStatsSection(Landroid/content/res/Resources;)V

    .line 29
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/RecordViewController;->binding:Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

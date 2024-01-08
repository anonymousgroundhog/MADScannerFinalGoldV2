.class public Lcom/brakefield/painter/activities/ActivityPlayback;
.super Lcom/brakefield/infinitestudio/activities/MasterActivity;
.source "ActivityPlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;,
        Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;,
        Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;,
        Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;
    }
.end annotation


# instance fields
.field adapter:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

.field private binding:Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

.field currentSegment:I

.field mediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field playbackManager:Lcom/brakefield/painter/PlaybackManager;

.field playbackSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

.field player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

.field segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    .line 55
    new-instance v0, Lcom/brakefield/painter/PlaybackManager;

    invoke-direct {v0}, Lcom/brakefield/painter/PlaybackManager;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->mediaItems:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;Ljava/util/List;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->adapter:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    .line 64
    new-instance v0, Lcom/brakefield/painter/ui/QuickHelp;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/QuickHelp;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/activities/ActivityPlayback;)Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->binding:Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

    return-object p0
.end method

.method private createPlayback(I)V
    .locals 8

    .line 202
    new-instance v7, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;

    iget-object v3, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    iget-object v4, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->binding:Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

    iget-object v6, v0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;Landroid/app/Activity;Lcom/brakefield/painter/PlaybackManager;Ljava/util/List;ILandroid/view/View;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v7, p1, v0}, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 6

    .line 74
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityPlayback;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->binding:Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

    .line 76
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    invoke-virtual {v0}, Lcom/brakefield/painter/PlaybackManager;->getVideoList()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    new-instance v2, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    invoke-direct {v2, v1}, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;-><init>(Ljava/lang/String;)V

    .line 79
    iget-boolean v1, v2, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->corrupted:Z

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->duration:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Ljava/io/File;

    iget-object v2, v2, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->mediaItems:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->mediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 89
    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1208d4

    .line 90
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/activities/ActivityPlayback;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0663

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 91
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    const v1, 0x7f0801a3

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    new-instance v1, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 114
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1208ce

    .line 115
    invoke-virtual {p0, v3}, Lcom/brakefield/painter/activities/ActivityPlayback;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 116
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    const v2, 0x7f08013e

    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 125
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityPlayback;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 126
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    invoke-virtual {p0, v1, v4}, Lcom/brakefield/painter/activities/ActivityPlayback;->addTitleBarContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {p0, v0, v4}, Lcom/brakefield/painter/activities/ActivityPlayback;->addTitleBarContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    .line 133
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->mediaItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMax(I)V

    .line 134
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityPlayback;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$1;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$1;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityPlayback;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x51

    const/4 v5, -0x1

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;Ljava/util/List;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [[I

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->quickHelp:Lcom/brakefield/painter/ui/QuickHelp;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->showQuickHelp()Z

    move-result v1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->visualizeQuickHelpCoverage()Z

    move-result v2

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/brakefield/painter/ui/QuickHelp;->setup(Landroid/view/ViewGroup;Lcom/brakefield/painter/app/PainterApp;ZZ)V

    return-void
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1209f5

    .line 68
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$bindMainContent$0$com-brakefield-painter-activities-ActivityPlayback()V
    .locals 1

    .line 0
    const/16 v0, 0xf

    .line 101
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->createPlayback(I)V

    return-void
.end method

.method synthetic lambda$bindMainContent$1$com-brakefield-painter-activities-ActivityPlayback()V
    .locals 1

    .line 0
    const/16 v0, 0x1e

    .line 102
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->createPlayback(I)V

    return-void
.end method

.method synthetic lambda$bindMainContent$10$com-brakefield-painter-activities-ActivityPlayback(Landroid/view/View;)V
    .locals 6

    .line 0
    const v1, 0x7f120a15

    const v2, 0x7f1200fd

    const v3, 0x7f12009e

    .line 118
    new-instance v4, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$bindMainContent$2$com-brakefield-painter-activities-ActivityPlayback()V
    .locals 1

    .line 0
    const/16 v0, 0x3c

    .line 103
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->createPlayback(I)V

    return-void
.end method

.method synthetic lambda$bindMainContent$3$com-brakefield-painter-activities-ActivityPlayback()V
    .locals 1

    .line 0
    const/16 v0, 0x78

    .line 104
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->createPlayback(I)V

    return-void
.end method

.method synthetic lambda$bindMainContent$4$com-brakefield-painter-activities-ActivityPlayback()V
    .locals 1

    .line 0
    const/16 v0, 0xb4

    .line 105
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->createPlayback(I)V

    return-void
.end method

.method synthetic lambda$bindMainContent$5$com-brakefield-painter-activities-ActivityPlayback()V
    .locals 1

    .line 0
    const/16 v0, 0x12c

    .line 106
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->createPlayback(I)V

    return-void
.end method

.method synthetic lambda$bindMainContent$6$com-brakefield-painter-activities-ActivityPlayback()V
    .locals 1

    .line 0
    const/16 v0, 0x258

    .line 107
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->createPlayback(I)V

    return-void
.end method

.method synthetic lambda$bindMainContent$7$com-brakefield-painter-activities-ActivityPlayback()V
    .locals 1

    .line 0
    const/4 v0, -0x1

    .line 108
    invoke-direct {p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->createPlayback(I)V

    return-void
.end method

.method synthetic lambda$bindMainContent$8$com-brakefield-painter-activities-ActivityPlayback(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 5

    .line 95
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    .line 97
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v0, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const-string v3, "15s"

    invoke-direct {v1, v3, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const-string v3, "30s"

    invoke-direct {v1, v3, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_2

    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const-string v3, "60s"

    invoke-direct {v1, v3, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x78

    if-le v1, v2, :cond_3

    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const-string v3, "120s"

    invoke-direct {v1, v3, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xb4

    if-le v1, v2, :cond_4

    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const-string v3, "180s"

    invoke-direct {v1, v3, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_5

    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const-string v3, "300s"

    invoke-direct {v1, v3, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x258

    if-le v1, v2, :cond_6

    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    new-instance v3, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    const-string v4, "600s"

    invoke-direct {v1, v4, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_7

    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f1209c5

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_7
    invoke-virtual {v0, p0, p1, p2}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    return-void
.end method

.method synthetic lambda$bindMainContent$9$com-brakefield-painter-activities-ActivityPlayback(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    .line 120
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    invoke-virtual {p1}, Lcom/brakefield/painter/PlaybackManager;->deletePlayback()V

    .line 121
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityPlayback;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 197
    invoke-super {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->onPause()V

    return-void
.end method

.method protected onStart()V
    .locals 7

    .line 159
    invoke-super {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->onStart()V

    .line 161
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 164
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 167
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedVideoConstraintsIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedRendererCapabilitiesIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    const-string/jumbo v3, "video/avc"

    const-string/jumbo v4, "video/3gpp"

    const-string/jumbo v5, "video/av01"

    const-string/jumbo v6, "video/hevc"

    .line 169
    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 173
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->mediaItems:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItems(Ljava/util/List;Z)V

    .line 174
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityPlayback$2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityPlayback$2;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 181
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 182
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 183
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->play()V

    .line 185
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->binding:Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->videoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->onStop()V

    .line 192
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.class public Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "ChallengesViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;,
        Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;,
        Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;,
        Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$DownloadChallengeTask;,
        Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengesSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItemViewHolder;
    }
.end annotation


# static fields
.field private static final CHALLENGE_TYPE_CUTOUT:I = 0x4

.field private static final CHALLENGE_TYPE_INKTOBER:I = 0x1

.field private static final CHALLENGE_TYPE_MIRROR:I = 0x5

.field private static final CHALLENGE_TYPE_MONTHLY:I = -0x1

.field private static final CHALLENGE_TYPE_NONE:I = 0x0

.field private static final CHALLENGE_TYPE_SERIES:I = -0x2

.field private static final CHALLENGE_TYPE_SQUINT:I = 0x6

.field private static final CHALLENGE_TYPE_THUMBNAIL:I = 0x3

.field private static final CHALLENGE_TYPE_VANISHING_TRACE:I = 0x2


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

.field private final challenges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final challengesCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;

.field private res:Landroid/content/res/Resources;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 67
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->challengesCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->challenges:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->challenges:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getTitleForChallenge(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getLimitationForChallenge(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getChallengePreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getChallengeTypeFromString(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->isMonthlyChallenge(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->isChallengeSeries(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z

    move-result p0

    return p0
.end method

.method private static getChallengePreview(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 511
    invoke-static {p0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengePreviewURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getChallengeTypeFromString(Ljava/lang/String;)I
    .locals 1

    const-string v0, "VANISHING_TRACE"

    .line 524
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "THUMBNAIL"

    .line 526
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string v0, "CUTOUT"

    .line 528
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v0, "MIRROR"

    .line 530
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const-string v0, "SQUINT"

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private getDescriptionForChallenge(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "Learn the power of squinting to reduce details and to bring out tonal shapes."

    return-object p1

    :pswitch_1
    const-string p1, "Learn about proportions, balance, and symmetry."

    return-object p1

    :pswitch_2
    const-string p1, "Learn about accurate color and texture matching."

    return-object p1

    :pswitch_3
    const-string p1, "Strengthen your composition by focusing on the whole image instead of the details."

    return-object p1

    :pswitch_4
    const-string p1, "Learn to capture what\u2019s important by marking important features and creating guides from an image."

    return-object p1

    :pswitch_5
    const-string p1, "It\'s all about pushing forward. You are given a drawing prompt with no eraser or undos."

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLimitationForChallenge(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    return-object p0

    :pswitch_1
    const-string p0, "Draw an image as it comes into focus"

    return-object p0

    :pswitch_2
    const-string p0, "Create the missing side of a mirrored image"

    return-object p0

    :pswitch_3
    const-string p0, "Fill in the missing pieces of an image"

    return-object p0

    :pswitch_4
    const-string p0, "Capture a scene without zooming in"

    return-object p0

    :pswitch_5
    const/4 p0, 0x0

    sget-object p0, Landroidx/core/database/hzA/JUetN;->GxcJmQxKf:Ljava/lang/String;

    return-object p0

    :pswitch_6
    const-string p0, "Just happy accidents - Bob Ross"

    return-object p0

    :pswitch_7
    const-string p0, "Daily Grind"

    return-object p0

    :pswitch_8
    const-string p0, "Texture Studies"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getTitleForChallenge(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    return-object p0

    :pswitch_1
    const-string p0, "Squint"

    return-object p0

    :pswitch_2
    const-string p0, "Mirror, Mirror"

    return-object p0

    :pswitch_3
    const-string p0, "Missing Pieces"

    return-object p0

    :pswitch_4
    const-string p0, "Big Picture"

    return-object p0

    :pswitch_5
    const/4 p0, 0x0

    sget-object p0, Lkotlin/sequences/xWeI/kyamZJaSaxi;->hff:Ljava/lang/String;

    return-object p0

    :pswitch_6
    const-string p0, "Inktober"

    return-object p0

    :pswitch_7
    const-string p0, "Let\'s Draw - Hands"

    return-object p0

    :pswitch_8
    const-string p0, "321 Textures"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static isChallengeSeries(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z
    .locals 1

    .line 519
    iget p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMonthlyChallenge(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z
    .locals 3

    .line 515
    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method static synthetic lambda$setupTitleBar$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->back(Landroid/app/Activity;)Z

    return-void
.end method

.method private loadCards()V
    .locals 5

    .line 119
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->challenges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->challengesCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->challenges:Ljava/util/List;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->res:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Ljava/util/List;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private populateObstaclesForChallenge(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;",
            ">;)V"
        }
    .end annotation

    .line 598
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;

    const v0, 0x7f0801aa

    const-string v1, "Cannot pick colors from source image"

    invoke-direct {p1, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    :cond_1
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;

    const v0, 0x7f08044f

    const-string v1, "Cannot zoom in"

    invoke-direct {p1, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    :cond_2
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;

    const v0, 0x7f080090

    const-string v1, "No eraser"

    invoke-direct {p1, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;

    const v0, 0x7f0804cf

    const-string v1, "No undos"

    invoke-direct {p1, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem$Obstacle;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private setupTitleBar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;->back:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;->back:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 112
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;->back:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 114
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;->titleBar:Landroid/view/View;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getScreenBackgroundColor()I

    move-result p2

    const v0, 0x3f666666    # 0.9f

    invoke-static {p2, v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopFadeGradient(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method downloadAndOpenChallenge(Ljava/lang/String;)V
    .locals 3

    .line 368
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeProjectsDirectory()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 374
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 382
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pntr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 385
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;

    invoke-interface {p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;->onOpenChallenge(Ljava/lang/String;)V

    return-void

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/brakefield/painter/SharedMessageHandler;->showProgress()V

    .line 391
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$DownloadChallengeTask;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;Ljava/lang/String;)V

    invoke-direct {v1, v0, p1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$DownloadChallengeTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 397
    invoke-virtual {v1, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$DownloadChallengeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;)Landroid/view/View;
    .locals 1

    .line 76
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 77
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {p3}, Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    move-result-object p3

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->res:Landroid/content/res/Resources;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->setupTitleBar(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 83
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->loadCards()V

    .line 85
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->challengesCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;Landroid/app/Activity;)V

    invoke-virtual {p2, p3, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 100
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->update()V

    .line 102
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->binding:Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/ChallengesViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    .line 103
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getScreenBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method

.method synthetic lambda$downloadAndOpenChallenge$2$com-brakefield-painter-ui-viewcontrollers-ChallengesViewController(Ljava/lang/String;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->listener:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".pntr"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;->onOpenChallenge(Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->getSharedMessageHandler()Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    return-void
.end method

.method synthetic lambda$openChallengeInfo$1$com-brakefield-painter-ui-viewcontrollers-ChallengesViewController(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)V
    .locals 0

    .line 360
    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->challengeId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->downloadAndOpenChallenge(Ljava/lang/String;)V

    return-void
.end method

.method openChallengeInfo(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)V
    .locals 3

    .line 346
    iget v0, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getTitleForChallenge(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->name:Ljava/lang/String;

    .line 347
    iget v0, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getLimitationForChallenge(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->shortDescription:Ljava/lang/String;

    .line 348
    iget v0, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getDescriptionForChallenge(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->purpose:Ljava/lang/String;

    .line 350
    iget v0, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    iget-object v1, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->obstacles:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->populateObstaclesForChallenge(ILjava/util/List;)V

    .line 352
    iget v0, p2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;-><init>()V

    .line 359
    new-instance v1, Lcom/brakefield/painter/ui/ChallengeInfoDialog;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)V

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/brakefield/painter/ui/ChallengeInfoDialog;-><init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;Lcom/brakefield/painter/ui/viewcontrollers/ChallengeInfoViewController;Ljava/lang/Runnable;)V

    .line 362
    invoke-virtual {v1}, Lcom/brakefield/painter/ui/ChallengeInfoDialog;->show()V

    :goto_0
    return-void
.end method

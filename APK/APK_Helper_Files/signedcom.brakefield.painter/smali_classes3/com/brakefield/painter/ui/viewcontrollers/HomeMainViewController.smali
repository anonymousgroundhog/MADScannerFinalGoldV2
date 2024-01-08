.class public Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;
.super Ljava/lang/Object;
.source "HomeMainViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$BlankProjectOption;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$PatternProjectOption;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectItemViewHolder;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$CreateProjectOption;
    }
.end annotation


# instance fields
.field private final collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final createProjectOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

.field private optionsPopup:Landroid/widget/PopupWindow;

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final projectAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

.field private final recentProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->createProjectOptions:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/brakefield/painter/ZoomViewAnimator;

    invoke-direct {v0}, Lcom/brakefield/painter/ZoomViewAnimator;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->projectAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->recentProjects:Ljava/util/List;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->optionsPopup:Landroid/widget/PopupWindow;

    .line 70
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->createProjectOptions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Lcom/brakefield/infinitestudio/ImportIntentLaunchers;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->recentProjects:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->getProjectOptions(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/PainterProjectStore$Project;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Landroid/widget/PopupWindow;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->optionsPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$402(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->optionsPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)Lcom/brakefield/painter/ZoomViewAnimator;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->projectAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

    return-object p0
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

    .line 192
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isZipped()Z

    move-result v0

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-virtual {p3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isRenamable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a47

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const v5, 0x7f080439

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120127

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const v5, 0x7f080147

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a8b

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p3, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/PainterProjectStore$Project;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    const v5, 0x7f080476

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p3, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p3, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/brakefield/painter/PainterLib;->canRestoreProject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f120a54

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Lcom/brakefield/painter/ui/SimpleUI;)V

    const p2, 0x7f08043d

    invoke-direct {v0, v2, p2, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_1
    new-instance p2, Lcom/brakefield/infinitestudio/MenuOption;

    const v0, 0x7f1200fd

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const p1, 0x7f08013e

    invoke-direct {p2, v0, p1, v2}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private loadCreateProjectOptions()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->createProjectOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->createProjectOptions:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$BlankProjectOption;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$BlankProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->createProjectOptions:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ImageProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->createProjectOptions:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$PatternProjectOption;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$PatternProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->hasProjectChallenges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->createProjectOptions:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ChallengesProjectOption;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public animateFromEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 163
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 187
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method synthetic lambda$animateFromEditor$1$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Z
    .locals 8

    .line 164
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 166
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->getItemView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0a045c

    .line 170
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 172
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 174
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

    .line 176
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->getMarginAt(II)F

    move-result p1

    float-to-int v7, p1

    .line 181
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->projectAnimator:Lcom/brakefield/painter/ZoomViewAnimator;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/brakefield/painter/ZoomViewAnimator;->animateFromEditor(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$getProjectOptions$2$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/PainterProjectStore$Project;->rename(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$3$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 2

    .line 197
    invoke-virtual {p2}, Lcom/brakefield/painter/PainterProjectStore$Project;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const p2, 0x7f12099b

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$getProjectOptions$4$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 3

    .line 204
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->findParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v0

    .line 205
    iget-object v1, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/brakefield/painter/PainterLib;->duplicateProject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->indexOfProject(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->recentProjects:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 210
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$5$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Lcom/brakefield/painter/PainterProjectStore$Project;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 3

    .line 213
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

    .line 214
    iget-object v1, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object p1, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/brakefield/painter/PainterLib;->shareProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 215
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

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    const-string p3, "application/com.brakefield.painter.pntr"

    invoke-static {p2, v0, p3, p1, v1}, Lcom/brakefield/painter/ExportManager;->saveFileToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ExportManager$Callback;)V

    return-void
.end method

.method synthetic lambda$getProjectOptions$6$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 3

    .line 230
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    iget-object v1, p2, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object p2, p2, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;

    invoke-direct {v2, p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$OnProjectHistoryListener;)V

    .line 246
    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->getView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method synthetic lambda$getProjectOptions$7$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Lcom/brakefield/painter/PainterProjectStore$Project;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 252
    iget-object p2, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object p3, p1, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/brakefield/painter/PainterLib;->deleteProject(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->recentProjects:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/PainterProjectStore;->removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    .line 255
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 256
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    return-void
.end method

.method synthetic lambda$getProjectOptions$8$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Landroid/app/Activity;Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 6

    .line 0
    const v1, 0x7f120a16

    const v2, 0x7f1200fd

    const v3, 0x7f12009e

    .line 251
    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$setup$0$com-brakefield-painter-ui-viewcontrollers-HomeMainViewController(Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V
    .locals 0

    .line 84
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p4, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-static {p1, p2, p4, p3}, Lcom/brakefield/infinitestudio/geometry/Line;->dist(FFFF)F

    move-result p1

    const/high16 p2, 0x42400000    # 48.0f

    .line 85
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->optionsPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->recentProjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/PainterProjectStore;->getAllProject()Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 155
    check-cast v1, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 156
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->recentProjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
    .locals 7

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipChildren(Z)V

    .line 77
    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->importIntentLaunchers:Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->res:Landroid/content/res/Resources;

    .line 81
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->loadCreateProjectOptions()V

    .line 83
    new-instance p5, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->res:Landroid/content/res/Resources;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;)V

    invoke-direct {p5, v0, v1}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;)V

    invoke-virtual {p4, p5}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V

    .line 92
    iget-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->collectionController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/gestures/GestureLayout;)V

    invoke-virtual {p5, p3, v6}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 148
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;->refresh()V

    return-void
.end method

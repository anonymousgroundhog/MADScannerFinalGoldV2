.class public Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;
.super Ljava/lang/Object;
.source "HomeDiscoverViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$GetDiscoverItemsTask;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoversSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverItemViewHolder;,
        Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;
    }
.end annotation


# static fields
.field private static final DEBUG_STAGED:Z


# instance fields
.field private final discoverCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;",
            ">;"
        }
    .end annotation
.end field

.field private final discoverCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->discoverCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->discoverCards:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->discoverCards:Ljava/util/List;

    return-object p0
.end method

.method private loadCards()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->discoverCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->res:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$GetDiscoverItemsTask;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->discoverCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->discoverCards:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$GetDiscoverItemsTask;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Ljava/util/List;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$GetDiscoverItemsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public setup(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->res:Landroid/content/res/Resources;

    .line 61
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->loadCards()V

    .line 63
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->discoverCollection:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;Landroid/app/Activity;)V

    invoke-virtual {v0, p2, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method

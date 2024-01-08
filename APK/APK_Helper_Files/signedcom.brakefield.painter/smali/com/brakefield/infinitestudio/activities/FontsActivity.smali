.class public Lcom/brakefield/infinitestudio/activities/FontsActivity;
.super Lcom/brakefield/infinitestudio/activities/CollectionActivity;
.source "FontsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/FontsActivity$FontsSection;,
        Lcom/brakefield/infinitestudio/activities/FontsActivity$FontViewHolder;,
        Lcom/brakefield/infinitestudio/activities/FontsActivity$OnFontSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/activities/CollectionActivity<",
        "Lcom/brakefield/infinitestudio/FontFamily;",
        ">;"
    }
.end annotation


# static fields
.field static fontDownloader:Lcom/brakefield/infinitestudio/Tasks;

.field public static listener:Lcom/brakefield/infinitestudio/activities/FontsActivity$OnFontSelectedListener;


# instance fields
.field final favoriteFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field final googleFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/FontFamily;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/brakefield/infinitestudio/Tasks;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/Tasks;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/FontsActivity;->fontDownloader:Lcom/brakefield/infinitestudio/Tasks;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity;->favoriteFonts:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity;->googleFonts:Ljava/util/List;

    return-void
.end method

.method private addImportButton()V
    .locals 0

    return-void
.end method

.method private loadGoogleFonts()V
    .locals 3

    .line 58
    new-instance v0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI;-><init>()V

    new-instance v1, Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/activities/FontsActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI;->fetch(Lcom/brakefield/infinitestudio/apis/API$ItemHandler;[Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;)Lcom/brakefield/infinitestudio/apis/API$FetchTask;

    move-result-object v0

    new-instance v1, Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/activities/FontsActivity;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/apis/API$FetchTask;->then(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->bindMainContent(Landroid/view/ViewGroup;)V

    .line 54
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity;->loadGoogleFonts()V

    return-void
.end method

.method protected getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/FontFamily;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;-><init>(Lcom/brakefield/infinitestudio/activities/FontsActivity;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    const-string v0, "Fonts"

    return-object v0
.end method

.method synthetic lambda$loadGoogleFonts$0$com-brakefield-infinitestudio-activities-FontsActivity()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity;->getCollectionAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity;->googleFonts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method synthetic lambda$loadGoogleFonts$1$com-brakefield-infinitestudio-activities-FontsActivity(Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity;->googleFonts:Ljava/util/List;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->toFontFamily()Lcom/brakefield/infinitestudio/FontFamily;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance p1, Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/FontsActivity;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/FontsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$loadGoogleFonts$2$com-brakefield-infinitestudio-activities-FontsActivity()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity;->refreshCollection()V

    return-void
.end method

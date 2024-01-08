.class public Lcom/brakefield/infinitestudio/activities/PatternsActivity;
.super Lcom/brakefield/infinitestudio/activities/CollectionActivity;
.source "PatternsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;,
        Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;,
        Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;,
        Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemsSection;,
        Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemViewHolder;,
        Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/activities/CollectionActivity<",
        "Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;",
        ">;"
    }
.end annotation


# static fields
.field public static listener:Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;

.field public static session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;


# instance fields
.field private final patternItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->patternItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/activities/PatternsActivity;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->patternItems:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method addImportButton()V
    .locals 0

    return-void
.end method

.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->bindMainContent(Landroid/view/ViewGroup;)V

    .line 77
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->addImportButton()V

    .line 78
    invoke-static {p0}, Lcom/brakefield/infinitestudio/utils/NetworkUtils;->checkNetworkOrNotifyUser(Landroid/content/Context;)V

    return-void
.end method

.method protected getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;-><init>(Lcom/brakefield/infinitestudio/activities/PatternsActivity;)V

    return-object v0
.end method

.method public getPatternsFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "loves"

    const-string v1, "id"

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 304
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 306
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 307
    new-instance v6, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    invoke-direct {v6, p0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;-><init>(Lcom/brakefield/infinitestudio/activities/PatternsActivity;)V

    .line 309
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->setId(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v7, "tbUrl"

    .line 312
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->setThumbUrl(Ljava/lang/String;)V

    const-string/jumbo v7, "url"

    .line 313
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->setImageUrl(Ljava/lang/String;)V

    const-string/jumbo v7, "source"

    .line 314
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->setArtist(Ljava/lang/String;)V

    const-string v7, "name"

    .line 315
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->name:Ljava/lang/String;

    .line 316
    sget-object v7, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->artist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    iput-boolean v7, v6, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->owned:Z

    .line 317
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 318
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v7, v3

    .line 319
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 320
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "user"

    .line 321
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    invoke-virtual {v6, v8}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->addLove(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 325
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .line 71
    sget v0, Lcom/brakefield/infinitestudio/R$string;->pattern:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

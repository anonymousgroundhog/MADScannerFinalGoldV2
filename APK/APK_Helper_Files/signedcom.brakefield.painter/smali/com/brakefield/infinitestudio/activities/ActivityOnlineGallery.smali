.class public Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;
.super Lcom/brakefield/infinitestudio/activities/MasterActivity;
.source "ActivityOnlineGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$LoadImageTask;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$UploadsGalleryFragment;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PopularGalleryFragment;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$MyUploadsGalleryFragment;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$SimpleViewHolder;,
        Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$ReportedGalleryFragment;
    }
.end annotation


# static fields
.field private static fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/TabFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

.field protected static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static myUploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;",
            ">;"
        }
    .end annotation
.end field

.field private static pageAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

.field private static popular:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;",
            ">;"
        }
    .end annotation
.end field

.field private static prevUser:Ljava/lang/String;

.field private static reportedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;",
            ">;"
        }
    .end annotation
.end field

.field public static session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

.field private static trending:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;",
            ">;"
        }
    .end annotation
.end field

.field private static uploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;",
            ">;"
        }
    .end annotation
.end field

.field private static userUploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->popular:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->trending:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->uploads:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->myUploads:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->userUploads:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->reportedImages:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/MasterActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 85
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->popular:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 85
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->trending:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .line 85
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->uploads:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;
    .locals 1

    .line 85
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .line 85
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->reportedImages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .line 85
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->myUploads:Ljava/util/List;

    return-object v0
.end method

.method private static dismiss(Landroid/app/Activity;)V
    .locals 1

    .line 935
    sget v0, Lcom/brakefield/infinitestudio/R$id;->image_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    .line 936
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static getAppName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .line 527
    sget v0, Lcom/brakefield/infinitestudio/R$string;->app_query_name:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImagesFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 11
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

    const-string v0, "lovesImage"

    const-string v1, "numberOfLoves"

    const-string v2, "id"

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 361
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 363
    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 364
    new-instance v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-direct {v7}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;-><init>()V

    .line 366
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 367
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setId(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v8, "tbUrl"

    .line 369
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setThumbUrl(Ljava/lang/String;)V

    const-string/jumbo v8, "url"

    .line 370
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setImageUrl(Ljava/lang/String;)V

    const-string/jumbo v8, "source"

    .line 371
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setArtist(Ljava/lang/String;)V

    const-string/jumbo v8, "user_id"

    .line 372
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setUserId(Ljava/lang/String;)V

    const-string v8, "app"

    .line 373
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->setApp(Ljava/lang/String;)V

    .line 374
    sget-object v8, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    sget-object v8, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v8}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserId()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->userId:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    iput-boolean v8, v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->owned:Z

    .line 375
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 376
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->numOfLoves:I

    .line 377
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    .line 378
    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    iput-boolean v6, v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->loved:Z

    .line 379
    iget-boolean v6, v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->loved:Z

    if-eqz v6, :cond_3

    .line 380
    iget v6, v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->numOfLoves:I

    sub-int/2addr v6, v9

    iput v6, v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->numOfLoves:I

    .line 383
    :cond_3
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v3

    :catch_0
    move-exception p0

    .line 387
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isUserLoggedIn()Z
    .locals 1

    .line 926
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$bindMainContent$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 132
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;

    .line 133
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method static synthetic lambda$showImage$1(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 654
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->isUserLoggedIn()Z

    move-result p3

    if-nez p3, :cond_0

    .line 656
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "REGISTER_NEW_USER_KEY"

    const/4 p3, 0x1

    .line 657
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 662
    :cond_0
    new-instance p0, Lcom/brakefield/infinitestudio/account/UserFunctions$LoveArtwork;

    sget-object p3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->id:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/brakefield/infinitestudio/account/UserFunctions$LoveArtwork;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    .line 664
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->toggleLove()Z

    .line 665
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->userLovesImage()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, -0xae89

    .line 666
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 667
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 668
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->getNumberOfLoves()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$showImage$10(Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 840
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserFunctions$UnreportArtwork;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->id:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/account/UserFunctions$UnreportArtwork;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    .line 842
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->reportedImages:Ljava/util/List;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 843
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->list:Ljava/util/List;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 844
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;->notifyDataSetChanged()V

    .line 845
    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->dismiss(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic lambda$showImage$11(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 850
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteArtwork;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->id:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteArtwork;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    .line 852
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->delete()V

    .line 854
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->uploads:Ljava/util/List;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 855
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->myUploads:Ljava/util/List;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 856
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->popular:Ljava/util/List;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 857
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->trending:Ljava/util/List;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 858
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->userUploads:Ljava/util/List;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 859
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->reportedImages:Ljava/util/List;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 861
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->refreshFragments()V

    .line 862
    invoke-static {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->dismiss(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic lambda$showImage$12(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 867
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteUser;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->userId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeleteUser;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    .line 869
    invoke-static {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->setupAdapter(Landroidx/fragment/app/FragmentActivity;)V

    .line 870
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->refreshFragments()V

    .line 871
    invoke-static {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->dismiss(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic lambda$showImage$13(Landroidx/fragment/app/FragmentActivity;Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;Landroid/view/View;)V
    .locals 5

    .line 752
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    new-instance v0, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 756
    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-boolean v1, v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->owned:Z

    if-eqz v1, :cond_0

    .line 757
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    sget v2, Lcom/brakefield/infinitestudio/R$string;->delete:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->delete:I

    new-instance v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 780
    :cond_0
    new-instance v1, Lcom/brakefield/infinitestudio/MenuOption;

    sget v2, Lcom/brakefield/infinitestudio/R$string;->report_abuse:I

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->error:I

    new-instance v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda4;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    :goto_0
    invoke-virtual {v0, p0, p2, p1}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic lambda$showImage$14(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 893
    sget v0, Lcom/brakefield/infinitestudio/R$id;->user_uploads_container:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 894
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 896
    :cond_0
    check-cast p2, Lcom/brakefield/infinitestudio/ui/PreviewView;

    .line 898
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/PreviewView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 899
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 904
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 905
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/PreviewView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 906
    iget v4, p2, Lcom/brakefield/infinitestudio/ui/PreviewView;->prevX:F

    aput v4, v3, v0

    iget p2, p2, Lcom/brakefield/infinitestudio/ui/PreviewView;->prevY:F

    const/4 v4, 0x1

    aput p2, v3, v4

    .line 907
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p2, v3, v0

    float-to-int p2, p2

    aget v2, v3, v4

    float-to-int v2, v2

    if-ltz p2, :cond_1

    .line 911
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge p2, v3, :cond_1

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 912
    invoke-virtual {p0, p2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    .line 913
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    .line 916
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$showImage$15(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$showImage$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$showImage$3(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;)V
    .locals 1

    .line 682
    sget p1, Lcom/brakefield/infinitestudio/R$id;->user_uploads_container:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 683
    sget v0, Lcom/brakefield/infinitestudio/R$anim;->from_bottom:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 684
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p0, 0x0

    .line 685
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$showImage$4(Landroidx/fragment/app/FragmentActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-ltz p3, :cond_0

    .line 696
    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 697
    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->list:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    sput-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    .line 698
    check-cast p2, Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->showImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Z)V

    .line 700
    sget p1, Lcom/brakefield/infinitestudio/R$id;->user_uploads_container:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 702
    sget p2, Lcom/brakefield/infinitestudio/R$anim;->to_bottom:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 704
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 706
    new-instance p2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$1;

    invoke-direct {p2, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showImage$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 763
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->delete()V

    .line 765
    new-instance p0, Lcom/brakefield/infinitestudio/account/UserFunctions$DeleteArtwork;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions$DeleteArtwork;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    .line 767
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->reported:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->deleted:Z

    if-eqz p0, :cond_1

    .line 768
    :cond_0
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->uploads:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 769
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->myUploads:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 770
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->popular:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 771
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->trending:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 772
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->userUploads:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 773
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->refreshFragments()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$showImage$6(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 759
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 760
    sget p0, Lcom/brakefield/infinitestudio/R$string;->prompt_delete_upload:I

    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 761
    sget p0, Lcom/brakefield/infinitestudio/R$string;->delete:I

    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 776
    sget p0, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 777
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic lambda$showImage$7(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/16 p2, 0x8

    .line 796
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 797
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$showImage$8(Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 814
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 818
    :cond_0
    sget-object p2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->report()V

    .line 820
    new-instance p2, Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->id:Ljava/lang/String;

    invoke-direct {p2, p0, p1, p3}, Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    .line 822
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->reported:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->deleted:Z

    if-eqz p0, :cond_2

    .line 823
    :cond_1
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->uploads:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 824
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->myUploads:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 825
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->popular:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 826
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->trending:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 827
    sget-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->userUploads:Ljava/util/List;

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 828
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->refreshFragments()V

    :cond_2
    return-void
.end method

.method static synthetic lambda$showImage$9(Landroidx/fragment/app/FragmentActivity;)V
    .locals 8

    .line 782
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->isUserLoggedIn()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    sget-object v2, Landroidx/core/app/bGP/xwFdypMN;->bmbrpcEtgW:Ljava/lang/String;

    .line 784
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 785
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 788
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 790
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/brakefield/infinitestudio/R$layout;->report:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 791
    sget v3, Lcom/brakefield/infinitestudio/R$id;->message_button_row:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 792
    sget v5, Lcom/brakefield/infinitestudio/R$id;->message_edit_row:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 794
    sget v6, Lcom/brakefield/infinitestudio/R$id;->message_button:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 795
    new-instance v7, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda5;

    invoke-direct {v7, v3, v5}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda5;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    sget v3, Lcom/brakefield/infinitestudio/R$id;->edit_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 801
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 803
    sget v1, Lcom/brakefield/infinitestudio/R$id;->reason_spinner:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 804
    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    sget v6, Lcom/brakefield/infinitestudio/R$array;->reportArray:I

    invoke-direct {v5, p0, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 805
    new-instance p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$2;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$2;-><init>()V

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 810
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 812
    sget p0, Lcom/brakefield/infinitestudio/R$string;->report:I

    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v3}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda6;-><init>(Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 831
    sget p0, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {p0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 832
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public static populateGallery()V
    .locals 3

    .line 930
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 931
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->userUploads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    sget-object v2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static refreshFragments()V
    .locals 2

    .line 1056
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1057
    check-cast v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;

    .line 1058
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->populateGallery()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static setupAdapter(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1029
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1030
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->uploads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1031
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->myUploads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1032
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->popular:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1033
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->trending:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1035
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1036
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$UploadsGalleryFragment;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$UploadsGalleryFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PopularGalleryFragment;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PopularGalleryFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$MyUploadsGalleryFragment;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$MyUploadsGalleryFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$3;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->fragments:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$3;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->pageAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    return-void
.end method

.method private static showImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Z)V
    .locals 6

    .line 615
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    if-nez v0, :cond_0

    return-void

    .line 619
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->loadingTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 624
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->prevUser:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->artist:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 625
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->artist:Ljava/lang/String;

    sget-object v3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->prevUser:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 627
    :cond_3
    :goto_0
    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->artist:Ljava/lang/String;

    sput-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->prevUser:Ljava/lang/String;

    .line 629
    sget v0, Lcom/brakefield/infinitestudio/R$id;->image:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 630
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    sget p1, Lcom/brakefield/infinitestudio/R$id;->app_button:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 633
    sget-object v3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->getAppIcon()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 635
    sget p1, Lcom/brakefield/infinitestudio/R$id;->user_uploads_grid_text:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 636
    sget v3, Lcom/brakefield/infinitestudio/R$id;->artist_text:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 637
    sget-object v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->artist:Ljava/lang/String;

    if-nez v4, :cond_4

    const/16 p1, 0x8

    .line 638
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 640
    :cond_4
    sget-object v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v4, v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    sget-object v3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->artist:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :goto_1
    sget p1, Lcom/brakefield/infinitestudio/R$id;->love_text:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->getNumberOfLoves()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    sget v3, Lcom/brakefield/infinitestudio/R$id;->favorite_button:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 648
    sget-object v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->userLovesImage()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, -0xae89

    .line 649
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    .line 650
    :cond_5
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 651
    :goto_2
    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 652
    new-instance v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v3, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda7;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    sget p1, Lcom/brakefield/infinitestudio/R$id;->user_uploads_grid_container:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 674
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 675
    new-instance v3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 677
    sget p1, Lcom/brakefield/infinitestudio/R$id;->more_artwork_button:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 678
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 679
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 680
    new-instance v3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda9;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    new-instance v3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;

    sget-object v4, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->list:Ljava/util/List;

    invoke-direct {v3, p0, v4, v2}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 690
    sget v4, Lcom/brakefield/infinitestudio/R$id;->user_uploads_grid:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    .line 692
    new-instance v5, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda10;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz v1, :cond_6

    .line 738
    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 740
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 741
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const-string p1, "Add user artwork support: recyclerview and getImagesTask"

    .line 743
    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Todo;->fix(Ljava/lang/String;)V

    .line 747
    :cond_6
    sget p1, Lcom/brakefield/infinitestudio/R$id;->options_button:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 748
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 749
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 750
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v3}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda11;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GridAdapter;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    sget p1, Lcom/brakefield/infinitestudio/R$id;->image_dialog:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 879
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v1

    const/16 v3, 0xf0

    .line 880
    invoke-static {v1, v3}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getTransparentColor(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_7

    .line 883
    sget p2, Lcom/brakefield/infinitestudio/R$anim;->fade_in:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 884
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 887
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 889
    sget p2, Lcom/brakefield/infinitestudio/R$id;->image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 891
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda12;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    new-instance p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 922
    new-instance p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$LoadImageTask;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$LoadImageTask;-><init>(Landroid/widget/ImageView;Landroid/view/View;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object p2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->imageBean:Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$LoadImageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    sput-object p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->loadingTask:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;

    .line 125
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->getTabs()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    .line 126
    invoke-static {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->setupAdapter(Landroidx/fragment/app/FragmentActivity;)V

    .line 127
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    sget-object v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->pageAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 128
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 129
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/ZoomOutPageTransformer;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/ZoomOutPageTransformer;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 131
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 134
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 136
    invoke-static {p0}, Lcom/brakefield/infinitestudio/utils/NetworkUtils;->checkNetworkOrNotifyUser(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1016
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x11d

    if-ne v0, v1, :cond_0

    .line 1019
    invoke-static {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->setupAdapter(Landroidx/fragment/app/FragmentActivity;)V

    .line 1020
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->refreshFragments()V

    .line 1021
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->binding:Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/ActivityOnlineGalleryBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    sget-object v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->pageAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    return p1

    .line 1025
    :cond_0
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .line 112
    sget v0, Lcom/brakefield/infinitestudio/R$string;->community:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasTabs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 984
    invoke-super {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 979
    invoke-super {p0, p1, p2}, Lcom/brakefield/infinitestudio/activities/MasterActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

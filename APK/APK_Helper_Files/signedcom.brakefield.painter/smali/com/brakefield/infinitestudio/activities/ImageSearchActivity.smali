.class public Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;
.super Lcom/brakefield/infinitestudio/activities/CollectionActivity;
.source "ImageSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;,
        Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;,
        Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$ImagesSection;,
        Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$ImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/activities/CollectionActivity<",
        "Lcom/brakefield/infinitestudio/image/ImageBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final JSON_RESULTS:Ljava/lang/String; = "results"

.field public static final JSON_THUMB_URL:Ljava/lang/String; = "tbUrl"

.field public static final JSON_URL:Ljava/lang/String; = "url"

.field public static handlesVectorImages:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private downloading:Z

.field error:Z

.field protected imageBean:Lcom/brakefield/infinitestudio/image/ImageBean;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation
.end field

.field private pixabayParser:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;

.field private pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

.field private pixabaySettings:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

.field private recentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation
.end field

.field private final scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

.field private searching:Z

.field strSearch:Ljava/lang/String;

.field private txtSearchText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabayParser:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;

    .line 79
    new-instance v0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    .line 80
    new-instance v0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabaySettings:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->list:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->recentList:Ljava/util/List;

    .line 87
    iput-object p0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->activity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->strSearch:Ljava/lang/String;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->error:Z

    .line 96
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->searching:Z

    .line 98
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$1;-><init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->downloading:Z

    return p0
.end method

.method static synthetic access$102(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->downloading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->recentList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabayParser:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;

    return-object p0
.end method

.method static synthetic access$602(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->searching:Z

    return p1
.end method

.method private btnSearchClick()V
    .locals 2

    .line 380
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->searching:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->searching:Z

    .line 384
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 385
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->strSearch:Ljava/lang/String;

    .line 386
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->strSearch:Ljava/lang/String;

    .line 387
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loadFirstPage(I)V

    return-void
.end method

.method private getRecentJSONArray()Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 438
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->recentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/image/ImageBean;

    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/ImageBean;->getThumbUrl()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/ImageBean;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 444
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "tbUrl"

    .line 445
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/ImageBean;->getThumbUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "url"

    .line 446
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/ImageBean;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private loadRecentImages()V
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->load()V

    .line 227
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->recentList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->setTotalItems(I)V

    .line 232
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->refreshCollection()V

    return-void
.end method


# virtual methods
.method protected bindMainContent(Landroid/view/ViewGroup;)V
    .locals 9

    .line 114
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;->bindMainContent(Landroid/view/ViewGroup;)V

    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabaySettings:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    invoke-virtual {v1, v0, v2}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->load(Landroid/content/SharedPreferences;Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->downloading:Z

    .line 121
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    .line 122
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 123
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 124
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    sget v2, Lcom/brakefield/infinitestudio/R$drawable;->search_field:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 125
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 126
    sget v2, Lcom/brakefield/infinitestudio/R$id;->background:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v2

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getLighterColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setElevation(F)V

    .line 130
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setClipToOutline(Z)V

    .line 132
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    sget v3, Lcom/brakefield/infinitestudio/R$string;->search_hint:I

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 133
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 134
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 136
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    float-to-int v3, v3

    .line 137
    iget-object v4, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v3, v5, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 139
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarIconColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 141
    sget v4, Lcom/brakefield/infinitestudio/R$drawable;->filter:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    invoke-static {v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 143
    new-instance v4, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/brakefield/infinitestudio/R$dimen;->dialog_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 150
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 151
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/brakefield/infinitestudio/R$dimen;->margin_large:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v0, v0, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 153
    iget-object v5, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-virtual {p0, v5, v4}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->addTitleBarContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/brakefield/infinitestudio/R$dimen;->button_size:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/brakefield/infinitestudio/R$dimen;->button_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    invoke-virtual {p0, v3, v4}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->addTitleBarContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 161
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 163
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    new-instance v3, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 173
    new-instance v0, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-direct {v0, p0}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 174
    sget v3, Lcom/brakefield/infinitestudio/R$drawable;->pixabay_logo:I

    invoke-virtual {v0, v3}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageResource(I)V

    .line 175
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 176
    new-instance v3, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v0, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setAdjustViewBounds(Z)V

    .line 181
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(F)V

    .line 183
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x51

    invoke-direct {v1, v2, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 184
    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 185
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->setScrollPageLoader(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;)V

    .line 189
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->loadRecentImages()V

    .line 191
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/NetworkUtils;->checkNetworkOrNotifyUser(Landroid/content/Context;)V

    return-void
.end method

.method protected getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$2;-><init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)V

    return-object v0
.end method

.method public getImagesFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 364
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 367
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 368
    new-instance v3, Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-direct {v3}, Lcom/brakefield/infinitestudio/image/ImageBean;-><init>()V

    const-string/jumbo v4, "tbUrl"

    .line 369
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/image/ImageBean;->setThumbUrl(Ljava/lang/String;)V

    const-string/jumbo v4, "url"

    .line 370
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/image/ImageBean;->setImageUrl(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 373
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method synthetic lambda$bindMainContent$0$com-brakefield-infinitestudio-activities-ImageSearchActivity(Landroid/view/View;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->btnSearchClick()V

    :cond_0
    return-void
.end method

.method synthetic lambda$bindMainContent$1$com-brakefield-infinitestudio-activities-ImageSearchActivity(Landroid/view/View;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabaySettings:Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->pixabayQuery:Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabaySettingsViewController;->show(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$bindMainContent$2$com-brakefield-infinitestudio-activities-ImageSearchActivity(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    const/16 p1, 0x42

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->btnSearchClick()V

    const-string p1, "input_method"

    .line 166
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 167
    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->txtSearchText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

.method synthetic lambda$bindMainContent$3$com-brakefield-infinitestudio-activities-ImageSearchActivity(Landroid/view/View;)V
    .locals 2

    .line 177
    new-instance p1, Landroid/content/Intent;

    const-string v0, "https://pixabay.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public load()V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->recentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recent_images.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 461
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 465
    :cond_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "results"

    .line 467
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getImagesFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 468
    iget-object v3, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->recentList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 458
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method public save()V
    .locals 3

    .line 476
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recent_images.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 478
    :try_start_2
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 476
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 432
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "results"

    .line 433
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getRecentJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

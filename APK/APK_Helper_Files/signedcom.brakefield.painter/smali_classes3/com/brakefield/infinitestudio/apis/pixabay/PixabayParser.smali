.class public Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;
.super Ljava/lang/Object;
.source "PixabayParser.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final FULLNAME:Ljava/lang/String; = "fullname"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PHOTO:Ljava/lang/String; = "photo"

.field public static final PHOTOS:Ljava/lang/String; = "photos"

.field public static final TOTAL_ITEMS:Ljava/lang/String; = "total_items"

.field public static final USER:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseFeed(Ljava/lang/String;Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;II)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;
    .locals 6

    .line 29
    new-instance v0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;

    invoke-direct {v0, p3}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;-><init>(I)V

    .line 32
    :try_start_0
    new-instance v1, Lcom/brakefield/infinitestudio/utils/JSONParser;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/utils/JSONParser;-><init>()V

    const-string v2, " "

    const-string v3, "+"

    .line 34
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p2, p1, p3, p4}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->getQuery(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 39
    sget-object p2, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-virtual {v1, p1, p2, v2}, Lcom/brakefield/infinitestudio/utils/JSONParser;->getJSONFromUrl(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string/jumbo p2, "total"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string/jumbo p2, "totalHits"

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 46
    iput p2, v0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;->totalItems:I

    const-string p2, "hits"

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 50
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 52
    new-instance p3, Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-direct {p3}, Lcom/brakefield/infinitestudio/image/ImageBean;-><init>()V

    .line 54
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p4

    const-string v1, "previewURL"

    .line 56
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "webformatURL"

    .line 58
    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webformatWidth"

    .line 60
    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string/jumbo v3, "webformatHeight"

    .line 61
    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v3, "imageWidth"

    .line 62
    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v3, "imageHeight"

    .line 63
    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v3, "largeImageURL"

    .line 65
    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fullHDURL"

    .line 66
    invoke-virtual {p4, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "imageURL"

    .line 67
    invoke-virtual {p4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v5, "vectorURL"

    .line 68
    invoke-virtual {p4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v2

    .line 71
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 72
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v3, v4

    .line 74
    :cond_3
    invoke-virtual {p3, v4}, Lcom/brakefield/infinitestudio/image/ImageBean;->setImageUrl(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3, v3}, Lcom/brakefield/infinitestudio/image/ImageBean;->setThumbUrl(Ljava/lang/String;)V

    .line 76
    iput-object p4, p3, Lcom/brakefield/infinitestudio/image/ImageBean;->vectorURL:Ljava/lang/String;

    .line 78
    iget-object p4, v0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;->images:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    return-object v0
.end method

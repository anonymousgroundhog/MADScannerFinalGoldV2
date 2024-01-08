.class public Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxParser;
.super Ljava/lang/Object;
.source "FiveHundredPxParser.java"


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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    .line 99
    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->getExtendedPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/utils/NetworkUtils;->openHttpConnection(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 102
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 107
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :cond_0
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "photo"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "image_url"

    .line 112
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public parseFeed(Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "/2.jpg"

    const-string v0, "id"

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 47
    :cond_0
    invoke-static {p1, p3}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->appendPage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPx;->censor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/NetworkUtils;->openHttpConnection(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 53
    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-direct {p3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    :goto_0
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 59
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :cond_1
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "photos"

    .line 67
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 68
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge v6, p3, :cond_2

    .line 69
    new-instance p3, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;

    invoke-direct {p3}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;-><init>()V

    .line 70
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->setImageID(Ljava/lang/String;)V

    const-string v4, "name"

    .line 72
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->setTitle(Ljava/lang/String;)V

    const-string v4, "image_url"

    .line 73
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/4.jpg"

    .line 74
    invoke-virtual {v4, p2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/3.jpg"

    .line 75
    invoke-virtual {v4, p2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-virtual {p3, v5}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->setSourceURL(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3, v4}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->setThumbnail128URL(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3, v7}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->setThumbnail256URL(Ljava/lang/String;)V

    const-string/jumbo v4, "user"

    .line 79
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "fullname"

    .line 80
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->setOwner(Ljava/lang/String;)V

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://500px.com/photo/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 82
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {p3, v3}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->setPageURL(Ljava/lang/String;)V

    .line 83
    new-instance v3, Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-direct {v3}, Lcom/brakefield/infinitestudio/image/ImageBean;-><init>()V

    .line 84
    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->getBigImageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/brakefield/infinitestudio/image/ImageBean;->imageUrl:Ljava/lang/String;

    .line 85
    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->get256ImageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/brakefield/infinitestudio/image/ImageBean;->thumbUrl:Ljava/lang/String;

    .line 86
    iget-object p3, p3, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->pageURL:Ljava/lang/String;

    iput-object p3, v3, Lcom/brakefield/infinitestudio/image/ImageBean;->src:Ljava/lang/String;

    .line 87
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :catch_0
    return-object v2
.end method

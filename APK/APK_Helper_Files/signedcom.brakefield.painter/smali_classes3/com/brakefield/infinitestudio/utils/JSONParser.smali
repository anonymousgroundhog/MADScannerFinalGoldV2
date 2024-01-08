.class public Lcom/brakefield/infinitestudio/utils/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJSONFromUrl(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 12
    invoke-static {p1, p2, p3}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 22
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    return-object p2
.end method

.method public getJSONFromUrl(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 30
    invoke-static {p1, p2, p3}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 40
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    return-object p2
.end method

.class public Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI;
.super Lcom/brakefield/infinitestudio/apis/API;
.source "GoogleFontsAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI$SortParam;,
        Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/apis/API<",
        "Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_DISTRIBUTION:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/apis/API;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKeyParam()Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getFontsURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected process(Lorg/json/JSONObject;)V
    .locals 3

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v0, "items"

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI;->onProcessStarted(I)V

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v1}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->fromJSON(Lorg/json/JSONObject;)Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI;->onProcessItem(Ljava/lang/Object;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFontsAPI;->onProcessEnded()V

    return-void
.end method

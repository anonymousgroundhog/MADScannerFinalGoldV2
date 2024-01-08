.class public Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;
.super Landroid/os/AsyncTask;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "getPalettesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field json:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPostExecute$0(Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;)I
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object p0, p0, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 344
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getPalettesURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 350
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 352
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->json:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 355
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8

    .line 363
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 365
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->json:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "responseData"

    .line 369
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "results"

    .line 370
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    move v1, v0

    .line 375
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 376
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 378
    new-instance v3, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;-><init>(Ljava/lang/String;)V

    const-string v4, "colors"

    .line 380
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v0

    .line 381
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 382
    new-instance v6, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;

    const-string v7, ""

    invoke-direct {v6, v7}, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;->color:I

    .line 384
    invoke-virtual {v3, v6}, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->addColor(Lcom/brakefield/infinitestudio/color/ColourLovers$Colour;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "id"

    .line 386
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;->id:Ljava/lang/String;

    .line 388
    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 395
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;->palettes:Ljava/util/List;

    new-instance v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 401
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment$getPalettesTask;->this$0:Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$CommunityPalettesFragment;->refresh()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 404
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 336
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

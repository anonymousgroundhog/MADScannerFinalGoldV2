.class public Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;
.super Landroid/os/AsyncTask;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "getBrushesTask"
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
.field json1:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 316
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 329
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getBrushesURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 336
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 340
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->json1:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 343
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 316
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    const-string v0, "id"

    .line 350
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->json1:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "responseData"

    .line 357
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "results"

    .line 358
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 360
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;

    iget-object v1, v1, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;->brushes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 362
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 363
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 364
    new-instance v3, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;

    iget-object v4, p0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;

    invoke-direct {v3, v4}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;-><init>(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;)V

    .line 366
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->setId(Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    sget-object v4, Lcom/google/android/material/navigation/PjId/DFPED;->SkZFPyNLbFgmyy:Ljava/lang/String;

    .line 369
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->setName(Ljava/lang/String;)V

    const-string/jumbo v4, "url"

    .line 370
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->setLoc(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;

    iget-object v2, v2, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;->brushes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment$getBrushesTask;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivityBrushes$CommunityBrushesFragment;->refresh()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 377
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 321
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

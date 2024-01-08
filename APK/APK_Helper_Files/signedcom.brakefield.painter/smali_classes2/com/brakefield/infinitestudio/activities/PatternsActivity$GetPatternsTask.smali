.class public Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;
.super Landroid/os/AsyncTask;
.source "PatternsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PatternsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPatternsTask"
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
.field dialog:Landroid/app/ProgressDialog;

.field json:Lorg/json/JSONObject;

.field patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/PatternsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->patterns:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$onPostExecute$0(Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)I
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object p0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 226
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 247
    :try_start_0
    new-instance p1, Ljava/net/URL;

    const-string v0, "https://www.infinitestudio.art/users/listPatterns.php"

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 254
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 256
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->json:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 259
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 226
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 267
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 269
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->dialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 271
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->json:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "responseData"

    .line 275
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "results"

    .line 276
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 278
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->getPatternsFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->patterns:Ljava/util/List;

    check-cast v0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->patterns:Ljava/util/List;

    new-instance v0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->refreshCollection()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 294
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .line 238
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 239
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->please_wait:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v0, v4, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

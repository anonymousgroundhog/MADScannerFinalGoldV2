.class public Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;
.super Landroid/os/AsyncTask;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/SlideshowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "getShowcaseTask"
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

.field json1:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 651
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 665
    :try_start_0
    new-instance p1, Ljava/net/URL;

    sget-object v0, Lcom/brakefield/infinitestudio/ui/SlideshowView;->showcaseURL:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 674
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->json1:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 672
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 678
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 651
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 685
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 687
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->json1:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "responseData"

    .line 691
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "results"

    .line 692
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 694
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->getImageList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 695
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$400(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Ljava/util/List;

    move-result-object v1

    check-cast v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 698
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 701
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$getShowcaseTask;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$500(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 657
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

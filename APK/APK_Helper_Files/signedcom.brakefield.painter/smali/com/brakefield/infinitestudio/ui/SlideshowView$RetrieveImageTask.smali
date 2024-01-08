.class Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;
.super Landroid/os/AsyncTask;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/SlideshowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetrieveImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/SlideshowView;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 600
    aget-object p1, p1, v0

    .line 602
    invoke-static {p1}, Lcom/brakefield/infinitestudio/FileManager;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExtraPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExtraPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 608
    :try_start_2
    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/FileManager;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 609
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 606
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 610
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    :cond_1
    :goto_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 616
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$200(Lcom/brakefield/infinitestudio/ui/SlideshowView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "PREF_SLIDESHOW_LAST"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 618
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->fadeIn(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 589
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 624
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/ui/SlideshowView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/SlideshowView;->access$302(Lcom/brakefield/infinitestudio/ui/SlideshowView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 589
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/SlideshowView$RetrieveImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 593
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

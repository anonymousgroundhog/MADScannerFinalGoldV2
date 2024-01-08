.class Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;
.super Landroid/os/AsyncTask;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadBrushTask"
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
.field adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field bean:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->bean:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;

    .line 275
    iput-object p3, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 268
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 285
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getDownloadBrushesPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->bean:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;

    invoke-virtual {v2}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".prbr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->bean:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;

    invoke-virtual {v1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 289
    :try_start_2
    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->importBrushFile(Ljava/lang/String;)Z

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 287
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 299
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;->this$0:Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 300
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->refreshDownloadedFolder()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 280
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

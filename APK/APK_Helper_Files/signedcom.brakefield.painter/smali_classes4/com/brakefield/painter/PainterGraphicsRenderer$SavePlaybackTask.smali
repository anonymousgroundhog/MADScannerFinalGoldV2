.class Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;
.super Landroid/os/AsyncTask;
.source "PainterGraphicsRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/PainterGraphicsRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePlaybackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[I",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field playbackManager:Lcom/brakefield/painter/PlaybackManager;

.field final synthetic this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/PainterGraphicsRenderer;)V
    .locals 0

    .line 1276
    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1278
    new-instance p1, Lcom/brakefield/painter/PlaybackManager;

    invoke-direct {p1}, Lcom/brakefield/painter/PlaybackManager;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/PainterGraphicsRenderer;Lcom/brakefield/painter/PainterGraphicsRenderer$1;)V
    .locals 0

    .line 1276
    invoke-direct {p0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1276
    check-cast p1, [[I

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->doInBackground([[I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([[I)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    .line 1283
    aget-object p1, p1, v0

    .line 1285
    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackNextImageFile()Ljava/lang/String;

    move-result-object v1

    .line 1288
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackWidth()I

    move-result v2

    .line 1289
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackHeight()I

    move-result v3

    .line 1291
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1293
    :try_start_0
    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 1295
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_0

    .line 1293
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 1296
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1299
    :cond_1
    :goto_1
    new-instance p1, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1302
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1304
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1307
    :cond_2
    :goto_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackTotalImageFiles()I

    move-result p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackFramerate()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 1308
    iget-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-static {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->access$200(Lcom/brakefield/painter/PainterGraphicsRenderer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/PlaybackManager;->createPlaybackSegments(Landroid/content/Context;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->access$302(Lcom/brakefield/painter/PainterGraphicsRenderer;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1276
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1314
    iget-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePlaybackTask;->this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->access$302(Lcom/brakefield/painter/PainterGraphicsRenderer;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

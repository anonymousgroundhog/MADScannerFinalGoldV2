.class Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;
.super Landroid/os/AsyncTask;
.source "PainterGraphicsRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/PainterGraphicsRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePreviewTask"
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
.field final height:I

.field final synthetic this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

.field final width:I


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/PainterGraphicsRenderer;II)V
    .locals 0

    .line 1219
    iput-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1220
    iput p2, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->width:I

    .line 1221
    iput p3, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->height:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1215
    check-cast p1, [[I

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->doInBackground([[I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([[I)Ljava/lang/Void;
    .locals 6

    .line 1227
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectLocation()Ljava/lang/String;

    move-result-object v0

    .line 1231
    iget v1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->width:I

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget v4, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->height:I

    if-lez v4, :cond_0

    const/4 v5, 0x0

    .line 1233
    aget-object p1, p1, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1234
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v1

    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v4

    invoke-static {p1, v1, v4}, Lcom/brakefield/painter/BitmapOrientator;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1236
    new-instance v1, Ljava/io/File;

    const-string v4, "preview_full"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1237
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 1240
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_1

    .line 1245
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 1246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    if-lez v1, :cond_1

    if-lez v4, :cond_1

    const/4 v5, 0x1

    .line 1249
    invoke-static {p1, v1, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1251
    new-instance v1, Ljava/io/File;

    const-string v4, "preview"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1253
    :try_start_6
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1254
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 1252
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p1

    .line 1255
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1215
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 1264
    sget-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 1265
    iget-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-static {p1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->access$100(Lcom/brakefield/painter/PainterGraphicsRenderer;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->dismissProgress()V

    .line 1266
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->numberOfSaveTiles()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isAutosaving()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1270
    :cond_0
    sget-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1267
    :cond_1
    :goto_0
    sget-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->autosaveListener:Ljava/lang/Runnable;

    .line 1268
    iget-object p1, p0, Lcom/brakefield/painter/PainterGraphicsRenderer$SavePreviewTask;->this$0:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-static {p1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->access$100(Lcom/brakefield/painter/PainterGraphicsRenderer;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->showProgress()V

    :goto_1
    const/4 p1, 0x0

    .line 1271
    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveListener:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

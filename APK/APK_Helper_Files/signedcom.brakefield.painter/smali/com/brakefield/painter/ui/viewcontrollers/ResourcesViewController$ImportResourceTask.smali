.class public Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;
.super Landroid/os/AsyncTask;
.source "ResourcesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImportResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/brakefield/infinitestudio/utils/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final contentResolver:Landroid/content/ContentResolver;

.field final context:Landroid/content/Context;

.field final importUri:Lcom/brakefield/painter/FileImporter$ImportUri;

.field final progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/brakefield/painter/FileImporter$ImportUri;)V
    .locals 1

    .line 254
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->context:Landroid/content/Context;

    .line 256
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->contentResolver:Landroid/content/ContentResolver;

    .line 257
    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->importUri:Lcom/brakefield/painter/FileImporter$ImportUri;

    const p1, 0x7f1209f7

    .line 258
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, p4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->progress:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/brakefield/infinitestudio/utils/Result;
    .locals 1

    .line 266
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->contentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->importUri:Lcom/brakefield/painter/FileImporter$ImportUri;

    iget-object v0, v0, Lcom/brakefield/painter/FileImporter$ImportUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->importResource(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/brakefield/infinitestudio/utils/Result;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 247
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->doInBackground([Ljava/lang/Void;)Lcom/brakefield/infinitestudio/utils/Result;

    move-result-object p1

    return-object p1
.end method

.method public importResource(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/brakefield/infinitestudio/utils/Result;
    .locals 5

    const/4 v0, 0x0

    .line 280
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :try_start_1
    invoke-static {p1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 282
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 280
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const p1, 0x7f120189

    .line 286
    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Result;->Failed(I)Lcom/brakefield/infinitestudio/utils/Result;

    .line 288
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 289
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 291
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 292
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float p1, p1

    const/high16 v2, 0x45000000    # 2048.0f

    cmpl-float v4, p1, v2

    if-gtz v4, :cond_3

    int-to-float v4, p2

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    :cond_3
    div-float v4, p1, v2

    int-to-float p2, p2

    div-float v2, p2, v2

    .line 297
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr p1, v2

    float-to-int p1, p1

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 302
    iput p1, v3, Landroid/graphics/Rect;->right:I

    .line 303
    iput p2, v3, Landroid/graphics/Rect;->bottom:I

    .line 305
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 306
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, p1

    .line 312
    :cond_4
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v0, p2, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 314
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {p2, v0}, Lcom/brakefield/painter/nativeobjs/HashNative;->generateHashFromData([BI)Ljava/lang/String;

    move-result-object p2

    .line 317
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getImportedResourcesFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-virtual {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getImportedResourcesFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const p1, 0x7f120188

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Result;->Failed(I)Lcom/brakefield/infinitestudio/utils/Result;

    move-result-object p1

    return-object p1

    .line 320
    :cond_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/FileManager;->save(Ljava/lang/String;[B)Ljava/lang/String;

    .line 322
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Result;->Success()Lcom/brakefield/infinitestudio/utils/Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/brakefield/infinitestudio/utils/Result;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/utils/Result;->successful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->access$400(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)V

    .line 273
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/utils/Result;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/utils/Result;->getMessage()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/brakefield/infinitestudio/utils/Result;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->onPostExecute(Lcom/brakefield/infinitestudio/utils/Result;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ImportResourceTask;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.class Lcom/brakefield/painter/FileImporter$ImportImageBitmap;
.super Ljava/lang/Object;
.source "FileImporter.java"

# interfaces
.implements Lcom/brakefield/painter/FileImporter$ImportFileHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/FileImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportImageBitmap"
.end annotation


# static fields
.field private static final AVIF:Ljava/lang/String; = "avif"

.field private static final WEBP:Ljava/lang/String; = "webp"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/FileImporter$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/brakefield/painter/FileImporter$ImportImageBitmap;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V
    .locals 3

    .line 291
    invoke-virtual {p2}, Lcom/brakefield/painter/FileImporter$ImportUri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 293
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object p4

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    .line 298
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 300
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_2

    .line 304
    :try_start_3
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p4, :cond_1

    .line 302
    :try_start_4
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p4

    :try_start_5
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    :cond_2
    :goto_2
    invoke-interface {p3, p2}, Lcom/brakefield/painter/FileImporter$UriHandler;->handleUri(Lcom/brakefield/painter/FileImporter$ImportUri;)V

    :cond_3
    return-void
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "webp"

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "avif"

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

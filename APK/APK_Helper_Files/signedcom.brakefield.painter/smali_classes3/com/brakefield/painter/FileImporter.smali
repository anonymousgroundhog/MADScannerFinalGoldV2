.class public Lcom/brakefield/painter/FileImporter;
.super Ljava/lang/Object;
.source "FileImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/FileImporter$ImportUri;,
        Lcom/brakefield/painter/FileImporter$ImportFileHandler;,
        Lcom/brakefield/painter/FileImporter$UriHandler;,
        Lcom/brakefield/painter/FileImporter$MessageHandler;,
        Lcom/brakefield/painter/FileImporter$ImportPainterProject;,
        Lcom/brakefield/painter/FileImporter$ImportPsd;,
        Lcom/brakefield/painter/FileImporter$ImportPainterBrush;,
        Lcom/brakefield/painter/FileImporter$ImportPainterZip;,
        Lcom/brakefield/painter/FileImporter$ImportImageCopy;,
        Lcom/brakefield/painter/FileImporter$ImportImageBitmap;,
        Lcom/brakefield/painter/FileImporter$ImportColorPalette;,
        Lcom/brakefield/painter/FileImporter$LoadPSDTask;
    }
.end annotation


# static fields
.field private static final importBrush:Lcom/brakefield/painter/FileImporter$ImportPainterBrush;

.field private static final importFileHandlers:[Lcom/brakefield/painter/FileImporter$ImportFileHandler;

.field private static final importImageBitmap:Lcom/brakefield/painter/FileImporter$ImportImageBitmap;

.field private static final importImageCopy:Lcom/brakefield/painter/FileImporter$ImportImageCopy;

.field private static final importPalette:Lcom/brakefield/painter/FileImporter$ImportColorPalette;

.field private static final importProject:Lcom/brakefield/painter/FileImporter$ImportPainterProject;

.field private static final importPsd:Lcom/brakefield/painter/FileImporter$ImportPsd;

.field private static final importZip:Lcom/brakefield/painter/FileImporter$ImportPainterZip;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 30
    new-instance v0, Lcom/brakefield/painter/FileImporter$ImportPainterProject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/painter/FileImporter$ImportPainterProject;-><init>(Lcom/brakefield/painter/FileImporter$1;)V

    sput-object v0, Lcom/brakefield/painter/FileImporter;->importProject:Lcom/brakefield/painter/FileImporter$ImportPainterProject;

    .line 31
    new-instance v2, Lcom/brakefield/painter/FileImporter$ImportPainterZip;

    invoke-direct {v2, v1}, Lcom/brakefield/painter/FileImporter$ImportPainterZip;-><init>(Lcom/brakefield/painter/FileImporter$1;)V

    sput-object v2, Lcom/brakefield/painter/FileImporter;->importZip:Lcom/brakefield/painter/FileImporter$ImportPainterZip;

    .line 32
    new-instance v3, Lcom/brakefield/painter/FileImporter$ImportPainterBrush;

    invoke-direct {v3, v1}, Lcom/brakefield/painter/FileImporter$ImportPainterBrush;-><init>(Lcom/brakefield/painter/FileImporter$1;)V

    sput-object v3, Lcom/brakefield/painter/FileImporter;->importBrush:Lcom/brakefield/painter/FileImporter$ImportPainterBrush;

    .line 33
    new-instance v4, Lcom/brakefield/painter/FileImporter$ImportColorPalette;

    invoke-direct {v4, v1}, Lcom/brakefield/painter/FileImporter$ImportColorPalette;-><init>(Lcom/brakefield/painter/FileImporter$1;)V

    sput-object v4, Lcom/brakefield/painter/FileImporter;->importPalette:Lcom/brakefield/painter/FileImporter$ImportColorPalette;

    .line 34
    new-instance v5, Lcom/brakefield/painter/FileImporter$ImportPsd;

    invoke-direct {v5, v1}, Lcom/brakefield/painter/FileImporter$ImportPsd;-><init>(Lcom/brakefield/painter/FileImporter$1;)V

    sput-object v5, Lcom/brakefield/painter/FileImporter;->importPsd:Lcom/brakefield/painter/FileImporter$ImportPsd;

    .line 35
    new-instance v6, Lcom/brakefield/painter/FileImporter$ImportImageCopy;

    invoke-direct {v6, v1}, Lcom/brakefield/painter/FileImporter$ImportImageCopy;-><init>(Lcom/brakefield/painter/FileImporter$1;)V

    sput-object v6, Lcom/brakefield/painter/FileImporter;->importImageCopy:Lcom/brakefield/painter/FileImporter$ImportImageCopy;

    .line 36
    new-instance v7, Lcom/brakefield/painter/FileImporter$ImportImageBitmap;

    invoke-direct {v7, v1}, Lcom/brakefield/painter/FileImporter$ImportImageBitmap;-><init>(Lcom/brakefield/painter/FileImporter$1;)V

    sput-object v7, Lcom/brakefield/painter/FileImporter;->importImageBitmap:Lcom/brakefield/painter/FileImporter$ImportImageBitmap;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/brakefield/painter/FileImporter$ImportFileHandler;

    const/4 v8, 0x0

    aput-object v0, v1, v8

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    const/4 v0, 0x5

    aput-object v6, v1, v0

    const/4 v0, 0x6

    aput-object v7, v1, v0

    .line 38
    sput-object v1, Lcom/brakefield/painter/FileImporter;->importFileHandlers:[Lcom/brakefield/painter/FileImporter$ImportFileHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFileToDestination(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 137
    :try_start_0
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/FileManager;->resolveInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 141
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 142
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 143
    :try_start_2
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/FileManager;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 144
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_2

    .line 146
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 142
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_1

    .line 137
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static isBrushFileType(Ljava/lang/String;)Z
    .locals 1

    .line 128
    sget-object v0, Lcom/brakefield/painter/FileImporter;->importBrush:Lcom/brakefield/painter/FileImporter$ImportPainterBrush;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/FileImporter$ImportPainterBrush;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/brakefield/painter/FileImporter;->importZip:Lcom/brakefield/painter/FileImporter$ImportPainterZip;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/FileImporter$ImportPainterZip;->handles(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isImageFileType(Ljava/lang/String;)Z
    .locals 1

    .line 132
    sget-object v0, Lcom/brakefield/painter/FileImporter;->importImageCopy:Lcom/brakefield/painter/FileImporter$ImportImageCopy;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/FileImporter$ImportImageCopy;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/brakefield/painter/FileImporter;->importImageBitmap:Lcom/brakefield/painter/FileImporter$ImportImageBitmap;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/FileImporter$ImportImageBitmap;->handles(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isProjectFileType(Ljava/lang/String;)Z
    .locals 1

    .line 124
    sget-object v0, Lcom/brakefield/painter/FileImporter;->importProject:Lcom/brakefield/painter/FileImporter$ImportPainterProject;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/FileImporter$ImportPainterProject;->handles(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/brakefield/painter/FileImporter;->importPsd:Lcom/brakefield/painter/FileImporter$ImportPsd;

    invoke-virtual {v0, p0}, Lcom/brakefield/painter/FileImporter$ImportPsd;->handles(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static processUri(Landroid/content/Context;Landroid/net/Uri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V
    .locals 9

    const-string v0, "."

    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p1

    .line 84
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "_display_name"

    .line 85
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 86
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/16 v5, 0x2e

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-static {v4}, Lcom/brakefield/infinitestudio/FileManager;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v7

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v4, v0}, Lcom/brakefield/infinitestudio/FileManager;->getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 97
    :try_start_2
    invoke-static {v7, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 98
    :try_start_3
    invoke-static {v1, v4}, Lcom/brakefield/infinitestudio/FileManager;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 99
    new-instance v5, Ljava/io/File;

    invoke-static {v7, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    .line 101
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_1
    if-eqz v3, :cond_6

    .line 102
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catchall_1
    move-exception v0

    if-eqz v4, :cond_2

    .line 96
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move v6, v2

    :goto_2
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_4

    :catchall_6
    move-exception v0

    move v6, v2

    :goto_4
    if-eqz v3, :cond_4

    .line 84
    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v1

    :try_start_c
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move v6, v2

    .line 103
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_5
    move v6, v2

    .line 107
    :cond_6
    :goto_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 111
    :cond_7
    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/brakefield/painter/FileImporter$ImportUri;

    invoke-direct {v1, p1, v0, v6}, Lcom/brakefield/painter/FileImporter$ImportUri;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 115
    sget-object p1, Lcom/brakefield/painter/FileImporter;->importFileHandlers:[Lcom/brakefield/painter/FileImporter$ImportFileHandler;

    array-length v3, p1

    :goto_8
    if-ge v2, v3, :cond_9

    aget-object v4, p1, v2

    .line 116
    invoke-interface {v4, v0}, Lcom/brakefield/painter/FileImporter$ImportFileHandler;->handles(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 117
    invoke-interface {v4, p0, v1, p2, p3}, Lcom/brakefield/painter/FileImporter$ImportFileHandler;->handle(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    return-void

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    return-void
.end method

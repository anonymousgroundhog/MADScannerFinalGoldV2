.class Lcom/brakefield/painter/FileImporter$ImportPainterBrush;
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
    name = "ImportPainterBrush"
.end annotation


# static fields
.field private static final EXTENSION:Ljava/lang/String; = "prbr"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/FileImporter$1;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/brakefield/painter/FileImporter$ImportPainterBrush;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V
    .locals 4

    const-string p1, ".prbr"

    const/4 v0, 0x0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getDownloadBrushesPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTimestampFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p2}, Lcom/brakefield/painter/FileImporter$ImportUri;->asFile()Ljava/io/File;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/brakefield/infinitestudio/FileManager;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 189
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->importBrushFile(Ljava/lang/String;)Z

    move-result v0

    .line 190
    new-instance p2, Lcom/brakefield/painter/FileImporter$ImportUri;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "prbr"

    const/4 v2, 0x1

    invoke-direct {p2, p1, v1, v2}, Lcom/brakefield/painter/FileImporter$ImportUri;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/BrushPackManager;->refreshDownloadedFolder()V

    .line 193
    invoke-interface {p3, p2}, Lcom/brakefield/painter/FileImporter$UriHandler;->handleUri(Lcom/brakefield/painter/FileImporter$ImportUri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const p1, 0x7f12018b

    .line 199
    invoke-interface {p4, p1}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f120189

    .line 200
    invoke-interface {p4, p1}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    :goto_1
    return-void
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "prbr"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

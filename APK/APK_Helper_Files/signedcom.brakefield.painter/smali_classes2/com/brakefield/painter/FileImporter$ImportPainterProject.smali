.class Lcom/brakefield/painter/FileImporter$ImportPainterProject;
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
    name = "ImportPainterProject"
.end annotation


# static fields
.field private static final EXTENSION:Ljava/lang/String; = "pntr"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/FileImporter$1;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/brakefield/painter/FileImporter$ImportPainterProject;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V
    .locals 2

    .line 166
    invoke-virtual {p2}, Lcom/brakefield/painter/FileImporter$ImportUri;->asFile()Ljava/io/File;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/brakefield/infinitestudio/FileManager;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserProjectsDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/brakefield/painter/PainterLib;->importProjectFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 170
    new-instance p2, Lcom/brakefield/painter/FileImporter$ImportUri;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v0, "pntr"

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/brakefield/painter/FileImporter$ImportUri;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 171
    invoke-interface {p3, p2}, Lcom/brakefield/painter/FileImporter$UriHandler;->handleUri(Lcom/brakefield/painter/FileImporter$ImportUri;)V

    const p1, 0x7f12018a

    .line 172
    invoke-interface {p4, p1}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120189

    .line 174
    invoke-interface {p4, p1}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    :goto_0
    return-void
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "pntr"

    .line 163
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

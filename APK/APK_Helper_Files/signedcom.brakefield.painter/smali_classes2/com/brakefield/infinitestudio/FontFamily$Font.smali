.class public Lcom/brakefield/infinitestudio/FontFamily$Font;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/FontFamily$Font$DownloadTask;
    }
.end annotation


# instance fields
.field private final family:Lcom/brakefield/infinitestudio/FontFamily;

.field private final filePath:Ljava/lang/String;

.field private final fileUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/FontFamily;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->family:Lcom/brakefield/infinitestudio/FontFamily;

    .line 57
    iput-object p2, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->name:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->fileUrl:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/FontFamily$Font;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->filePath:Ljava/lang/String;

    return-void
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->family:Lcom/brakefield/infinitestudio/FontFamily;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/FontFamily;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->name:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->buildPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fonts"

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public download(Lcom/brakefield/infinitestudio/Tasks;Ljava/lang/Runnable;)V
    .locals 3

    .line 71
    new-instance v0, Lcom/brakefield/infinitestudio/FontFamily$Font$DownloadTask;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->fileUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/FontFamily$Font$DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/FontFamily$Font$DownloadTask;->then(Ljava/lang/Runnable;)Lcom/brakefield/infinitestudio/Tasks$Task;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/Tasks;->queue(Lcom/brakefield/infinitestudio/Tasks$Task;)V

    return-void
.end method

.method public isDownloaded()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->family:Lcom/brakefield/infinitestudio/FontFamily;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/FontFamily;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->name:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->buildPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fonts"

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/FontFamily$Font;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/brakefield/painter/FileImporter$ImportPsd;
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
    name = "ImportPsd"
.end annotation


# static fields
.field private static final EXTENSION:Ljava/lang/String; = "psd"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/FileImporter$1;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/brakefield/painter/FileImporter$ImportPsd;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V
    .locals 1

    .line 265
    new-instance v0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/brakefield/painter/FileImporter$LoadPSDTask;-><init>(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public handles(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "psd"

    .line 262
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

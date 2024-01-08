.class public abstract Lcom/brakefield/infinitestudio/apis/API;
.super Ljava/lang/Object;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/apis/API$ItemHandler;,
        Lcom/brakefield/infinitestudio/apis/API$FetchTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected itemHandler:Lcom/brakefield/infinitestudio/apis/API$ItemHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/apis/API$ItemHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/apis/API;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/apis/API;->processFetchResult(Ljava/lang/String;)V

    return-void
.end method

.method private processFetchResult(Ljava/lang/String;)V
    .locals 1

    .line 59
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/apis/API;->process(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs fetch(Lcom/brakefield/infinitestudio/apis/API$ItemHandler;[Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;)Lcom/brakefield/infinitestudio/apis/API$FetchTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/apis/API$ItemHandler<",
            "TT;>;[",
            "Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;",
            ")",
            "Lcom/brakefield/infinitestudio/apis/API<",
            "TT;>.FetchTask;"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/API;->itemHandler:Lcom/brakefield/infinitestudio/apis/API$ItemHandler;

    .line 29
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/apis/API;->getKeyParam()Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;

    .line 32
    array-length p2, p2

    aput-object p1, v0, p2

    move-object p2, v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/apis/API;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/utils/UrlBuilder;->build(Ljava/lang/String;[Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance p2, Lcom/brakefield/infinitestudio/apis/API$FetchTask;

    invoke-direct {p2, p0, p1}, Lcom/brakefield/infinitestudio/apis/API$FetchTask;-><init>(Lcom/brakefield/infinitestudio/apis/API;Ljava/lang/String;)V

    .line 37
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Lcom/brakefield/infinitestudio/apis/API$FetchTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p2
.end method

.method protected abstract getKeyParam()Lcom/brakefield/infinitestudio/utils/UrlBuilder$Param;
.end method

.method protected abstract getUrl()Ljava/lang/String;
.end method

.method protected onProcessEnded()V
    .locals 0

    return-void
.end method

.method protected onProcessItem(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 45
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/API;->itemHandler:Lcom/brakefield/infinitestudio/apis/API$ItemHandler;

    if-eqz p2, :cond_0

    .line 46
    invoke-interface {p2, p1}, Lcom/brakefield/infinitestudio/apis/API$ItemHandler;->handle(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onProcessStarted(I)V
    .locals 0

    return-void
.end method

.method protected abstract process(Lorg/json/JSONObject;)V
.end method

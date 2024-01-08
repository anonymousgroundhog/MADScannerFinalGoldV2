.class Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;
.super Ljava/lang/Object;
.source "ProjectModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProjectDataFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private input:Ljava/io/InputStream;

.field private final model:Lcom/brakefield/infinitestudio/ProjectStore$Project;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectModelLoader;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ProjectModelLoader;Lcom/brakefield/infinitestudio/ProjectStore$Project;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;->this$0:Lcom/brakefield/infinitestudio/ProjectModelLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;->input:Ljava/io/InputStream;

    .line 39
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;->model:Lcom/brakefield/infinitestudio/ProjectStore$Project;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 70
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 76
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;->model:Lcom/brakefield/infinitestudio/ProjectStore$Project;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->getPreviewThumb()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;->input:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 49
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;->input:Ljava/io/InputStream;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method

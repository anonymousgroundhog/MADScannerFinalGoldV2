.class public Lcom/brakefield/infinitestudio/ProjectModelLoaderFactory;
.super Ljava/lang/Object;
.source "ProjectModelLoaderFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/brakefield/infinitestudio/ProjectStore$Project;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/brakefield/infinitestudio/ProjectStore$Project;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance p1, Lcom/brakefield/infinitestudio/ProjectModelLoader;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ProjectModelLoader;-><init>()V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method

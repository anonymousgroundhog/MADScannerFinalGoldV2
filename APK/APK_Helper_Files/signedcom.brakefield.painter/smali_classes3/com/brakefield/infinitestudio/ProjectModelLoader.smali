.class public final Lcom/brakefield/infinitestudio/ProjectModelLoader;
.super Ljava/lang/Object;
.source "ProjectModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/brakefield/infinitestudio/ProjectStore$Project;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/brakefield/infinitestudio/ProjectStore$Project;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ProjectStore$Project;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->getPreviewLocation()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;

    invoke-direct {p4, p0, p1}, Lcom/brakefield/infinitestudio/ProjectModelLoader$ProjectDataFetcher;-><init>(Lcom/brakefield/infinitestudio/ProjectModelLoader;Lcom/brakefield/infinitestudio/ProjectStore$Project;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 20
    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ProjectModelLoader;->buildLoadData(Lcom/brakefield/infinitestudio/ProjectStore$Project;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectModelLoader;->handles(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Z

    move-result p1

    return p1
.end method

.class public Lcom/brakefield/infinitestudio/StudioAppGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "StudioAppGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 17
    const-class p1, Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/brakefield/infinitestudio/ProjectModelLoaderFactoryOld;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ProjectModelLoaderFactoryOld;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 18
    const-class p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/brakefield/infinitestudio/ProjectModelLoaderFactory;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ProjectModelLoaderFactory;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method

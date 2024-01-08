.class public Lcom/brakefield/infinitestudio/image/ImageBean;
.super Ljava/lang/Object;
.source "ImageBean.java"


# instance fields
.field public imageUrl:Ljava/lang/String;

.field local:Z

.field public src:Ljava/lang/String;

.field public thumbUrl:Ljava/lang/String;

.field public vectorURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/ImageBean;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/ImageBean;->thumbUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/ImageBean;->thumbUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/ImageBean;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/image/ImageBean;->local:Z

    return v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/ImageBean;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLocal(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/image/ImageBean;->local:Z

    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/ImageBean;->thumbUrl:Ljava/lang/String;

    return-void
.end method

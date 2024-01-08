.class public Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;
.super Lcom/brakefield/infinitestudio/image/ImageBean;
.source "ActivityOnlineGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PainterBean"
.end annotation


# instance fields
.field public app:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public deleted:Z

.field public id:Ljava/lang/String;

.field public loved:Z

.field public numOfLoves:I

.field public owned:Z

.field public reported:Z

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/ImageBean;-><init>()V

    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->reported:Z

    .line 473
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->deleted:Z

    .line 474
    iput v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->numOfLoves:I

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    const/4 v0, 0x1

    .line 511
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->deleted:Z

    return-void
.end method

.method public getAppIcon()I
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->app:Ljava/lang/String;

    const-string v1, "Painter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->icon_painter:I

    return v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->app:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v1, Lkotlin/text/jdk8/Qq/kCWfCxpUPBTL;->DeLjcxTtbATrZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->icon_design:I

    return v0

    .line 521
    :cond_1
    sget v0, Lcom/brakefield/infinitestudio/R$drawable;->indent:I

    return v0
.end method

.method public getNumberOfLoves()I
    .locals 2

    .line 480
    iget v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->numOfLoves:I

    .line 481
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->loved:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public report()V
    .locals 1

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->reported:Z

    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->app:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->artist:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public toggleLove()Z
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->loved:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->loved:Z

    return v0
.end method

.method public userLovesImage()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;->loved:Z

    return v0
.end method

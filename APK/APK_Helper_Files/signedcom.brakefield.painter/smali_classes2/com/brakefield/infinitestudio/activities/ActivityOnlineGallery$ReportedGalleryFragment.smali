.class public Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$ReportedGalleryFragment;
.super Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;
.source "ActivityOnlineGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportedGalleryFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getQueryURL(I)Ljava/lang/String;
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$ReportedGalleryFragment;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->getPageSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$ReportedGalleryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->getAppName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getReportedArtworkURL(IIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Reported"

    return-object v0
.end method

.method public populateGallery()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$ReportedGalleryFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->access$400()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    .line 323
    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$ReportedGalleryFragment;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$ReportedGalleryFragment;->refreshCollection()V

    return-void
.end method

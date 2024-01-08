.class public Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;
.super Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;
.source "ActivityOnlineGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrendingGalleryFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getQueryURL(I)Ljava/lang/String;
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;->scrollPageLoader:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->getPageSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->getAppName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getArtworkURL(IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 274
    sget v0, Lcom/brakefield/infinitestudio/R$string;->trending:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public populateGallery()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->access$100()Ljava/util/List;

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

    .line 280
    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$TrendingGalleryFragment;->refreshCollection()V

    return-void
.end method

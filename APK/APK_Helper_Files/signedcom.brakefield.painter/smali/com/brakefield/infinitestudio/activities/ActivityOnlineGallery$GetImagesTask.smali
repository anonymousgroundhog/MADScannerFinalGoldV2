.class public Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;
.super Landroid/os/AsyncTask;
.source "ActivityOnlineGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetImagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

.field private final fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation
.end field

.field json:Lorg/json/JSONObject;

.field private final page:I

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;ILjava/lang/String;)V
    .locals 1

    .line 540
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 541
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 542
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->images:Ljava/util/List;

    .line 543
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->callback:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

    .line 544
    iput p3, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->page:I

    .line 545
    iput-object p4, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 530
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 4

    .line 559
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 564
    :cond_0
    iget v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->page:I

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->getQueryURL(I)Ljava/lang/String;

    move-result-object p1

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->userId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v3, "user_id"

    .line 568
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->userId:Ljava/lang/String;

    sget-object v3, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "show_reported"

    const-string v3, "1"

    .line 570
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_1
    sget-object v2, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-static {p1, v2, v1}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 580
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->json:Lorg/json/JSONObject;

    const-string p1, "responseData"

    .line 583
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "results"

    .line 584
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 586
    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery;->getImagesFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 588
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 589
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 590
    check-cast v1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$PainterBean;

    .line 591
    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->images:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 595
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 530
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 603
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 604
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;

    if-eqz p1, :cond_0

    .line 606
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->refreshCollection()V

    .line 607
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->hideProgress()V

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->callback:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;->pageLoaded(I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 550
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 551
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GetImagesTask;->fragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/activities/ActivityOnlineGallery$GalleryFragment;->showProgress()V

    :cond_0
    return-void
.end method

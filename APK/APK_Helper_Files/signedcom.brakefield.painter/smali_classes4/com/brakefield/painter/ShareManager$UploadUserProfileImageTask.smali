.class public Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;
.super Landroid/os/AsyncTask;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadUserProfileImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/content/Context;

.field private final session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 343
    iput-object p1, p0, Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;->activity:Landroid/content/Context;

    .line 344
    iput-object p2, p0, Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .line 350
    new-instance v0, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;

    .line 351
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getUploadUserIconURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 353
    aget-object p1, p1, v1

    const-string/jumbo v1, "user_id"

    const-string v2, "access_token"

    .line 355
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 357
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserAccessToken()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 359
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->constructBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;->sendFile([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 361
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 337
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 337
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ShareManager$UploadUserProfileImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

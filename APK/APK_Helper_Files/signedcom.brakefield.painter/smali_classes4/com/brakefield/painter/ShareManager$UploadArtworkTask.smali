.class public Lcom/brakefield/painter/ShareManager$UploadArtworkTask;
.super Landroid/os/AsyncTask;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadArtworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/content/Context;

.field private final session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

.field private uploadDialog:Lcom/brakefield/infinitestudio/account/UploadDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->activity:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 179
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->doInBackground([Ljava/io/File;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/Void;
    .locals 5

    .line 198
    new-instance v0, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getUploadArtworkURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "scope"

    const-string v2, "app"

    .line 199
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {}, Lcom/brakefield/infinitestudio/account/UserFunctions;->getScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v3, Lcom/google/android/exoplayer2/source/smoothstreaming/dG/norGc;->pfPMC:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p1, p1, v3

    iget-object v3, p0, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 203
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->constructBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;->sendFile([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Testing upload artwork:"

    .line 204
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->uploadDialog:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-static {p1}, Lcom/brakefield/painter/ShareManager;->dismissUploadDialog(Lcom/brakefield/infinitestudio/account/UploadDialog;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->activity:Landroid/content/Context;

    invoke-static {v0}, Lcom/brakefield/painter/ShareManager;->launchUploadDialog(Landroid/content/Context;)Lcom/brakefield/infinitestudio/account/UploadDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ShareManager$UploadArtworkTask;->uploadDialog:Lcom/brakefield/infinitestudio/account/UploadDialog;

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;
.super Landroid/os/AsyncTask;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadPaletteTask"
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

.field private final paletteName:Ljava/lang/String;

.field private final session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

.field private uploadDialog:Lcom/brakefield/infinitestudio/account/UploadDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;Ljava/lang/String;)V
    .locals 0

    .line 512
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->activity:Landroid/content/Context;

    .line 514
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 515
    iput-object p3, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->paletteName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .line 527
    new-instance v0, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getUploadPaletteURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 529
    aget-object p1, p1, v1

    const-string v1, "name"

    .line 531
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->paletteName:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 535
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v4}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->constructBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 531
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/infinitestudio/utils/HttpFileUploader;->sendFile([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 537
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 505
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 542
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 543
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->uploadDialog:Lcom/brakefield/infinitestudio/account/UploadDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/account/UploadDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 544
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->uploadDialog:Lcom/brakefield/infinitestudio/account/UploadDialog;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/account/UploadDialog;->finish()V

    const/4 p1, 0x0

    .line 545
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->uploadDialog:Lcom/brakefield/infinitestudio/account/UploadDialog;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 505
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 520
    new-instance v0, Lcom/brakefield/infinitestudio/account/UploadDialog;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->activity:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/account/UploadDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$UploadPaletteTask;->uploadDialog:Lcom/brakefield/infinitestudio/account/UploadDialog;

    .line 521
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/account/UploadDialog;->show()V

    return-void
.end method

.class Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$1;
.super Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;
.source "ImageSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public loadPage(I)Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;
    .locals 3

    .line 101
    new-instance v0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;-><init>(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;)V

    .line 102
    new-instance v1, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-direct {v1, v2, p1, v0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;-><init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;ILcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p1, v2}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

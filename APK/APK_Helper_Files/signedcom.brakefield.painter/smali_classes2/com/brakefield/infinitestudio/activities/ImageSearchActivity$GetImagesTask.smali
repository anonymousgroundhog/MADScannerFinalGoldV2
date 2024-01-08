.class public Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;
.super Landroid/os/AsyncTask;
.source "ImageSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetImagesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

.field dialog:Landroid/app/ProgressDialog;

.field page:I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;ILcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 276
    iput p2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->page:I

    .line 277
    iput-object p3, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->callback:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 269
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 311
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$500(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->strSearch:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$300(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;

    move-result-object v1

    iget v2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->page:I

    iget-object v3, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$400(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->getPageSize()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayParser;->parseFeed(Ljava/lang/String;Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;II)Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;

    move-result-object p1

    if-nez p1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->callback:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$000(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;->pageLoaded(I)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$400(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;

    move-result-object v0

    iget v1, p1, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;->totalItems:I

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->setTotalItems(I)V

    .line 315
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$000(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayPage;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 349
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 350
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->callback:Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$000(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;->pageLoaded(I)V

    .line 354
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->access$602(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;Z)Z

    .line 355
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    iget-boolean p1, p1, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->error:Z

    if-eqz p1, :cond_1

    return-void

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->refreshCollection()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 282
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 283
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->please_wait:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$GetImagesTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

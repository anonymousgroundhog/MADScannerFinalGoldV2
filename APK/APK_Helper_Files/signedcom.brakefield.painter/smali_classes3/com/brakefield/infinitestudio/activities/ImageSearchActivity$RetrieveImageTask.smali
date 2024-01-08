.class Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;
.super Landroid/os/AsyncTask;
.source "ImageSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetrieveImageTask"
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
.field dialog:Landroid/app/ProgressDialog;

.field image:Lcom/brakefield/infinitestudio/image/ImageBean;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;Lcom/brakefield/infinitestudio/image/ImageBean;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 396
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->image:Lcom/brakefield/infinitestudio/image/ImageBean;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 390
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 405
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->image:Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/ImageBean;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    .line 406
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Landroidx/constraintlayout/core/motion/afa/DQweKUOWMgsiFw;->bUfCLqCBHEKUSm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 407
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :try_start_1
    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 409
    :try_start_2
    invoke-static {p1, v1}, Lcom/brakefield/infinitestudio/FileManager;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 410
    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 411
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 412
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 413
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    if-eqz p1, :cond_3

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 407
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->setResult(I)V

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 390
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 420
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 423
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;->finish()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 401
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 402
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->this$0:Lcom/brakefield/infinitestudio/activities/ImageSearchActivity;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->please_wait:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/ImageSearchActivity$RetrieveImageTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

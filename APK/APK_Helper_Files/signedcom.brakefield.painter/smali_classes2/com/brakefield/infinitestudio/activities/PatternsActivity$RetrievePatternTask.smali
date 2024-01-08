.class Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;
.super Landroid/os/AsyncTask;
.source "PatternsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PatternsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetrievePatternTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field item:Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/PatternsActivity;Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->item:Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 207
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getPatternsPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->item:Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->item:Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 210
    :try_start_2
    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 208
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 221
    :cond_1
    sget-object v0, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->listener:Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->listener:Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;->loadPattern(Ljava/lang/String;)V

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->finish()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 202
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 203
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->please_wait:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.class Lcom/brakefield/painter/FileImporter$LoadPSDTask;
.super Landroid/os/AsyncTask;
.source "FileImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/FileImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadPSDTask"
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
.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private importUri:Lcom/brakefield/painter/FileImporter$ImportUri;

.field private final messageHandler:Lcom/brakefield/painter/FileImporter$MessageHandler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final uriHandler:Lcom/brakefield/painter/FileImporter$UriHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/brakefield/painter/FileImporter$ImportUri;Lcom/brakefield/painter/FileImporter$UriHandler;Lcom/brakefield/painter/FileImporter$MessageHandler;)V
    .locals 1

    .line 326
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 328
    iput-object p2, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->importUri:Lcom/brakefield/painter/FileImporter$ImportUri;

    .line 329
    iput-object p3, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->uriHandler:Lcom/brakefield/painter/FileImporter$UriHandler;

    .line 330
    iput-object p4, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->messageHandler:Lcom/brakefield/painter/FileImporter$MessageHandler;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 318
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1

    .line 346
    iget-object p1, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->importUri:Lcom/brakefield/painter/FileImporter$ImportUri;

    invoke-virtual {p1}, Lcom/brakefield/painter/FileImporter$ImportUri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 347
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {p1, v0}, Lcom/brakefield/painter/PainterLib;->loadPSD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 318
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 356
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->clearCache()V

    .line 357
    iget-object v0, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 361
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p1

    .line 363
    new-instance v0, Lcom/brakefield/painter/FileImporter$ImportUri;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->importUri:Lcom/brakefield/painter/FileImporter$ImportUri;

    iget-object v1, v1, Lcom/brakefield/painter/FileImporter$ImportUri;->fileType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/brakefield/painter/FileImporter$ImportUri;-><init>(Landroid/net/Uri;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->importUri:Lcom/brakefield/painter/FileImporter$ImportUri;

    .line 364
    iget-object p1, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->uriHandler:Lcom/brakefield/painter/FileImporter$UriHandler;

    invoke-interface {p1, v0}, Lcom/brakefield/painter/FileImporter$UriHandler;->handleUri(Lcom/brakefield/painter/FileImporter$ImportUri;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->messageHandler:Lcom/brakefield/painter/FileImporter$MessageHandler;

    const v0, 0x7f120189

    invoke-interface {p1, v0}, Lcom/brakefield/painter/FileImporter$MessageHandler;->show(I)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 337
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f120213

    .line 338
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 340
    iget-object v0, p0, Lcom/brakefield/painter/FileImporter$LoadPSDTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

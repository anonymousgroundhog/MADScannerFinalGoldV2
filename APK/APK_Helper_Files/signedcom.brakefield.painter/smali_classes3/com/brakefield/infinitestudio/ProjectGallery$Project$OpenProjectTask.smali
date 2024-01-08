.class public Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;
.super Landroid/os/AsyncTask;
.source "ProjectGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectGallery$Project;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenProjectTask"
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
.field private location:Ljava/lang/String;

.field final synthetic this$1:Lcom/brakefield/infinitestudio/ProjectGallery$Project;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ProjectGallery$Project;Ljava/lang/String;)V
    .locals 0

    .line 1551
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->this$1:Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1552
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1547
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 1558
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->this$1:Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->isZipFile()Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 1559
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getTempProjectPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/brakefield/infinitestudio/FileManager;->deleteRecursive(Ljava/io/File;)V

    .line 1560
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->location:Ljava/lang/String;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectZip;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 1562
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getTempProjectPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/brakefield/infinitestudio/FileManager;->deleteRecursive(Ljava/io/File;)V

    .line 1564
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->location:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "temp"

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/FileManager;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1566
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1547
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 1574
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->this$1:Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectGallery;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ProjectGallery;->access$1502(Lcom/brakefield/infinitestudio/ProjectGallery;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectGallery$Project$OpenProjectTask;->this$1:Lcom/brakefield/infinitestudio/ProjectGallery$Project;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectGallery$Project;->finishOpening()V

    return-void
.end method

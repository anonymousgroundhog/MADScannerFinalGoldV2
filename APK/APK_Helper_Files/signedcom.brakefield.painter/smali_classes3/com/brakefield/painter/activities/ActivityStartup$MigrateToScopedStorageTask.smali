.class Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;
.super Landroid/os/AsyncTask;
.source "ActivityStartup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityStartup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MigrateToScopedStorageTask"
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
.field migrationSuccessful:Z

.field private migrationTask:Lcom/brakefield/infinitestudio/FileManager$MigrationTask;

.field private progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityStartup;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/activities/ActivityStartup;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->this$0:Lcom/brakefield/painter/activities/ActivityStartup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->migrationSuccessful:Z

    .line 182
    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->migrationTask:Lcom/brakefield/infinitestudio/FileManager$MigrationTask;

    .line 183
    iput-object p3, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 189
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->this$0:Lcom/brakefield/painter/activities/ActivityStartup;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->migrationTask:Lcom/brakefield/infinitestudio/FileManager$MigrationTask;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p1, Lcom/brakefield/painter/activities/ActivityStartup;->FreeUpStorage:Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p1, v0, v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->copyAllFilesToScopedStorage(Landroid/app/Activity;Lcom/brakefield/infinitestudio/FileManager$MigrationTask;Landroid/widget/ProgressBar;Landroidx/activity/result/ActivityResultLauncher;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->migrationSuccessful:Z

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->this$0:Lcom/brakefield/painter/activities/ActivityStartup;

    sget-object v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;->SCOPED_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/FileManager;->setStorageDirectory(Landroid/content/Context;Lcom/brakefield/infinitestudio/FileManager$StorageType;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 175
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 198
    iget-boolean p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->migrationSuccessful:Z

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityStartup$MigrateToScopedStorageTask;->this$0:Lcom/brakefield/painter/activities/ActivityStartup;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivityStartup;->access$000(Lcom/brakefield/painter/activities/ActivityStartup;)V

    :cond_0
    return-void
.end method

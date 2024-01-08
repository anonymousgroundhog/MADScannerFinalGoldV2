.class public Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;
.super Ljava/lang/Object;
.source "DriveServiceHelper.java"


# static fields
.field public static TYPE_3RD_PARTY_SHORTCUT:Ljava/lang/String; = "application/vnd.google-apps.drive-sdk"

.field public static TYPE_AUDIO:Ljava/lang/String; = "application/vnd.google-apps.audio"

.field public static TYPE_GOOGLE_APPS_SCRIPTS:Ljava/lang/String; = "application/vnd.google-apps.script"

.field public static TYPE_GOOGLE_DOCS:Ljava/lang/String; = "application/vnd.google-apps.document"

.field public static TYPE_GOOGLE_DRAWING:Ljava/lang/String; = "application/vnd.google-apps.drawing"

.field public static TYPE_GOOGLE_DRIVE_FILE:Ljava/lang/String; = "application/vnd.google-apps.file"

.field public static TYPE_GOOGLE_DRIVE_FOLDER:Ljava/lang/String; = "application/vnd.google-apps.folder"

.field public static TYPE_GOOGLE_FORMS:Ljava/lang/String; = "application/vnd.google-apps.form"

.field public static TYPE_GOOGLE_FUSION_TABLES:Ljava/lang/String; = "application/vnd.google-apps.fusiontable"

.field public static TYPE_GOOGLE_MY_MAPS:Ljava/lang/String; = "application/vnd.google-apps.map"

.field public static TYPE_GOOGLE_SHEETS:Ljava/lang/String; = "application/vnd.google-apps.spreadsheet"

.field public static TYPE_GOOGLE_SITES:Ljava/lang/String; = "application/vnd.google-apps.site"

.field public static TYPE_GOOGLE_SLIDES:Ljava/lang/String; = "application/vnd.google-apps.presentation"

.field public static TYPE_PHOTO:Ljava/lang/String; = "application/vnd.google-apps.photo"

.field public static TYPE_UNKNOWN:Ljava/lang/String; = "application/vnd.google-apps.unknown"

.field public static TYPE_VIDEO:Ljava/lang/String; = "application/vnd.google-apps.video"

.field public static TYPE_ZIP:Ljava/lang/String; = "application/zip"


# instance fields
.field private final mDriveService:Lcom/google/api/services/drive/Drive;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 77
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    return-void
.end method

.method static synthetic lambda$openFileUsingStorageAccessFramework$12(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroidx/core/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 292
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 293
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "_display_name"

    .line 294
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 295
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 300
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 301
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 306
    :cond_2
    invoke-static {v1, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 299
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1

    .line 296
    :cond_4
    :try_start_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Empty cursor returned for file."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz v0, :cond_5

    .line 292
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p0
.end method


# virtual methods
.method public createFile()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public createFilePickerIntent()Landroid/content/Intent;
    .locals 2

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "text/plain"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public createFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public createTextFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public deleteFolderFile(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public downloadFile(Ljava/io/File;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$createFile$8$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/google/api/services/drive/model/File;

    invoke-direct {v0}, Lcom/google/api/services/drive/model/File;-><init>()V

    const-string v1, "root"

    .line 222
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    .line 223
    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    const-string v1, "Untitled file"

    .line 224
    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$Create;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null result when requesting file creation."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$createFolder$4$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "root"

    .line 159
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 161
    :goto_0
    new-instance v1, Lcom/google/api/services/drive/model/File;

    invoke-direct {v1}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 162
    invoke-virtual {v1, p1}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    sget-object v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->TYPE_GOOGLE_DRIVE_FOLDER:Ljava/lang/String;

    .line 163
    invoke-virtual {p1, v1}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    .line 165
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$Create;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setId(Ljava/lang/String;)V

    return-object v0

    .line 166
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null result when requesting file creation."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$createTextFile$3$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    if-nez p1, :cond_0

    const-string p1, "root"

    .line 140
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 142
    :goto_0
    new-instance v0, Lcom/google/api/services/drive/model/File;

    invoke-direct {v0}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 143
    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    const-string/jumbo v0, "text/plain"

    .line 144
    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    .line 146
    invoke-static {v0, p3}, Lcom/google/api/client/http/ByteArrayContent;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object p2

    .line 147
    iget-object p3, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p3}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$Create;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    if-eqz p1, :cond_1

    .line 149
    new-instance p2, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-direct {p2}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;-><init>()V

    .line 150
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setId(Ljava/lang/String;)V

    return-object p2

    .line 148
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null result when requesting file creation."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$deleteFolderFile$7$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/Drive$Files;->delete(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$Delete;->execute()Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$downloadFile$6$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 202
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive$Files$Get;->executeMediaAndDownloadTo(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$queryFiles$11$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper()Lcom/google/api/services/drive/model/FileList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v0

    const-string v1, "drive"

    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/Drive$Files$List;->setSpaces(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/FileList;

    return-object v0
.end method

.method synthetic lambda$queryFiles$2$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    sget-object p1, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->tvU:Ljava/lang/String;

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' in parents"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    const-string v1, "files(id, name,size,createdTime,modifiedTime,starred,thumbnailLink)"

    invoke-virtual {p1, v1}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    const-string v1, "drive"

    invoke-virtual {p1, v1}, Lcom/google/api/services/drive/Drive$Files$List;->setSpaces(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/FileList;

    const/4 v1, 0x0

    .line 121
    :goto_1
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 122
    new-instance v2, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-direct {v2}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;-><init>()V

    .line 123
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/drive/model/File;

    .line 124
    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setId(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setName(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setSize(J)V

    .line 127
    :cond_1
    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getModifiedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getModifiedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setModifiedTime(Lcom/google/api/client/util/DateTime;)V

    .line 128
    :cond_2
    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getCreatedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getCreatedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setCreatedTime(Lcom/google/api/client/util/DateTime;)V

    .line 129
    :cond_3
    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getStarred()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getStarred()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setStarred(Ljava/lang/Boolean;)V

    .line 130
    :cond_4
    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getThumbnailLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getThumbnailLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setThumbnailLink(Ljava/lang/String;)V

    .line 131
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method synthetic lambda$readFile$9$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;)Landroidx/core/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$Get;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    .line 238
    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$Get;->executeMediaAsInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 240
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 241
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v0, v2}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 239
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0
.end method

.method synthetic lambda$saveFile$10$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/google/api/services/drive/model/File;

    invoke-direct {v0}, Lcom/google/api/services/drive/model/File;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    const-string/jumbo v0, "text/plain"

    .line 257
    invoke-static {v0, p2}, Lcom/google/api/client/http/ByteArrayContent;->fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object p2

    .line 258
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/api/services/drive/Drive$Files;->update(Ljava/lang/String;Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Update;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$Update;->execute()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$searchFile$0$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/exoplayer2/source/smoothstreaming/dG/norGc;->iSvKeRKtsizzi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    const-string p2, "drive"

    .line 84
    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/Drive$Files$List;->setSpaces(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    const-string p2, "files(id, name,size,createdTime,modifiedTime,starred)"

    .line 85
    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/FileList;

    .line 87
    new-instance p2, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-direct {p2}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setId(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getModifiedTime()Lcom/google/api/client/util/DateTime;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setModifiedTime(Lcom/google/api/client/util/DateTime;)V

    .line 92
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setSize(J)V

    :cond_0
    return-object p2
.end method

.method synthetic lambda$searchFolder$1$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;)Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mimeType = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->TYPE_GOOGLE_DRIVE_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    const-string v0, "drive"

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive$Files$List;->setSpaces(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/FileList;

    .line 104
    new-instance v0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;-><init>()V

    .line 105
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/drive/model/File;

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setId(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setName(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method synthetic lambda$uploadFile$5$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    if-nez p1, :cond_0

    const-string p1, "root"

    .line 175
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 177
    :goto_0
    new-instance v0, Lcom/google/api/services/drive/model/File;

    invoke-direct {v0}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 178
    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    .line 180
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 182
    new-instance v0, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    invoke-direct {v0}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;-><init>()V

    .line 183
    invoke-virtual {v0, p4}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->setImage(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    const-string p4, "image/jpeg"

    .line 184
    invoke-virtual {v0, p4}, Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;

    .line 185
    new-instance p4, Lcom/google/api/services/drive/model/File$ContentHints;

    invoke-direct {p4}, Lcom/google/api/services/drive/model/File$ContentHints;-><init>()V

    .line 186
    invoke-virtual {p4, v0}, Lcom/google/api/services/drive/model/File$ContentHints;->setThumbnail(Lcom/google/api/services/drive/model/File$ContentHints$Thumbnail;)Lcom/google/api/services/drive/model/File$ContentHints;

    .line 187
    invoke-virtual {p1, p4}, Lcom/google/api/services/drive/model/File;->setContentHints(Lcom/google/api/services/drive/model/File$ContentHints;)Lcom/google/api/services/drive/model/File;

    .line 189
    :cond_1
    new-instance p4, Lcom/google/api/client/http/FileContent;

    invoke-direct {p4, p2, p3}, Lcom/google/api/client/http/FileContent;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 190
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mDriveService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lcom/google/api/services/drive/Drive$Files;->create(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$Create;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    .line 191
    new-instance p2, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-direct {p2}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;-><init>()V

    .line 192
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setId(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->setName(Ljava/lang/String;)V

    return-object p2
.end method

.method public openFileUsingStorageAccessFramework(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda7;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public queryFiles()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/api/services/drive/model/FileList;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public queryFiles(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public readFile(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public saveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public searchFile(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public searchFolder(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public uploadFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda12;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

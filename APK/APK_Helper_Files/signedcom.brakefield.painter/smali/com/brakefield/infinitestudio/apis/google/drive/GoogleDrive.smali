.class public Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;
.super Ljava/lang/Object;
.source "GoogleDrive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;
    }
.end annotation


# instance fields
.field private final SignIn:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private driveServiceHelper:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->SignIn:Landroidx/activity/result/ActivityResultLauncher;

    .line 38
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->handleLastSignIn()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->setupDriveService(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method private handleLastSignIn()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->setupDriveService(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    return-void
.end method

.method private setupDriveService(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->context:Landroid/content/Context;

    const-string v1, "https://www.googleapis.com/auth/drive.file"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccount(Landroid/accounts/Account;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 59
    new-instance p1, Lcom/google/api/services/drive/Drive$Builder;

    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v2

    invoke-direct {p1, v1, v2, v0}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    sget v0, Lcom/brakefield/infinitestudio/R$string;->app_name:I

    .line 60
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object p1

    .line 62
    new-instance v0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;-><init>(Lcom/google/api/services/drive/Drive;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->driveServiceHelper:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    return-void
.end method


# virtual methods
.method public deleteFolderFile(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->driveServiceHelper:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->deleteFolderFile(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->SignIn:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$deleteFolderFile$1$com-brakefield-infinitestudio-apis-google-drive-GoogleDrive(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->deleteFolderFile(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method

.method synthetic lambda$queryFiles$0$com-brakefield-infinitestudio-apis-google-drive-GoogleDrive(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->queryFiles(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method

.method public queryFiles(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;>;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->driveServiceHelper:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->queryFiles(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->SignIn:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

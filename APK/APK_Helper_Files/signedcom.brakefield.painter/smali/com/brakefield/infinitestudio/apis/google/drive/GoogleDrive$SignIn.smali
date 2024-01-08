.class public Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "GoogleDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignIn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;->this$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;

    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    return-void
.end method

.method static synthetic lambda$parseResult$1(Ljava/lang/Exception;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to sign in. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 65
    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;->createIntent(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createIntent(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/Intent;
    .locals 2

    .line 78
    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;->task:Ljava/lang/Runnable;

    .line 79
    new-instance p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p2, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 80
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/common/api/Scope;

    .line 81
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p2

    .line 82
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p2

    .line 83
    invoke-static {p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$parseResult$0$com-brakefield-infinitestudio-apis-google-drive-GoogleDrive$SignIn(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;->this$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->access$000(Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 71
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;->task:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;->parseResult(ILandroid/content/Intent;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Ljava/lang/Void;
    .locals 0

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn$$ExternalSyntheticLambda1;-><init>()V

    .line 72
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x0

    return-object p1
.end method

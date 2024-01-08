.class public final synthetic Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$SignIn;->lambda$parseResult$0$com-brakefield-infinitestudio-apis-google-drive-GoogleDrive$SignIn(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.class public final synthetic Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/android/gms/tasks/OnSuccessListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/gms/tasks/OnSuccessListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->lambda$queryFiles$0$com-brakefield-infinitestudio-apis-google-drive-GoogleDrive(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method

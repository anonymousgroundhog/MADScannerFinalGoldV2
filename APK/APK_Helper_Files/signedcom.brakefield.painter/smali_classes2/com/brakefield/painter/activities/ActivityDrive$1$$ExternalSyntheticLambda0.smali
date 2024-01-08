.class public final synthetic Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityDrive$1;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/activities/ActivityDrive$1;->lambda$onItemLongClick$1$com-brakefield-painter-activities-ActivityDrive$1(Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;Ljava/lang/Void;)V

    return-void
.end method

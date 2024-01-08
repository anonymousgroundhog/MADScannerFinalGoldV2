.class public final synthetic Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityDrive$1;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-virtual {v0, v1, p1, p2}, Lcom/brakefield/painter/activities/ActivityDrive$1;->lambda$onItemLongClick$2$com-brakefield-painter-activities-ActivityDrive$1(Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;Landroid/content/DialogInterface;I)V

    return-void
.end method

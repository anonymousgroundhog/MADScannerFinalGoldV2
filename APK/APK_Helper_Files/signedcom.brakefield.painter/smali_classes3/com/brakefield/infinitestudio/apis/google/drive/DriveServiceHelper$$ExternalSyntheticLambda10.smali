.class public final synthetic Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda10;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda10;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->lambda$queryFiles$11$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper()Lcom/google/api/services/drive/model/FileList;

    move-result-object v0

    return-object v0
.end method

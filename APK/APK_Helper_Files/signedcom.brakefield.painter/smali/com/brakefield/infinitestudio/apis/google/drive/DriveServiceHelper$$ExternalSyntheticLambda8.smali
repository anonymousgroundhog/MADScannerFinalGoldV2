.class public final synthetic Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->lambda$queryFiles$2$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

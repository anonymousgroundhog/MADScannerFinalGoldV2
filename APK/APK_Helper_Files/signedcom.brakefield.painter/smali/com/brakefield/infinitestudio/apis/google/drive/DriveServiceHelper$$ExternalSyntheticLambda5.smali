.class public final synthetic Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveServiceHelper;->lambda$saveFile$10$com-brakefield-infinitestudio-apis-google-drive-DriveServiceHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

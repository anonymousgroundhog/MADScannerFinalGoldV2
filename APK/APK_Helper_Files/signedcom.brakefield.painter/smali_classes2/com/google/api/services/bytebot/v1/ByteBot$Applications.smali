.class public Lcom/google/api/services/bytebot/v1/ByteBot$Applications;
.super Ljava/lang/Object;
.source "ByteBot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/bytebot/v1/ByteBot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Applications"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/bytebot/v1/ByteBot;


# direct methods
.method public constructor <init>(Lcom/google/api/services/bytebot/v1/ByteBot;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications;->this$0:Lcom/google/api/services/bytebot/v1/ByteBot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLicenseStatus(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;-><init>(Lcom/google/api/services/bytebot/v1/ByteBot$Applications;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications;->this$0:Lcom/google/api/services/bytebot/v1/ByteBot;

    invoke-virtual {p1, v0}, Lcom/google/api/services/bytebot/v1/ByteBot;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

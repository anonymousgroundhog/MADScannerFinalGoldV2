.class public final Lcom/google/api/services/bytebot/v1/model/UserMetadata;
.super Lcom/google/api/client/json/GenericJson;
.source "UserMetadata.java"


# instance fields
.field private customerId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isEducationalUser:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->clone()Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->clone()Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/bytebot/v1/model/UserMetadata;
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->clone()Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEducationalUser()Ljava/lang/Boolean;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->isEducationalUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/model/UserMetadata;
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    return-object p1
.end method

.method public setCustomerId(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/model/UserMetadata;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->customerId:Ljava/lang/String;

    return-object p0
.end method

.method public setIsEducationalUser(Ljava/lang/Boolean;)Lcom/google/api/services/bytebot/v1/model/UserMetadata;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/model/UserMetadata;->isEducationalUser:Ljava/lang/Boolean;

    return-object p0
.end method

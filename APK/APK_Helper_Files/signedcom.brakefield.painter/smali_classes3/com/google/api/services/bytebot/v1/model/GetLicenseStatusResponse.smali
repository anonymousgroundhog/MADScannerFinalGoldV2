.class public final Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "GetLicenseStatusResponse.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private skuName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private user:Lcom/google/api/services/bytebot/v1/model/UserMetadata;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->clone()Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->clone()Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->clone()Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->skuName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/google/api/services/bytebot/v1/model/UserMetadata;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->user:Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    .locals 0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setSkuName(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->skuName:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->status:Ljava/lang/String;

    return-object p0
.end method

.method public setUser(Lcom/google/api/services/bytebot/v1/model/UserMetadata;)Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;->user:Lcom/google/api/services/bytebot/v1/model/UserMetadata;

    return-object p0
.end method

.class public Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
.super Lcom/google/api/services/bytebot/v1/ByteBotRequest;
.source "ByteBot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/bytebot/v1/ByteBot$Applications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetLicenseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/bytebot/v1/ByteBotRequest<",
        "Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "v1/{+name}:getLicenseStatus"


# instance fields
.field private final NAME_PATTERN:Ljava/util/regex/Pattern;

.field private debug:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/bytebot/v1/ByteBot$Applications;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/bytebot/v1/ByteBot$Applications;Ljava/lang/String;)V
    .locals 6

    .line 195
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->this$1:Lcom/google/api/services/bytebot/v1/ByteBot$Applications;

    .line 196
    iget-object v1, p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications;->this$0:Lcom/google/api/services/bytebot/v1/ByteBot;

    const-string v2, "GET"

    const-string/jumbo v3, "v1/{+name}:getLicenseStatus"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/bytebot/v1/model/GetLicenseStatusResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;-><init>(Lcom/google/api/services/bytebot/v1/ByteBot;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string v0, "^applications/[^/]+$"

    .line 175
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->NAME_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "Required parameter name must be specified."

    .line 197
    invoke-static {p2, v1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->name:Ljava/lang/String;

    .line 198
    iget-object p1, p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications;->this$0:Lcom/google/api/services/bytebot/v1/ByteBot;

    invoke-virtual {p1}, Lcom/google/api/services/bytebot/v1/ByteBot;->getSuppressPatternChecks()Z

    move-result p1

    if-nez p1, :cond_0

    .line 199
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    const-string p2, "Parameter name must conform to the pattern ^applications/[^/]+$"

    invoke-static {p1, p2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-super {p0}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-super {p0}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Ljava/lang/Boolean;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->debug:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 318
    invoke-super {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public set$Xgafv(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 217
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->set$Xgafv(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic set$Xgafv(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->set$Xgafv(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 222
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setAccessToken(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setAccessToken(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setAlt(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setCallback(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 232
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setCallback(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setCallback(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setCallback(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setDebug(Ljava/lang/Boolean;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->debug:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 237
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setFields(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 242
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setKey(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->this$1:Lcom/google/api/services/bytebot/v1/ByteBot$Applications;

    iget-object v0, v0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications;->this$0:Lcom/google/api/services/bytebot/v1/ByteBot;

    invoke-virtual {v0}, Lcom/google/api/services/bytebot/v1/ByteBot;->getSuppressPatternChecks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Parameter name must conform to the pattern ^applications/[^/]+$"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 297
    :cond_0
    iput-object p1, p0, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 247
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 252
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 257
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setUploadProtocol(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 267
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setUploadProtocol(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setUploadProtocol(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setUploadProtocol(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

.method public setUploadType(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;
    .locals 0

    .line 262
    invoke-super {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBotRequest;->setUploadType(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    return-object p1
.end method

.method public bridge synthetic setUploadType(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBotRequest;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;->setUploadType(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Applications$GetLicenseStatus;

    move-result-object p1

    return-object p1
.end method

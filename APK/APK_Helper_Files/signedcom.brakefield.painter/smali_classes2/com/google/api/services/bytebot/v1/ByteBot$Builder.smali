.class public final Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
.source "ByteBot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/bytebot/v1/ByteBot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 7

    const-string v3, "https://bytebot.googleapis.com/"

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 359
    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;Z)V

    const-string p1, "batch"

    .line 366
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->build()Lcom/google/api/services/bytebot/v1/ByteBot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->build()Lcom/google/api/services/bytebot/v1/ByteBot;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/api/services/bytebot/v1/ByteBot;
    .locals 1

    .line 372
    new-instance v0, Lcom/google/api/services/bytebot/v1/ByteBot;

    invoke-direct {v0, p0}, Lcom/google/api/services/bytebot/v1/ByteBot;-><init>(Lcom/google/api/services/bytebot/v1/ByteBot$Builder;)V

    return-object v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 397
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public bridge synthetic setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBatchPath(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 387
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public setByteBotRequestInitializer(Lcom/google/api/services/bytebot/v1/ByteBotRequestInitializer;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 422
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 428
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 392
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 377
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 382
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressAllChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 412
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressPatternChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 402
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/bytebot/v1/ByteBot$Builder;
    .locals 0

    .line 407
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/bytebot/v1/ByteBot$Builder;

    return-object p1
.end method

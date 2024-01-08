.class public Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;
.super Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;
.source "UserFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/UserFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportArtwork"
.end annotation


# instance fields
.field private final itemId:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;->reason:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;->message:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;->itemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 4

    .line 113
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getReportArtworkURL()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;->reason:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$ReportArtwork;->itemId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getReportArtworkPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-static {v0, v2, v1}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

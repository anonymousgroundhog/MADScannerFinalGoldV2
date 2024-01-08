.class public Lcom/brakefield/infinitestudio/account/UserFunctions$CheckUserVerified;
.super Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;
.source "UserFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/UserFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckUserVerified"
.end annotation


# instance fields
.field private final session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$CheckUserVerified;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 4

    .line 257
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getCheckUserVerifiedURL()Ljava/lang/String;

    move-result-object v0

    .line 258
    sget-object v1, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->GET:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$CheckUserVerified;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$CheckUserVerified;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;->getUserAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->constructBasicAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

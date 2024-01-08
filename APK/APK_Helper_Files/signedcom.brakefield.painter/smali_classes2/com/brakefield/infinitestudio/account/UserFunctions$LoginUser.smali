.class public Lcom/brakefield/infinitestudio/account/UserFunctions$LoginUser;
.super Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;
.source "UserFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/UserFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginUser"
.end annotation


# instance fields
.field private final emailAddress:Ljava/lang/String;

.field private final password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$LoginUser;->emailAddress:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$LoginUser;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 4

    .line 57
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getLoginURL()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$LoginUser;->emailAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$LoginUser;->password:Ljava/lang/String;

    invoke-static {}, Lcom/brakefield/infinitestudio/account/UserFunctions;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getLoginPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    sget-object v2, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-static {v0, v2, v1}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

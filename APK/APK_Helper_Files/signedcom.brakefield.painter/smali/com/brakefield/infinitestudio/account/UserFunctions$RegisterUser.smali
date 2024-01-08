.class public Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;
.super Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;
.source "UserFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/UserFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisterUser"
.end annotation


# instance fields
.field private final emailAddress:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;->username:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;->emailAddress:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 5

    .line 77
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getRegisterURL()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;->emailAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;->password:Ljava/lang/String;

    invoke-static {}, Lcom/brakefield/infinitestudio/account/UserFunctions;->getScope()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getRegisterPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-static {v0, v2, v1}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

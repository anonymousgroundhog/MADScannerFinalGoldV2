.class public Lcom/brakefield/infinitestudio/account/UserFunctions$ResetPassword;
.super Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;
.source "UserFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/UserFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetPassword"
.end annotation


# instance fields
.field private final emailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$ResetPassword;->emailAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 3

    .line 93
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getResetPasswordURL()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$ResetPassword;->emailAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getResetPasswordPostData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-static {v0, v2, v1}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

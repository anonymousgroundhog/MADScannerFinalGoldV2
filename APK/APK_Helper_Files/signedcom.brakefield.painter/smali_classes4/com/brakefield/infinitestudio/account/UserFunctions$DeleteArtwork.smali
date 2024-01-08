.class public Lcom/brakefield/infinitestudio/account/UserFunctions$DeleteArtwork;
.super Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;
.source "UserFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/account/UserFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteArtwork"
.end annotation


# instance fields
.field private final itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$DeleteArtwork;->itemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/String;
    .locals 3

    .line 161
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getDeleteArtworkURL()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/brakefield/infinitestudio/account/UserFunctions$DeleteArtwork;->itemId:Ljava/lang/String;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getDeleteArtworkPostData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    sget-object v2, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-static {v0, v2, v1}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

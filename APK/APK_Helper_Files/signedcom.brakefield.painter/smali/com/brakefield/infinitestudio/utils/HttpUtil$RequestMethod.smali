.class public final enum Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;
.super Ljava/lang/Enum;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/utils/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

.field public static final enum DELETE:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

.field public static final enum GET:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

.field public static final enum POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

.field public static final enum PUT:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;
    .locals 4

    .line 16
    sget-object v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->GET:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    sget-object v1, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    sget-object v2, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->DELETE:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    sget-object v3, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->PUT:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    filled-new-array {v0, v1, v2, v3}, [Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->GET:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    .line 18
    new-instance v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    .line 19
    new-instance v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    const-string v1, "DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->DELETE:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    .line 20
    new-instance v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    const-string v1, "PUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->PUT:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    .line 16
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->$values()[Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->$VALUES:[Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;
    .locals 1

    .line 16
    const-class v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;
    .locals 1

    .line 16
    sget-object v0, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->$VALUES:[Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    return-object v0
.end method

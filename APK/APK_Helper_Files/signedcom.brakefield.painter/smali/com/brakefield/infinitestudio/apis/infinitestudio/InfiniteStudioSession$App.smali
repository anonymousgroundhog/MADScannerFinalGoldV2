.class public final enum Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;
.super Ljava/lang/Enum;
.source "InfiniteStudioSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "App"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

.field public static final enum DESIGN:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

.field public static final enum PAINTER:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;
    .locals 2

    .line 7
    sget-object v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->PAINTER:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    sget-object v1, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->DESIGN:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    filled-new-array {v0, v1}, [Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    const-string v1, "PAINTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->PAINTER:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    .line 9
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    const-string v1, "DESIGN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->DESIGN:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    .line 7
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->$values()[Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->$VALUES:[Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;
    .locals 1

    .line 7
    const-class v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;
    .locals 1

    .line 7
    sget-object v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->$VALUES:[Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession$App;

    return-object v0
.end method

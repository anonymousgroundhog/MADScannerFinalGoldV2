.class public final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;
.super Ljava/lang/Enum;
.source "PreserveAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

.field public static final enum Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

.field public static final enum Slice:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;
    .locals 2

    .line 154
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    filled-new-array {v0, v1}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 160
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    const-string v1, "Meet"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    .line 165
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    const-string v1, "Slice"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    .line 154
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;
    .locals 1

    .line 154
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;
    .locals 1

    .line 154
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio$Scale;

    return-object v0
.end method

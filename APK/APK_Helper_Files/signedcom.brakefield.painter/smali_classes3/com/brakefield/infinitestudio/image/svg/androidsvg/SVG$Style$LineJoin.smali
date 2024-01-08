.class public final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineJoin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

.field public static final enum Bevel:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

.field public static final enum Miter:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

.field public static final enum Round:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;
    .locals 3

    .line 1140
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Round:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    filled-new-array {v0, v1, v2}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1142
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    const-string v1, "Miter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    .line 1143
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    const-string v1, "Round"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Round:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    .line 1144
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    const-string v1, "Bevel"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    .line 1140
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;
    .locals 1

    .line 1140
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;
    .locals 1

    .line 1140
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    return-object v0
.end method

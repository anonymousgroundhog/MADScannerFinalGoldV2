.class final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;
.super Ljava/lang/Enum;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AttribOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

.field public static final enum DASHMATCH:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

.field public static final enum EQUALS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

.field public static final enum EXISTS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

.field public static final enum INCLUDES:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;
    .locals 4

    .line 71
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    filled-new-array {v0, v1, v2, v3}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    const-string v1, "EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    .line 74
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    const-string v1, "EQUALS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    .line 75
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    const-string v1, "INCLUDES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    .line 76
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    const-string v1, "DASHMATCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    .line 71
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;
    .locals 1

    .line 71
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;
    .locals 1

    .line 71
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$AttribOp;

    return-object v0
.end method

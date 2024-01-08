.class final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;
.super Ljava/lang/Enum;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Combinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

.field public static final enum CHILD:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

.field public static final enum DESCENDANT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

.field public static final enum FOLLOWS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;
    .locals 3

    .line 64
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->CHILD:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    filled-new-array {v0, v1, v2}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->blWzAEBkPfd:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    .line 67
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    const-string v1, "CHILD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->CHILD:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    .line 68
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    const-string v1, "FOLLOWS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    .line 64
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;
    .locals 1

    .line 64
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;
    .locals 1

    .line 64
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$Combinator;

    return-object v0
.end method

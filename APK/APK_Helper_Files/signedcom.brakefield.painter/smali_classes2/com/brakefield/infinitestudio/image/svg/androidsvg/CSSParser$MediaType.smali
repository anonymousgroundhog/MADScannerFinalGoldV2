.class final enum Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;
.super Ljava/lang/Enum;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum all:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum aural:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum braille:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum embossed:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum handheld:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum print:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum projection:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum screen:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum speech:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum tty:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

.field public static final enum tv:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;
    .locals 11

    .line 48
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->all:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->aural:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v2, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->braille:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v3, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->embossed:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->handheld:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->print:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v6, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->projection:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v7, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->screen:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v8, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->speech:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v9, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->tty:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    sget-object v10, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->tv:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    filled-new-array/range {v0 .. v10}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string v1, "all"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->all:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 52
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string v1, "aural"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->aural:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 53
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string v1, "braille"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->braille:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 54
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string v1, "embossed"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->embossed:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 55
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string v1, "handheld"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->handheld:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 56
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string/jumbo v1, "print"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->print:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 57
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string/jumbo v1, "projection"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->projection:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 58
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string/jumbo v1, "screen"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->screen:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 59
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string/jumbo v1, "speech"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->speech:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 60
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string/jumbo v1, "tty"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->tty:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 61
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    const-string/jumbo v1, "tv"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->tv:Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    .line 48
    invoke-static {}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->$values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;
    .locals 1

    .line 48
    const-class v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;
    .locals 1

    .line 48
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->$VALUES:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/CSSParser$MediaType;

    return-object v0
.end method

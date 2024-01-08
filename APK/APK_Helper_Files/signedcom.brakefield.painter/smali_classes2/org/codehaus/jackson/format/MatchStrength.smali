.class public final enum Lorg/codehaus/jackson/format/MatchStrength;
.super Ljava/lang/Enum;
.source "MatchStrength.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codehaus/jackson/format/MatchStrength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/format/MatchStrength;

.field public static final enum FULL_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

.field public static final enum INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

.field public static final enum NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

.field public static final enum SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

.field public static final enum WEAK_MATCH:Lorg/codehaus/jackson/format/MatchStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lorg/codehaus/jackson/format/MatchStrength;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/jackson/format/MatchStrength;->NO_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    .line 27
    new-instance v1, Lorg/codehaus/jackson/format/MatchStrength;

    const-string v2, "INCONCLUSIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/codehaus/jackson/format/MatchStrength;->INCONCLUSIVE:Lorg/codehaus/jackson/format/MatchStrength;

    .line 39
    new-instance v2, Lorg/codehaus/jackson/format/MatchStrength;

    const-string v3, "WEAK_MATCH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/codehaus/jackson/format/MatchStrength;->WEAK_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    .line 50
    new-instance v3, Lorg/codehaus/jackson/format/MatchStrength;

    const-string v4, "SOLID_MATCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/codehaus/jackson/format/MatchStrength;->SOLID_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    .line 62
    new-instance v4, Lorg/codehaus/jackson/format/MatchStrength;

    const-string v5, "FULL_MATCH"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/codehaus/jackson/format/MatchStrength;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/codehaus/jackson/format/MatchStrength;->FULL_MATCH:Lorg/codehaus/jackson/format/MatchStrength;

    .line 12
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/codehaus/jackson/format/MatchStrength;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/format/MatchStrength;->$VALUES:[Lorg/codehaus/jackson/format/MatchStrength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/format/MatchStrength;
    .locals 1

    .line 12
    const-class v0, Lorg/codehaus/jackson/format/MatchStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/format/MatchStrength;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/jackson/format/MatchStrength;
    .locals 1

    .line 12
    sget-object v0, Lorg/codehaus/jackson/format/MatchStrength;->$VALUES:[Lorg/codehaus/jackson/format/MatchStrength;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/format/MatchStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/format/MatchStrength;

    return-object v0
.end method

.class public final enum Lcom/brakefield/painter/billing/PainterVersion;
.super Ljava/lang/Enum;
.source "PainterVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/painter/billing/PainterVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/painter/billing/PainterVersion;

.field public static final enum BETA:Lcom/brakefield/painter/billing/PainterVersion;

.field public static final enum DEMO:Lcom/brakefield/painter/billing/PainterVersion;

.field public static final enum EDUCATION:Lcom/brakefield/painter/billing/PainterVersion;

.field public static final enum FREE:Lcom/brakefield/painter/billing/PainterVersion;

.field public static final enum TRIAL:Lcom/brakefield/painter/billing/PainterVersion;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/painter/billing/PainterVersion;
    .locals 5

    .line 3
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->FREE:Lcom/brakefield/painter/billing/PainterVersion;

    sget-object v1, Lcom/brakefield/painter/billing/PainterVersion;->BETA:Lcom/brakefield/painter/billing/PainterVersion;

    sget-object v2, Lcom/brakefield/painter/billing/PainterVersion;->DEMO:Lcom/brakefield/painter/billing/PainterVersion;

    sget-object v3, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    sget-object v4, Lcom/brakefield/painter/billing/PainterVersion;->EDUCATION:Lcom/brakefield/painter/billing/PainterVersion;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/brakefield/painter/billing/PainterVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/brakefield/painter/billing/PainterVersion;

    const-string v1, "FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterVersion;->FREE:Lcom/brakefield/painter/billing/PainterVersion;

    .line 5
    new-instance v0, Lcom/brakefield/painter/billing/PainterVersion;

    const-string v1, "BETA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterVersion;->BETA:Lcom/brakefield/painter/billing/PainterVersion;

    .line 6
    new-instance v0, Lcom/brakefield/painter/billing/PainterVersion;

    const-string v1, "DEMO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterVersion;->DEMO:Lcom/brakefield/painter/billing/PainterVersion;

    .line 7
    new-instance v0, Lcom/brakefield/painter/billing/PainterVersion;

    const-string v1, "TRIAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    .line 8
    new-instance v0, Lcom/brakefield/painter/billing/PainterVersion;

    const-string v1, "EDUCATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterVersion;->EDUCATION:Lcom/brakefield/painter/billing/PainterVersion;

    .line 3
    invoke-static {}, Lcom/brakefield/painter/billing/PainterVersion;->$values()[Lcom/brakefield/painter/billing/PainterVersion;

    move-result-object v0

    sput-object v0, Lcom/brakefield/painter/billing/PainterVersion;->$VALUES:[Lcom/brakefield/painter/billing/PainterVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/painter/billing/PainterVersion;
    .locals 1

    .line 3
    const-class v0, Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/painter/billing/PainterVersion;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/painter/billing/PainterVersion;
    .locals 1

    .line 3
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->$VALUES:[Lcom/brakefield/painter/billing/PainterVersion;

    invoke-virtual {v0}, [Lcom/brakefield/painter/billing/PainterVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/painter/billing/PainterVersion;

    return-object v0
.end method

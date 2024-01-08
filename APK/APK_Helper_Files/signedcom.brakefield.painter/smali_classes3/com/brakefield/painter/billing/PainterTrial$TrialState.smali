.class public final enum Lcom/brakefield/painter/billing/PainterTrial$TrialState;
.super Ljava/lang/Enum;
.source "PainterTrial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/billing/PainterTrial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/painter/billing/PainterTrial$TrialState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/painter/billing/PainterTrial$TrialState;

.field public static final enum AVAILABLE:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

.field public static final enum ENDED:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

.field public static final enum RUNNING:Lcom/brakefield/painter/billing/PainterTrial$TrialState;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/painter/billing/PainterTrial$TrialState;
    .locals 3

    .line 20
    sget-object v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->AVAILABLE:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    sget-object v1, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->RUNNING:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    sget-object v2, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->ENDED:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    filled-new-array {v0, v1, v2}, [Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->AVAILABLE:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    .line 22
    new-instance v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->RUNNING:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    .line 23
    new-instance v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    const-string v1, "ENDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->ENDED:Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    .line 20
    invoke-static {}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->$values()[Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    move-result-object v0

    sput-object v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->$VALUES:[Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/painter/billing/PainterTrial$TrialState;
    .locals 1

    .line 20
    const-class v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/painter/billing/PainterTrial$TrialState;
    .locals 1

    .line 20
    sget-object v0, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->$VALUES:[Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    invoke-virtual {v0}, [Lcom/brakefield/painter/billing/PainterTrial$TrialState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    return-object v0
.end method

.class public final enum Lcom/brakefield/painter/billing/PainterSku;
.super Ljava/lang/Enum;
.source "PainterSku.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/billing/Sku;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/painter/billing/PainterSku;",
        ">;",
        "Lcom/brakefield/infinitestudio/billing/Sku;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum DYNAMIC_FILLS:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum ESSENTIALS:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum FILTERS:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum GRADFATHERED_USER:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum MASTER_EDUCATION:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum MASTER_PLAY_SUBSCRIPTION:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum MASTER_POST:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum MASTER_PRE:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum MASTER_PROMO:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum MASTER_TRIAL:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum PATTERNS:Lcom/brakefield/painter/billing/PainterSku;

.field public static final enum PERSPECTIVE_GUIDES:Lcom/brakefield/painter/billing/PainterSku;


# instance fields
.field private final sku:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/painter/billing/PainterSku;
    .locals 12

    .line 5
    sget-object v0, Lcom/brakefield/painter/billing/PainterSku;->ESSENTIALS:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v1, Lcom/brakefield/painter/billing/PainterSku;->MASTER_TRIAL:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v2, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PRE:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v3, Lcom/brakefield/painter/billing/PainterSku;->MASTER_POST:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v4, Lcom/brakefield/painter/billing/PainterSku;->PERSPECTIVE_GUIDES:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v5, Lcom/brakefield/painter/billing/PainterSku;->DYNAMIC_FILLS:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v6, Lcom/brakefield/painter/billing/PainterSku;->PATTERNS:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v7, Lcom/brakefield/painter/billing/PainterSku;->FILTERS:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v8, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PLAY_SUBSCRIPTION:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v9, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PROMO:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v10, Lcom/brakefield/painter/billing/PainterSku;->MASTER_EDUCATION:Lcom/brakefield/painter/billing/PainterSku;

    sget-object v11, Lcom/brakefield/painter/billing/PainterSku;->GRADFATHERED_USER:Lcom/brakefield/painter/billing/PainterSku;

    filled-new-array/range {v0 .. v11}, [Lcom/brakefield/painter/billing/PainterSku;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v1, 0x0

    const-string v2, "essentials"

    const-string v3, "ESSENTIALS"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->ESSENTIALS:Lcom/brakefield/painter/billing/PainterSku;

    .line 8
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v1, 0x1

    const-string v2, "master_trial"

    const-string v3, "MASTER_TRIAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_TRIAL:Lcom/brakefield/painter/billing/PainterSku;

    .line 9
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v1, 0x2

    const-string v2, "master_pre"

    const-string v3, "MASTER_PRE"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PRE:Lcom/brakefield/painter/billing/PainterSku;

    .line 10
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v1, 0x3

    const-string v2, "master_post"

    const-string v3, "MASTER_POST"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_POST:Lcom/brakefield/painter/billing/PainterSku;

    .line 11
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v1, 0x4

    const-string v2, "perspective_guides"

    const-string v3, "PERSPECTIVE_GUIDES"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->PERSPECTIVE_GUIDES:Lcom/brakefield/painter/billing/PainterSku;

    .line 12
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v1, 0x5

    const-string v2, "gradient_fills"

    const-string v3, "DYNAMIC_FILLS"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->DYNAMIC_FILLS:Lcom/brakefield/painter/billing/PainterSku;

    .line 13
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v1, 0x6

    const-string v2, "patterns"

    const-string v3, "PATTERNS"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->PATTERNS:Lcom/brakefield/painter/billing/PainterSku;

    .line 14
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v1, 0x7

    const-string v2, "filters"

    const-string v3, "FILTERS"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->FILTERS:Lcom/brakefield/painter/billing/PainterSku;

    .line 15
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/16 v1, 0x8

    const-string v2, "master_play_subscription"

    const/4 v3, 0x0

    sget-object v3, Lcom/google/api/client/extensions/android/http/tr/rffuYzZsQ;->mEtelP:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PLAY_SUBSCRIPTION:Lcom/brakefield/painter/billing/PainterSku;

    .line 16
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/16 v1, 0x9

    const-string v2, "painter_master_promo_1"

    const-string v3, "MASTER_PROMO"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PROMO:Lcom/brakefield/painter/billing/PainterSku;

    .line 17
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/16 v1, 0xa

    const-string v2, "painter_education_master"

    const-string v3, "MASTER_EDUCATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->MASTER_EDUCATION:Lcom/brakefield/painter/billing/PainterSku;

    .line 18
    new-instance v0, Lcom/brakefield/painter/billing/PainterSku;

    const/16 v1, 0xb

    const-string v2, "grandfathered_user"

    const-string v3, "GRADFATHERED_USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/brakefield/painter/billing/PainterSku;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->GRADFATHERED_USER:Lcom/brakefield/painter/billing/PainterSku;

    .line 5
    invoke-static {}, Lcom/brakefield/painter/billing/PainterSku;->$values()[Lcom/brakefield/painter/billing/PainterSku;

    move-result-object v0

    sput-object v0, Lcom/brakefield/painter/billing/PainterSku;->$VALUES:[Lcom/brakefield/painter/billing/PainterSku;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/brakefield/painter/billing/PainterSku;->sku:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/painter/billing/PainterSku;
    .locals 1

    .line 5
    const-class v0, Lcom/brakefield/painter/billing/PainterSku;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/painter/billing/PainterSku;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/painter/billing/PainterSku;
    .locals 1

    .line 5
    sget-object v0, Lcom/brakefield/painter/billing/PainterSku;->$VALUES:[Lcom/brakefield/painter/billing/PainterSku;

    invoke-virtual {v0}, [Lcom/brakefield/painter/billing/PainterSku;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/painter/billing/PainterSku;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brakefield/painter/billing/PainterSku;->sku:Ljava/lang/String;

    return-object v0
.end method

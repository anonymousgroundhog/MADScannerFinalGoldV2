.class public Lcom/brakefield/painter/billing/PainterPurchases;
.super Lcom/brakefield/infinitestudio/billing/Purchases;
.source "PainterPurchases.java"


# static fields
.field public static final availablePurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

.field public static final legacyPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

.field public static final mockPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

.field public static final promoPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

.field public static final subscriptions:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    .line 8
    new-instance v2, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v3, Lcom/brakefield/painter/billing/PainterSku;->MASTER_TRIAL:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v4, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PRE:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v2, v4}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/brakefield/painter/billing/PainterPurchases;->availablePurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    new-array v1, v4, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    .line 13
    new-instance v2, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v5, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PROMO:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v2, v5}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    aput-object v2, v1, v3

    sput-object v1, Lcom/brakefield/painter/billing/PainterPurchases;->promoPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    new-array v1, v4, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    .line 17
    new-instance v2, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v5, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PLAY_SUBSCRIPTION:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v2, v5}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    aput-object v2, v1, v3

    sput-object v1, Lcom/brakefield/painter/billing/PainterPurchases;->subscriptions:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    .line 21
    new-instance v2, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v5, Lcom/brakefield/painter/billing/PainterSku;->ESSENTIALS:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v2, v5}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v5, Lcom/brakefield/painter/billing/PainterSku;->MASTER_POST:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v2, v5}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v5, Lcom/brakefield/painter/billing/PainterSku;->PERSPECTIVE_GUIDES:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v2, v5}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v2, Lcom/brakefield/painter/billing/PainterSku;->DYNAMIC_FILLS:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v2, Lcom/brakefield/painter/billing/PainterSku;->PATTERNS:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v2, Lcom/brakefield/painter/billing/PainterSku;->FILTERS:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    new-instance v0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v2, Lcom/brakefield/painter/billing/PainterSku;->MASTER_EDUCATION:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lcom/brakefield/painter/billing/PainterPurchases;->legacyPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    new-array v0, v4, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    .line 31
    new-instance v1, Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    sget-object v2, Lcom/brakefield/painter/billing/PainterSku;->GRADFATHERED_USER:Lcom/brakefield/painter/billing/PainterSku;

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;-><init>(Lcom/brakefield/infinitestudio/billing/Sku;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/brakefield/painter/billing/PainterPurchases;->mockPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/billing/Purchases;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllPurchases()[Lcom/brakefield/infinitestudio/billing/InAppPurchase;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    const/4 v1, 0x0

    .line 37
    sget-object v2, Lcom/brakefield/painter/billing/PainterPurchases;->availablePurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/brakefield/painter/billing/PainterPurchases;->promoPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/brakefield/painter/billing/PainterPurchases;->subscriptions:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/brakefield/painter/billing/PainterPurchases;->legacyPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/brakefield/painter/billing/PainterPurchases;->mockPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/billing/PainterPurchases;->merge([[Lcom/brakefield/infinitestudio/billing/InAppPurchase;)[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object v0

    return-object v0
.end method

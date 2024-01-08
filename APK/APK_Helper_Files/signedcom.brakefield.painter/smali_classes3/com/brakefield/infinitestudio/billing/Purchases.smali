.class public abstract Lcom/brakefield/infinitestudio/billing/Purchases;
.super Ljava/lang/Object;
.source "Purchases.java"


# instance fields
.field public final allPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;


# direct methods
.method public static synthetic $r8$lambda$CHWstRHg0TK07Zr_zmgi6t4Ot-I([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/billing/Purchases;->getAllPurchases()[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/billing/Purchases;->allPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    return-void
.end method

.method static synthetic lambda$merge$0(I)[Lcom/brakefield/infinitestudio/billing/InAppPurchase;
    .locals 0

    .line 11
    new-array p0, p0, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    return-object p0
.end method


# virtual methods
.method public find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;
    .locals 5

    .line 15
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/Purchases;->allPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 16
    invoke-virtual {v3, p1}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getAllPurchases()[Lcom/brakefield/infinitestudio/billing/InAppPurchase;
.end method

.method public varargs isPurchased([Ljava/lang/Object;)Z
    .locals 4

    .line 22
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 23
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->purchased()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected varargs merge([[Lcom/brakefield/infinitestudio/billing/InAppPurchase;)[Lcom/brakefield/infinitestudio/billing/InAppPurchase;
    .locals 1

    .line 11
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/brakefield/infinitestudio/billing/Purchases$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/billing/Purchases$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/brakefield/infinitestudio/billing/Purchases$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/billing/Purchases$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    return-object p1
.end method

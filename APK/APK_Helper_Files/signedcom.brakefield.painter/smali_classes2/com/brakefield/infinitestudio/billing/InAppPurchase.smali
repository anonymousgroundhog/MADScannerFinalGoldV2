.class public Lcom/brakefield/infinitestudio/billing/InAppPurchase;
.super Ljava/lang/Object;
.source "InAppPurchase.java"


# instance fields
.field private details:Lcom/android/billingclient/api/SkuDetails;

.field private purchaseDetails:Lcom/android/billingclient/api/Purchase;

.field private purchased:Z

.field public final sku:Lcom/brakefield/infinitestudio/billing/Sku;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/billing/Sku;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->purchased:Z

    .line 13
    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->sku:Lcom/brakefield/infinitestudio/billing/Sku;

    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->details:Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_0
    instance-of v0, p1, Lcom/brakefield/infinitestudio/billing/Sku;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->sku:Lcom/brakefield/infinitestudio/billing/Sku;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 43
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->sku:Lcom/brakefield/infinitestudio/billing/Sku;

    invoke-interface {v0}, Lcom/brakefield/infinitestudio/billing/Sku;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getDetails()Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->details:Lcom/android/billingclient/api/SkuDetails;

    return-object v0
.end method

.method public getPurchaseDetails()Lcom/android/billingclient/api/Purchase;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->purchaseDetails:Lcom/android/billingclient/api/Purchase;

    return-object v0
.end method

.method public price()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->details:Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public purchased()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->purchased:Z

    return v0
.end method

.method public setDetails(Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->details:Lcom/android/billingclient/api/SkuDetails;

    return-void
.end method

.method public setPurchaseDetails(Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->purchaseDetails:Lcom/android/billingclient/api/Purchase;

    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->details:Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->purchased:Z

    return-void
.end method

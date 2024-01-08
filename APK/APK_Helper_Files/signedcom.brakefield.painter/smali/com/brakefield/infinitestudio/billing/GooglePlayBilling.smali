.class public Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;
    }
.end annotation


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private billingUnavailable:Z

.field private connected:Z

.field private listener:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;

.field private purchaseStore:Lcom/brakefield/infinitestudio/billing/Purchases;


# direct methods
.method public static synthetic $r8$lambda$285hvqBq8VBDLj2W7QtJMxs7LsY(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V
    .locals 0

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->checkPurchases()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zptmd1BdLZputs0UHD6CrpPsiWI(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V
    .locals 0

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->populatePurchaseSkuDetails()V

    return-void
.end method

.method public static synthetic $r8$lambda$_WCbRMSZIbGrb6lfxxNGU1mAHRk(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V
    .locals 0

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->refreshStoredPurchases()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connected:Z

    .line 35
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingUnavailable:Z

    return-void
.end method

.method static synthetic access$002(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Lcom/android/billingclient/api/BillingResult;Ljava/lang/Runnable;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->resolveBillingResultError(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method private acknowledgePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 143
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void
.end method

.method private checkPurchases()V
    .locals 3

    const-string v0, "GooglePlayBilling:checkPurchases"

    .line 106
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method private connectBillingClient(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GooglePlayBilling:connectBillingClient"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 66
    iget-object v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_1

    return-void

    .line 68
    :cond_1
    new-instance v1, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method private populatePurchaseSkuDetails()V
    .locals 5

    const-string v0, "GooglePlayBilling:populatePurchaseSkuDetails"

    .line 152
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->purchaseStore:Lcom/brakefield/infinitestudio/billing/Purchases;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/billing/Purchases;->allPurchases:[Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->sku:Lcom/brakefield/infinitestudio/billing/Sku;

    invoke-interface {v4}, Lcom/brakefield/infinitestudio/billing/Sku;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 157
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method private processPurchases(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "GooglePlayBilling:processPurchases = "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 118
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GooglePlayBilling - account id (obfuscated):"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GooglePlayBilling - profile id (obfuscated):"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    const-string v1, "GooglePlayBilling - orderId:"

    .line 120
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    const-string v1, "GooglePlayBilling - purchaseToken:"

    .line 121
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "GooglePlayBilling - purchaseTime:"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GooglePlayBilling - developerPayload:"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "GooglePlayBilling:processSku:"

    .line 126
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 128
    iget-object v3, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->purchaseStore:Lcom/brakefield/infinitestudio/billing/Purchases;

    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 130
    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->update(Z)V

    .line 131
    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->setPurchaseDetails(Lcom/android/billingclient/api/Purchase;)V

    if-nez p2, :cond_3

    .line 133
    iget-object v3, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->listener:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;

    invoke-interface {v3, v2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;->onPurchased(Lcom/brakefield/infinitestudio/billing/InAppPurchase;)V

    .line 136
    :cond_3
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->acknowledgePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private purchase(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 1

    .line 178
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    .line 179
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method

.method private refreshStoredPurchases()V
    .locals 1

    const-string v0, "GooglePlayBilling:refreshStoredPurchases"

    .line 100
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->checkPurchases()V

    .line 102
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->populatePurchaseSkuDetails()V

    return-void
.end method

.method private requestSkuDetails(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 187
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v1

    new-instance v2, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method private resolveBillingResultError(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Runnable;)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingUnavailable:Z

    .line 94
    iget-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->listener:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;->onBillingUnavailable()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connectBillingClient(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const-string v0, "GooglePlayBilling:destroy"

    .line 50
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 51
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connected:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_0
    return-void
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "Google Play Billing"

    return-object v0
.end method

.method public getServiceStatus()Ljava/lang/String;
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingUnavailable:Z

    if-eqz v0, :cond_0

    const-string v0, "Unavailable"

    return-object v0

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connected:Z

    if-eqz v0, :cond_1

    const-string v0, "Connected"

    return-object v0

    :cond_1
    const-string v0, "Not Connected"

    return-object v0
.end method

.method public isUnavailable()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingUnavailable:Z

    return v0
.end method

.method synthetic lambda$acknowledgePurchase$2$com-brakefield-infinitestudio-billing-GooglePlayBilling(Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->acknowledgePurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method synthetic lambda$acknowledgePurchase$3$com-brakefield-infinitestudio-billing-GooglePlayBilling(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 147
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Lcom/android/billingclient/api/Purchase;)V

    invoke-direct {p0, p2, v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->resolveBillingResultError(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$checkPurchases$1$com-brakefield-infinitestudio-billing-GooglePlayBilling(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->processPurchases(Ljava/util/List;Z)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance p2, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->resolveBillingResultError(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Runnable;)V

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->listener:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;->onPurchasesRefreshed()V

    return-void
.end method

.method synthetic lambda$populatePurchaseSkuDetails$4$com-brakefield-infinitestudio-billing-GooglePlayBilling(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    .line 158
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    const-string v0, "GooglePlayBilling:populatePurchaseSkuDetails:SkuDetails:"

    .line 160
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->purchaseStore:Lcom/brakefield/infinitestudio/billing/Purchases;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->setDetails(Lcom/android/billingclient/api/SkuDetails;)V

    goto :goto_0

    .line 164
    :cond_1
    new-instance p2, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V

    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->resolveBillingResultError(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method synthetic lambda$requestPurchase$0$com-brakefield-infinitestudio-billing-GooglePlayBilling(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->requestPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$requestSkuDetails$5$com-brakefield-infinitestudio-billing-GooglePlayBilling(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->requestSkuDetails(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$requestSkuDetails$6$com-brakefield-infinitestudio-billing-GooglePlayBilling(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 188
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p4

    if-nez p4, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 189
    :cond_0
    new-instance p4, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda2;

    invoke-direct {p4, p0, p2, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {p0, p3, p4}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->resolveBillingResultError(Lcom/android/billingclient/api/BillingResult;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 171
    invoke-direct {p0, p2, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->processPurchases(Ljava/util/List;Z)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    :goto_0
    return-void
.end method

.method public requestPurchase(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->purchaseStore:Lcom/brakefield/infinitestudio/billing/Purchases;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/billing/Purchases;->find(Ljava/lang/Object;)Lcom/brakefield/infinitestudio/billing/InAppPurchase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->getDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->purchase(Landroid/app/Activity;Lcom/android/billingclient/api/SkuDetails;)V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->requestSkuDetails(Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/brakefield/infinitestudio/billing/Purchases;Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GooglePlayBilling:setup"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    iget-object v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 39
    iput-object p3, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->listener:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;

    .line 40
    iput-object p2, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->purchaseStore:Lcom/brakefield/infinitestudio/billing/Purchases;

    .line 41
    iget-object p2, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 45
    :cond_1
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connected:Z

    if-nez p1, :cond_2

    new-instance p1, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connectBillingClient(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->refreshStoredPurchases()V

    :goto_0
    return-void
.end method

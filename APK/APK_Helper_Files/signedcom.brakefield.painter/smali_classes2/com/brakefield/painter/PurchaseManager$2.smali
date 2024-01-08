.class Lcom/brakefield/painter/PurchaseManager$2;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/PurchaseManager;->init(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/brakefield/painter/PurchaseManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPurchased$0(Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/InAppPurchase;)V
    .locals 1

    .line 93
    iget-object p1, p1, Lcom/brakefield/infinitestudio/billing/InAppPurchase;->sku:Lcom/brakefield/infinitestudio/billing/Sku;

    check-cast p1, Lcom/brakefield/painter/billing/PainterSku;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/brakefield/painter/PurchaseManager;->unlock(Landroid/content/Context;Lcom/brakefield/painter/billing/PainterSku;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBillingUnavailable()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/brakefield/painter/PurchaseManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->access$000(Landroid/app/Activity;)V

    .line 106
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setIsFreeVersion(Z)V

    return-void
.end method

.method public onPurchased(Lcom/brakefield/infinitestudio/billing/InAppPurchase;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/brakefield/painter/PurchaseManager$2;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/brakefield/painter/PurchaseManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/brakefield/painter/PurchaseManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/brakefield/infinitestudio/billing/InAppPurchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setIsFreeVersion(Z)V

    .line 95
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->access$100()Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->access$100()Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;->launchedFrom:Ljava/lang/String;

    const-string v1, "launched_from"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->access$100()Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;->trialInfo:Ljava/lang/String;

    const-string/jumbo v1, "trial_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/brakefield/painter/PurchaseManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string/jumbo v1, "upsell_purchase_flow"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 100
    invoke-static {p1}, Lcom/brakefield/painter/PurchaseManager;->access$102(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;)Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    :cond_0
    return-void
.end method

.method public onPurchasesRefreshed()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/PurchaseManager$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->access$000(Landroid/app/Activity;)V

    .line 89
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setIsFreeVersion(Z)V

    return-void
.end method

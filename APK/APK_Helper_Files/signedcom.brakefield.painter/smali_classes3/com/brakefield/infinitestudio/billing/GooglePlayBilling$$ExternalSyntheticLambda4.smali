.class public final synthetic Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->lambda$populatePurchaseSkuDetails$4$com-brakefield-infinitestudio-billing-GooglePlayBilling(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

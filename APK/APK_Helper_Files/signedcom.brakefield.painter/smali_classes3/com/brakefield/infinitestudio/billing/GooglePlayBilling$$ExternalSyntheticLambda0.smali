.class public final synthetic Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

.field public final synthetic f$1:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda0;->f$1:Lcom/android/billingclient/api/Purchase;

    return-void
.end method


# virtual methods
.method public final onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda0;->f$1:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->lambda$acknowledgePurchase$3$com-brakefield-infinitestudio-billing-GooglePlayBilling(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

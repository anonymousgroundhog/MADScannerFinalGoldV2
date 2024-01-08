.class public final synthetic Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

.field public final synthetic f$1:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda7;->f$1:Lcom/android/billingclient/api/Purchase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda7;->f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda7;->f$1:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->lambda$acknowledgePurchase$2$com-brakefield-infinitestudio-billing-GooglePlayBilling(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

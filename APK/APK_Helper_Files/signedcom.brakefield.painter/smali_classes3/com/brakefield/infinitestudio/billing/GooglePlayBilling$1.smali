.class Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->connectBillingClient(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

.field final synthetic val$then:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;->this$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;->val$then:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "GooglePlayBilling:connectBillingClient:onBillingServiceDisconnected"

    .line 79
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;->this$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->access$002(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Z)Z

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;->this$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->access$002(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Z)Z

    const-string p1, "GooglePlayBilling:connectBillingClient:onBillingSetupFinished"

    .line 73
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;->val$then:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;->this$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$1;->val$then:Ljava/lang/Runnable;

    invoke-static {v0, p1, v1}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->access$100(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Lcom/android/billingclient/api/BillingResult;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

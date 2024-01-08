.class public final synthetic Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;->lambda$requestPurchase$0$com-brakefield-infinitestudio-billing-GooglePlayBilling(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

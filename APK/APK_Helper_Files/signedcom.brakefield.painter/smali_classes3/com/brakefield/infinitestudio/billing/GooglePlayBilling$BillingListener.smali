.class public interface abstract Lcom/brakefield/infinitestudio/billing/GooglePlayBilling$BillingListener;
.super Ljava/lang/Object;
.source "GooglePlayBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/billing/GooglePlayBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingListener"
.end annotation


# virtual methods
.method public abstract onBillingUnavailable()V
.end method

.method public abstract onPurchased(Lcom/brakefield/infinitestudio/billing/InAppPurchase;)V
.end method

.method public abstract onPurchasesRefreshed()V
.end method

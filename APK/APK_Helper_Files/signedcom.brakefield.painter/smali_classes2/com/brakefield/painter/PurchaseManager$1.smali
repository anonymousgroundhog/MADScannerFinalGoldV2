.class Lcom/brakefield/painter/PurchaseManager$1;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Lcom/brakefield/painter/billing/PainterTrial$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/PurchaseManager;->init(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrialEnding()V
    .locals 1

    .line 80
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->removeVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)V

    return-void
.end method

.method public onTrialStarting()V
    .locals 3

    .line 75
    sget-object v0, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->addVersionScope(Lcom/brakefield/painter/billing/PainterVersion;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/brakefield/painter/billing/PainterVersion;

    const/4 v1, 0x0

    .line 76
    sget-object v2, Lcom/brakefield/painter/billing/PainterVersion;->TRIAL:Lcom/brakefield/painter/billing/PainterVersion;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/brakefield/painter/PurchaseManager;->testVersionScopes([Lcom/brakefield/painter/billing/PainterVersion;)V

    return-void
.end method

.class public Lcom/brakefield/painter/billing/PurchaseDialog;
.super Landroid/app/AlertDialog;
.source "PurchaseDialog.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final viewController:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;


# direct methods
.method public static synthetic $r8$lambda$W4tzhsFfiiGUGz1q8dQzJZOQfkQ(Lcom/brakefield/painter/billing/PurchaseDialog;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)V
    .locals 1

    const/high16 v0, 0x7f130000

    .line 18
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object p1, p0, Lcom/brakefield/painter/billing/PurchaseDialog;->activity:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lcom/brakefield/painter/billing/PurchaseDialog;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/brakefield/painter/billing/PurchaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 27
    iget-object p1, p0, Lcom/brakefield/painter/billing/PurchaseDialog;->viewController:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    iget-object v0, p0, Lcom/brakefield/painter/billing/PurchaseDialog;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/brakefield/painter/billing/PurchaseDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/billing/PurchaseDialog$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/billing/PurchaseDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->getView(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/billing/PurchaseDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

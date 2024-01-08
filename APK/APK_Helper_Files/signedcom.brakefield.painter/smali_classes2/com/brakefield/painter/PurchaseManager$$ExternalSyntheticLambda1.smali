.class public final synthetic Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda1;->f$0:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/PurchaseManager$$ExternalSyntheticLambda1;->f$0:Landroid/view/View$OnClickListener;

    invoke-static {v0, p1}, Lcom/brakefield/painter/PurchaseManager;->lambda$unlock$1(Landroid/view/View$OnClickListener;Landroid/content/DialogInterface;)V

    return-void
.end method

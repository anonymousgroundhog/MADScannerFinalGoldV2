.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/billing/PainterTrial;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;Lcom/brakefield/painter/billing/PainterTrial;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/billing/PainterTrial;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/billing/PainterTrial;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->lambda$updateTrialSectionAsAvailable$2$com-brakefield-painter-ui-viewcontrollers-UpsellViewController(Lcom/brakefield/painter/billing/PainterTrial;Landroid/view/View;)V

    return-void
.end method

.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;->f$2:Landroid/app/Activity;

    iput p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;->f$2:Landroid/app/Activity;

    iget v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController$$ExternalSyntheticLambda4;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-LayerOptionsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

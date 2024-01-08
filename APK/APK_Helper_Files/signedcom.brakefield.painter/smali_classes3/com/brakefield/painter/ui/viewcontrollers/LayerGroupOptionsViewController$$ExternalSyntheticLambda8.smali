.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;Landroid/app/Activity;Ljava/lang/String;ILcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$4:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$3:I

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda8;->f$4:Lcom/brakefield/painter/ui/SimpleUI;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-LayerGroupOptionsViewController(Landroid/app/Activity;Ljava/lang/String;ILcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V

    return-void
.end method

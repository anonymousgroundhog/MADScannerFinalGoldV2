.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;->f$0:Landroid/app/Activity;

    iput p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;->f$1:I

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;->f$0:Landroid/app/Activity;

    iget v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;->f$1:I

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda10;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->lambda$getView$3(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V

    return-void
.end method

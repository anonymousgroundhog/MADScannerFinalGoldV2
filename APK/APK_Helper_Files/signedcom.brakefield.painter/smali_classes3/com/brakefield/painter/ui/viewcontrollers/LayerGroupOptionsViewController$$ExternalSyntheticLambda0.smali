.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;ILcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

    iput p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

    iget v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-LayerGroupOptionsViewController(ILcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V

    return-void
.end method

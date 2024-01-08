.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/infinite/app/OnBindListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda22;->f$0:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController$$ExternalSyntheticLambda22;->f$0:Landroid/view/View$OnClickListener;

    invoke-static {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/PaintToolsViewController;->lambda$bindUI$13(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/infinite/app/ui/UIComponent;)V

    return-void
.end method

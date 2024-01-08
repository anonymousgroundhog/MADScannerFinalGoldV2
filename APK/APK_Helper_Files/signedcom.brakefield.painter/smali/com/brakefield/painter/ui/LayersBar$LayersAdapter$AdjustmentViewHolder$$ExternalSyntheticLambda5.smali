.class public final synthetic Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnContextClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;

    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda5;->f$1:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    return-void
.end method


# virtual methods
.method public final onContextClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda5;->f$0:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda5;->f$1:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->lambda$new$3$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

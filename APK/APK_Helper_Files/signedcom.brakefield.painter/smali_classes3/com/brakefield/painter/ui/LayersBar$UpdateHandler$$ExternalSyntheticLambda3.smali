.class public final synthetic Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/LayersPanelBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/LayersPanelBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->lambda$new$3(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/LayersPanelBinding;Ljava/lang/Boolean;)V

    return-void
.end method

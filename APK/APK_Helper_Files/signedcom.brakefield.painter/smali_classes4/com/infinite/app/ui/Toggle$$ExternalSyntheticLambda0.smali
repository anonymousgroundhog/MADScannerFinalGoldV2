.class public final synthetic Lcom/infinite/app/ui/Toggle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/infinite/app/ui/Toggle;

.field public final synthetic f$1:Lcom/infinite/app/ui/interactions/BoolChangeInteraction;


# direct methods
.method public synthetic constructor <init>(Lcom/infinite/app/ui/Toggle;Lcom/infinite/app/ui/interactions/BoolChangeInteraction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/infinite/app/ui/Toggle$$ExternalSyntheticLambda0;->f$0:Lcom/infinite/app/ui/Toggle;

    iput-object p2, p0, Lcom/infinite/app/ui/Toggle$$ExternalSyntheticLambda0;->f$1:Lcom/infinite/app/ui/interactions/BoolChangeInteraction;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/infinite/app/ui/Toggle$$ExternalSyntheticLambda0;->f$0:Lcom/infinite/app/ui/Toggle;

    iget-object v1, p0, Lcom/infinite/app/ui/Toggle$$ExternalSyntheticLambda0;->f$1:Lcom/infinite/app/ui/interactions/BoolChangeInteraction;

    invoke-virtual {v0, v1, p1, p2}, Lcom/infinite/app/ui/Toggle;->lambda$bindValueChangeListener$0$com-infinite-app-ui-Toggle(Lcom/infinite/app/ui/interactions/BoolChangeInteraction;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.class public final synthetic Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/infinite/app/ui/interactions/ClickInteraction;


# direct methods
.method public synthetic constructor <init>(Lcom/infinite/app/ui/interactions/ClickInteraction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda1;->f$0:Lcom/infinite/app/ui/interactions/ClickInteraction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/infinite/app/DialogSystem$$ExternalSyntheticLambda1;->f$0:Lcom/infinite/app/ui/interactions/ClickInteraction;

    invoke-static {v0, p1, p2}, Lcom/infinite/app/DialogSystem;->lambda$bindPositiveButton$1(Lcom/infinite/app/ui/interactions/ClickInteraction;Landroid/content/DialogInterface;I)V

    return-void
.end method

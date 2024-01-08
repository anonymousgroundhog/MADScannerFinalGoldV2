.class public final synthetic Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/ui/RoundButton;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/ui/RoundButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda9;->f$1:Lcom/brakefield/infinitestudio/ui/RoundButton;

    return-void
.end method


# virtual methods
.method public final resourceSelected(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda9;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda9;->f$1:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/ui/SimpleUI;->lambda$selectFillPattern$36$com-brakefield-painter-ui-SimpleUI(Lcom/brakefield/infinitestudio/ui/RoundButton;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V

    return-void
.end method

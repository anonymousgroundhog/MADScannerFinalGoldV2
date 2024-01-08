.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final resourceSelected(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->lambda$show$2$com-brakefield-painter-ui-viewcontrollers-CreateBrushViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V

    return-void
.end method

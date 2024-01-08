.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda11;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda11;->f$1:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda11;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda11;->f$1:Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->lambda$renameFolder$27$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Ljava/lang/String;)V

    return-void
.end method

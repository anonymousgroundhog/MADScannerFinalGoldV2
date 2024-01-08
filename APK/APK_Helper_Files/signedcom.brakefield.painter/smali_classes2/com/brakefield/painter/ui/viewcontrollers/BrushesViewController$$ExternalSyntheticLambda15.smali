.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/brushes/brushfolders/Brush;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;->f$1:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onSelected()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;->f$1:Lcom/brakefield/painter/brushes/brushfolders/Brush;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$$ExternalSyntheticLambda15;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->lambda$showBrushOptions$17$com-brakefield-painter-ui-viewcontrollers-BrushesViewController(Lcom/brakefield/painter/brushes/brushfolders/Brush;Landroid/view/View;)V

    return-void
.end method

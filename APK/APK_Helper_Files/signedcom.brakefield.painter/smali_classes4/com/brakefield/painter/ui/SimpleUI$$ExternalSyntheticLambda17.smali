.class public final synthetic Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/brakefield/painter/ui/DockableElements$ToolListener;

.field public final synthetic f$3:Lcom/brakefield/painter/ui/DockableElements$DockableElement;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Lcom/brakefield/painter/ui/DockableElements$ToolListener;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;->f$2:Lcom/brakefield/painter/ui/DockableElements$ToolListener;

    iput-object p4, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;->f$3:Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;->f$2:Lcom/brakefield/painter/ui/DockableElements$ToolListener;

    iget-object v3, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda17;->f$3:Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/painter/ui/SimpleUI;->lambda$setDragListener$16$com-brakefield-painter-ui-SimpleUI(Landroid/view/View;Lcom/brakefield/painter/ui/DockableElements$ToolListener;Lcom/brakefield/painter/ui/DockableElements$DockableElement;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

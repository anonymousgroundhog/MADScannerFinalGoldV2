.class public final synthetic Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/DockableElements$DockableElement;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/DockableElements$DockableElement;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;->f$1:Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    iput-object p3, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;->f$0:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;->f$1:Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    iget-object v2, p0, Lcom/brakefield/painter/ui/SimpleUI$$ExternalSyntheticLambda18;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->lambda$setDragListener$15$com-brakefield-painter-ui-SimpleUI(Lcom/brakefield/painter/ui/DockableElements$DockableElement;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

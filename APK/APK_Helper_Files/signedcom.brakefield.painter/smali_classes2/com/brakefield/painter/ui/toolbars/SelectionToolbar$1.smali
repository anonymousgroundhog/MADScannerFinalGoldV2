.class Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;
.super Ljava/lang/Object;
.source "SelectionToolbar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/SelectionToolbarBinding;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;Landroid/app/Activity;Lcom/brakefield/painter/databinding/SelectionToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/SelectionToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/SelectionToolbarBinding;

    iput-object p4, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result p2

    if-nez p2, :cond_0

    if-lez p3, :cond_0

    .line 70
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;->val$activity:Landroid/app/Activity;

    const-string p2, "Selection tool types"

    invoke-static {p1, p2}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/SelectionToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionToolbarBinding;->selectionToolSpinner:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 75
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setTool(I)V

    .line 76
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/SelectionToolbar$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.class Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;
.super Ljava/lang/Object;
.source "LayerRenderingOptionsViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field previousPosition:I

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;->previousPosition:I

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

    .line 36
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController;)Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->colorModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    iget p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;->previousPosition:I

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    return-void

    .line 42
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 43
    invoke-static {p1}, Lcom/brakefield/painter/ColorProfiles;->setColorProfile(I)V

    .line 44
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 45
    iput p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerRenderingOptionsViewController$1;->previousPosition:I

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

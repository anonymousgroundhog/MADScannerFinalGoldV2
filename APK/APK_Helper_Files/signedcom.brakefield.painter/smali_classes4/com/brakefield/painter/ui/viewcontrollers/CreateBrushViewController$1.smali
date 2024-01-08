.class Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$1;
.super Ljava/lang/Object;
.source "CreateBrushViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

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

    .line 123
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$1;->updateBrushTemplate(I)V

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

.method protected updateBrushTemplate(I)V
    .locals 5

    .line 132
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadResourceName()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadCustomName()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureResourceName()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureCustomName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 138
    invoke-static {p1, v4}, Lcom/brakefield/painter/PainterLib;->setBrushType(ILjava/lang/String;)V

    .line 140
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setBrushHeadResourceName(Ljava/lang/String;)V

    .line 141
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadCustomName(Ljava/lang/String;)V

    .line 143
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureResourceName(Ljava/lang/String;)V

    .line 144
    invoke-static {v3}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureCustomName(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController;)Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/CreateBrushViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    .line 147
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateBrushViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

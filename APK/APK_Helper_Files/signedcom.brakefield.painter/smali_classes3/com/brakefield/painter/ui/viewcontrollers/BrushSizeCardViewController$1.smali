.class Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;
.super Ljava/lang/Object;
.source "BrushSizeCardViewController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$displaySize:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->val$displaySize:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float p3, p2, p3

    float-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 57
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-float p3, v0

    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setBrushSize(F)V

    .line 58
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

    invoke-static {p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;)Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->val$displaySize:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-interface {v1, p2}, Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;->getDisplayValue(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const p2, 0x7f120a31

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;)Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    .line 60
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 p1, 0x1

    .line 66
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 67
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

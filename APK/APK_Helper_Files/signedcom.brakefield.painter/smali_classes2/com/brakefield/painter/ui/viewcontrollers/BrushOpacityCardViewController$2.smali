.class Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;
.super Ljava/lang/Object;
.source "BrushOpacityCardViewController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/OpacityControl;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setFlow(F)V

    .line 71
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;)Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;)Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushOpacityCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    .line 73
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

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

    .line 77
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 78
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.class Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;
.super Ljava/lang/Object;
.source "BlendSettingsViewController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;

.field final synthetic val$brushBlendSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;->val$brushBlendSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;->val$brushBlendSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeAmount(F)V

    .line 34
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;)Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->blurSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 40
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 41
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

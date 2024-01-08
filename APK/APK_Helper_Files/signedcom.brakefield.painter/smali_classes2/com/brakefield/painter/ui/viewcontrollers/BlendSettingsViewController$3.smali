.class Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$3;
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


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$3;->val$brushBlendSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$3;->val$brushBlendSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;

    int-to-float p3, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeOpacity(F)V

    .line 67
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;)Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BlendSettingsViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

    .line 73
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    return-void
.end method

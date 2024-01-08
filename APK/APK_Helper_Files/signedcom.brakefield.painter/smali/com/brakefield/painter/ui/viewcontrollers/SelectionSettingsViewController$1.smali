.class Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;
.super Ljava/lang/Object;
.source "SelectionSettingsViewController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 199
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setMaskOpacity(F)V

    .line 200
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;)Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SelectionSettingsViewControllerBinding;->maskOpacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 207
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_MASK_OPACITY"

    .line 208
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getMaskOpacity()F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

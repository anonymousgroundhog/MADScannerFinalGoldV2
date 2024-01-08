.class Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field start:I

.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    int-to-float p1, p2

    const/high16 p2, 0x41a00000    # 20.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p1, p2

    const p2, 0x3f59999a    # 0.85f

    add-float/2addr p1, p2

    if-eqz p3, :cond_0

    .line 339
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;

    iget-object p2, p2, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->rescaleUI(Landroid/app/Activity;F)V

    const/4 p2, 0x1

    .line 340
    sput-boolean p2, Lcom/brakefield/infinitestudio/ui/ThemeManager;->refresh:Z

    .line 342
    :cond_0
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;

    iget-object p2, p2, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-static {p2}, Lcom/brakefield/painter/activities/ActivitySettings;->access$1400(Lcom/brakefield/painter/activities/ActivitySettings;)Lcom/brakefield/painter/databinding/ActivitySettingsBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ActivitySettingsBinding;->interfaceSettings:Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/InterfaceSettingsBinding;->uiScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.2f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 346
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;->start:I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 350
    iget v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;->start:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection$1;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivitySettings$InterfaceSettingsSection;->this$0:Lcom/brakefield/painter/activities/ActivitySettings;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivitySettings;->recreate()V

    :cond_0
    return-void
.end method

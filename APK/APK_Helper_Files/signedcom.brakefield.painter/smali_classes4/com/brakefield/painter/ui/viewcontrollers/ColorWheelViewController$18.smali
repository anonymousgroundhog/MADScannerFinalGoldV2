.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;
.super Ljava/lang/Object;
.source "ColorWheelViewController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupColorModeCmykSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

.field final synthetic val$cmykBinding:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1132
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;->val$cmykBinding:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1135
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$1600(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V

    .line 1136
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;->val$cmykBinding:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$702(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1142
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->access$702(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

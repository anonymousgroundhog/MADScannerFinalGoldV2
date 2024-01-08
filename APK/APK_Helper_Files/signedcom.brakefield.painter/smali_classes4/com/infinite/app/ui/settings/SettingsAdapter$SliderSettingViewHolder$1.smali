.class Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;
.super Ljava/lang/Object;
.source "SettingsAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->update(Lcom/infinite/app/ui/settings/Setting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;

.field final synthetic val$setting:Lcom/infinite/app/ui/settings/Setting;

.field final synthetic val$sliderSetting:Lcom/infinite/app/ui/settings/RangeSetting;


# direct methods
.method constructor <init>(Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;Lcom/infinite/app/ui/settings/RangeSetting;Lcom/infinite/app/ui/settings/Setting;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;->this$1:Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;

    iput-object p2, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;->val$sliderSetting:Lcom/infinite/app/ui/settings/RangeSetting;

    iput-object p3, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;->val$setting:Lcom/infinite/app/ui/settings/Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 91
    iget-object p3, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;->this$1:Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;

    invoke-static {p3}, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->access$100(Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;)Lcom/infinite/app/databinding/SliderSettingBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/infinite/app/databinding/SliderSettingBinding;->sliderValue:Lcom/infinite/app/ui/views/BaseLabel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/infinite/app/ui/views/BaseLabel;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p3, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;->val$sliderSetting:Lcom/infinite/app/ui/settings/RangeSetting;

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p3, p2}, Lcom/infinite/app/ui/settings/RangeSetting;->setValue(F)V

    .line 93
    iget-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;->this$1:Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;

    iget-object p1, p1, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;

    invoke-static {p1}, Lcom/infinite/app/ui/settings/SettingsAdapter;->access$000(Lcom/infinite/app/ui/settings/SettingsAdapter;)Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;->this$1:Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;

    iget-object p1, p1, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;

    invoke-static {p1}, Lcom/infinite/app/ui/settings/SettingsAdapter;->access$000(Lcom/infinite/app/ui/settings/SettingsAdapter;)Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;->val$setting:Lcom/infinite/app/ui/settings/Setting;

    invoke-interface {p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;->onSettingChanged(Lcom/infinite/app/ui/settings/Setting;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

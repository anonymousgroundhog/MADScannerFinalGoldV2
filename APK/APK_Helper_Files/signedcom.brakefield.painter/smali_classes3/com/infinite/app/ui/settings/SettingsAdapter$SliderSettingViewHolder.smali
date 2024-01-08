.class Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;
.super Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/app/ui/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SliderSettingViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/infinite/app/databinding/SliderSettingBinding;

.field final synthetic this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V

    .line 80
    invoke-static {p2}, Lcom/infinite/app/databinding/SliderSettingBinding;->bind(Landroid/view/View;)Lcom/infinite/app/databinding/SliderSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->binding:Lcom/infinite/app/databinding/SliderSettingBinding;

    return-void
.end method

.method static synthetic access$100(Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;)Lcom/infinite/app/databinding/SliderSettingBinding;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->binding:Lcom/infinite/app/databinding/SliderSettingBinding;

    return-object p0
.end method


# virtual methods
.method public update(Lcom/infinite/app/ui/settings/Setting;)V
    .locals 4

    .line 83
    move-object v0, p1

    check-cast v0, Lcom/infinite/app/ui/settings/RangeSetting;

    .line 84
    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->binding:Lcom/infinite/app/databinding/SliderSettingBinding;

    iget-object v1, v1, Lcom/infinite/app/databinding/SliderSettingBinding;->nameLabel:Lcom/infinite/app/ui/views/BaseLabel;

    invoke-virtual {p1}, Lcom/infinite/app/ui/settings/Setting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infinite/app/ui/views/BaseLabel;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->binding:Lcom/infinite/app/databinding/SliderSettingBinding;

    iget-object v1, v1, Lcom/infinite/app/databinding/SliderSettingBinding;->sliderControl:Lcom/infinite/app/ui/views/BaseSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infinite/app/ui/views/BaseSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 87
    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->binding:Lcom/infinite/app/databinding/SliderSettingBinding;

    iget-object v1, v1, Lcom/infinite/app/databinding/SliderSettingBinding;->sliderControl:Lcom/infinite/app/ui/views/BaseSlider;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/infinite/app/ui/views/BaseSlider;->setMax(I)V

    .line 88
    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->binding:Lcom/infinite/app/databinding/SliderSettingBinding;

    iget-object v1, v1, Lcom/infinite/app/databinding/SliderSettingBinding;->sliderControl:Lcom/infinite/app/ui/views/BaseSlider;

    new-instance v3, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder$1;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;Lcom/infinite/app/ui/settings/RangeSetting;Lcom/infinite/app/ui/settings/Setting;)V

    invoke-virtual {v1, v3}, Lcom/infinite/app/ui/views/BaseSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 100
    iget-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;->binding:Lcom/infinite/app/databinding/SliderSettingBinding;

    iget-object p1, p1, Lcom/infinite/app/databinding/SliderSettingBinding;->sliderControl:Lcom/infinite/app/ui/views/BaseSlider;

    invoke-virtual {v0}, Lcom/infinite/app/ui/settings/RangeSetting;->getValue()F

    move-result v0

    int-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/infinite/app/ui/views/BaseSlider;->setProgress(I)V

    return-void
.end method

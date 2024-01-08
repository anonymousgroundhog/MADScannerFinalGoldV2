.class Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;
.super Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/app/ui/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchSettingViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/infinite/app/databinding/SwitchSettingBinding;

.field final synthetic this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V

    .line 62
    invoke-static {p2}, Lcom/infinite/app/databinding/SwitchSettingBinding;->bind(Landroid/view/View;)Lcom/infinite/app/databinding/SwitchSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->binding:Lcom/infinite/app/databinding/SwitchSettingBinding;

    return-void
.end method


# virtual methods
.method synthetic lambda$update$0$com-infinite-app-ui-settings-SettingsAdapter$SwitchSettingViewHolder(Lcom/infinite/app/ui/settings/BoolSetting;Lcom/infinite/app/ui/settings/Setting;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 70
    invoke-virtual {p1, p4}, Lcom/infinite/app/ui/settings/BoolSetting;->setValue(Z)V

    .line 71
    iget-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;

    invoke-static {p1}, Lcom/infinite/app/ui/settings/SettingsAdapter;->access$000(Lcom/infinite/app/ui/settings/SettingsAdapter;)Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;

    invoke-static {p1}, Lcom/infinite/app/ui/settings/SettingsAdapter;->access$000(Lcom/infinite/app/ui/settings/SettingsAdapter;)Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;->onSettingChanged(Lcom/infinite/app/ui/settings/Setting;)V

    :cond_0
    return-void
.end method

.method public update(Lcom/infinite/app/ui/settings/Setting;)V
    .locals 3

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/infinite/app/ui/settings/BoolSetting;

    .line 66
    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->binding:Lcom/infinite/app/databinding/SwitchSettingBinding;

    iget-object v1, v1, Lcom/infinite/app/databinding/SwitchSettingBinding;->nameLabel:Lcom/infinite/app/ui/views/BaseLabel;

    invoke-virtual {p1}, Lcom/infinite/app/ui/settings/Setting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infinite/app/ui/views/BaseLabel;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->binding:Lcom/infinite/app/databinding/SwitchSettingBinding;

    iget-object v1, v1, Lcom/infinite/app/databinding/SwitchSettingBinding;->switchControl:Lcom/infinite/app/ui/views/BaseSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infinite/app/ui/views/BaseSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->binding:Lcom/infinite/app/databinding/SwitchSettingBinding;

    iget-object v1, v1, Lcom/infinite/app/databinding/SwitchSettingBinding;->switchControl:Lcom/infinite/app/ui/views/BaseSwitch;

    invoke-virtual {v0}, Lcom/infinite/app/ui/settings/BoolSetting;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infinite/app/ui/views/BaseSwitch;->setChecked(Z)V

    .line 69
    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->binding:Lcom/infinite/app/databinding/SwitchSettingBinding;

    iget-object v1, v1, Lcom/infinite/app/databinding/SwitchSettingBinding;->switchControl:Lcom/infinite/app/ui/views/BaseSwitch;

    new-instance v2, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;Lcom/infinite/app/ui/settings/BoolSetting;Lcom/infinite/app/ui/settings/Setting;)V

    invoke-virtual {v1, v2}, Lcom/infinite/app/ui/views/BaseSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

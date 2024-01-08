.class public final synthetic Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;

.field public final synthetic f$1:Lcom/infinite/app/ui/settings/BoolSetting;

.field public final synthetic f$2:Lcom/infinite/app/ui/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;Lcom/infinite/app/ui/settings/BoolSetting;Lcom/infinite/app/ui/settings/Setting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;

    iput-object p2, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/infinite/app/ui/settings/BoolSetting;

    iput-object p3, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;->f$2:Lcom/infinite/app/ui/settings/Setting;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;

    iget-object v1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/infinite/app/ui/settings/BoolSetting;

    iget-object v2, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder$$ExternalSyntheticLambda0;->f$2:Lcom/infinite/app/ui/settings/Setting;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;->lambda$update$0$com-infinite-app-ui-settings-SettingsAdapter$SwitchSettingViewHolder(Lcom/infinite/app/ui/settings/BoolSetting;Lcom/infinite/app/ui/settings/Setting;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

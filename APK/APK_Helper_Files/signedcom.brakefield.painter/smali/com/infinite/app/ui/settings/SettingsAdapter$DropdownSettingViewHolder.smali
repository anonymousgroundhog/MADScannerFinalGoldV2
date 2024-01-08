.class Lcom/infinite/app/ui/settings/SettingsAdapter$DropdownSettingViewHolder;
.super Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/app/ui/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropdownSettingViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/infinite/app/databinding/DropdownSettingBinding;

.field final synthetic this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$DropdownSettingViewHolder;->this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V

    .line 108
    invoke-static {p2}, Lcom/infinite/app/databinding/DropdownSettingBinding;->bind(Landroid/view/View;)Lcom/infinite/app/databinding/DropdownSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$DropdownSettingViewHolder;->binding:Lcom/infinite/app/databinding/DropdownSettingBinding;

    return-void
.end method


# virtual methods
.method public update(Lcom/infinite/app/ui/settings/Setting;)V
    .locals 0

    return-void
.end method

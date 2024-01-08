.class public Lcom/infinite/app/ui/settings/SettingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;,
        Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;,
        Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;,
        Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;,
        Lcom/infinite/app/ui/settings/SettingsAdapter$DropdownSettingViewHolder;,
        Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;

.field private final settings:Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;


# direct methods
.method public constructor <init>(Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter;->settings:Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;

    .line 34
    iput-object p2, p0, Lcom/infinite/app/ui/settings/SettingsAdapter;->listener:Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/infinite/app/ui/settings/Setting;",
            ">;",
            "Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/infinite/app/ui/settings/SettingsAdapter$1;

    invoke-direct {v0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter$1;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/infinite/app/ui/settings/SettingsAdapter;)Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter;->listener:Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter;->settings:Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;

    invoke-interface {v0}, Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter;->settings:Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;

    invoke-interface {v0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;->getSetting(I)Lcom/infinite/app/ui/settings/Setting;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/infinite/app/ui/settings/Setting;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter;->settings:Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;

    invoke-interface {v0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;->getSetting(I)Lcom/infinite/app/ui/settings/Setting;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/infinite/app/ui/settings/Setting;->getType()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter;->onBindViewHolder(Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/infinite/app/ui/settings/SettingsAdapter;->settings:Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;

    invoke-interface {v0, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;->getSetting(I)Lcom/infinite/app/ui/settings/Setting;

    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;->update(Lcom/infinite/app/ui/settings/Setting;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/infinite/app/ui/settings/SettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;
    .locals 3

    .line 135
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    .line 141
    new-instance p2, Lcom/infinite/app/ui/settings/SettingsAdapter$DropdownSettingViewHolder;

    sget v2, Lcom/infinite/app/R$layout;->dropdown_setting:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter$DropdownSettingViewHolder;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V

    return-object p2

    .line 138
    :cond_0
    new-instance p2, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;

    sget v2, Lcom/infinite/app/R$layout;->slider_setting:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter$SliderSettingViewHolder;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V

    return-object p2

    .line 137
    :cond_1
    new-instance p2, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;

    sget v2, Lcom/infinite/app/R$layout;->switch_setting:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/infinite/app/ui/settings/SettingsAdapter$SwitchSettingViewHolder;-><init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V

    return-object p2
.end method

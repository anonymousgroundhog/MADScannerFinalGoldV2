.class abstract Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infinite/app/ui/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SettingViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/infinite/app/ui/settings/SettingsAdapter;Landroid/view/View;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/infinite/app/ui/settings/SettingsAdapter$SettingViewHolder;->this$0:Lcom/infinite/app/ui/settings/SettingsAdapter;

    .line 53
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract update(Lcom/infinite/app/ui/settings/Setting;)V
.end method

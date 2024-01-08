.class public abstract Lcom/brakefield/painter/fragments/BrushSettingsFragment;
.super Lcom/brakefield/infinitestudio/ui/TabFragment;
.source "BrushSettingsFragment.java"


# instance fields
.field final ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/brakefield/painter/fragments/BrushSettingsFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public abstract getBrushSettings()Lcom/brakefield/painter/brushes/settings/BrushSettings;
.end method

.method public abstract getIcon()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/BrushSettingsFragment;->getBrushSettings()Lcom/brakefield/painter/brushes/settings/BrushSettings;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/brakefield/painter/fragments/BrushSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/brakefield/painter/fragments/BrushSettingsFragment;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/painter/brushes/settings/BrushSettings;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

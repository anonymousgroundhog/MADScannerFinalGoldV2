.class Lcom/brakefield/painter/brushes/BrushSettingsDialog$1;
.super Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;
.source "BrushSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/BrushSettingsDialog;->show(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public hasTabIcons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasTabLabels()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class Lcom/brakefield/painter/brushes/BrushSettingsDialog$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "BrushSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/BrushSettingsDialog;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/brakefield/painter/brushes/BrushSettingsDialog$2;->val$viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/brakefield/painter/brushes/BrushSettingsDialog$2;->val$viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updateTab(I)V

    :cond_0
    return-void
.end method

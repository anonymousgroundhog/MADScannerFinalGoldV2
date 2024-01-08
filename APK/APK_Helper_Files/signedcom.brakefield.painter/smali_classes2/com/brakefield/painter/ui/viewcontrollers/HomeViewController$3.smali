.class Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "HomeViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ZI)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 160
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 161
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)V

    .line 162
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->access$400(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/fragments/HomeTabFragment;

    .line 163
    invoke-virtual {v0}, Lcom/brakefield/painter/fragments/HomeTabFragment;->refresh()V

    .line 164
    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->access$502(I)I

    return-void
.end method

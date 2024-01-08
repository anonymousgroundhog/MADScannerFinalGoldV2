.class Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "UpsellViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->getView(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-virtual {v1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->readyPageAnimation()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_4

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 130
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

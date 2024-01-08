.class Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;Landroid/os/Looper;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 93
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    add-int/2addr p1, v0

    .line 96
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    rem-int/2addr p1, v0

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    iget-object v0, v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 98
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->readyPageAnimation()V

    :cond_0
    return-void
.end method

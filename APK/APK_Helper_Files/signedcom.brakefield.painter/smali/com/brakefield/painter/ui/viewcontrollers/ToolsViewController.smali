.class public Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "ToolsViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;
    }
.end annotation


# static fields
.field public static splitTools:Z


# instance fields
.field binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

.field private cachedView:Landroid/view/View;

.field final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/TabFragment;",
            ">;"
        }
    .end annotation
.end field

.field private pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->fragments:Ljava/util/List;

    return-void
.end method

.method private loadView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    .line 42
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->cachedView:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->fragments:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/fragments/CreativeToolsFragment;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/fragments/CreativeToolsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->fragments:Ljava/util/List;

    new-instance v1, Lcom/brakefield/painter/fragments/EditingToolsFragment;

    invoke-direct {v1, p2}, Lcom/brakefield/painter/fragments/EditingToolsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$1;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->fragments:Ljava/util/List;

    invoke-direct {p2, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    .line 59
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->titleStrip:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 60
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setNestedScrollingEnabled(Z)V

    .line 63
    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->titleStrip:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 66
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    return-void
.end method

.method public static setSplitTools(Landroid/content/SharedPreferences;Z)V
    .locals 1

    .line 100
    sput-boolean p1, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->splitTools:Z

    .line 101
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "PREF_SPLIT_TOOLS_MEMU"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;)Landroid/view/View;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->cachedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Debugger;->startTracking()V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->loadView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    const-string p1, "LOAD TOOLS VIEW CONTROLLER"

    .line 75
    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->stopTracking(Ljava/lang/String;)J

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->cachedView:Landroid/view/View;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 82
    check-cast p2, Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    :cond_1
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    :cond_2
    sget-boolean p2, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->splitTools:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 89
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->titleStrip:Lcom/google/android/material/tabs/TabLayout;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 90
    sget-object p2, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->CREATIVE_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    if-ne p3, p2, :cond_3

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    goto :goto_0

    .line 91
    :cond_3
    sget-object p2, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;->EDITING_TOOLS:Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController$LaunchMode;

    if-ne p3, p2, :cond_5

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    goto :goto_0

    .line 92
    :cond_4
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->binding:Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ToolsViewControllerBinding;->titleStrip:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 94
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->fragments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/brakefield/infinitestudio/ui/TabFragment;

    check-cast p3, Lcom/brakefield/painter/fragments/ToolsFragment;

    invoke-virtual {p3}, Lcom/brakefield/painter/fragments/ToolsFragment;->update()V

    goto :goto_1

    :cond_6
    return-object p1
.end method

.method synthetic lambda$loadView$0$com-brakefield-painter-ui-viewcontrollers-ToolsViewController(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ToolsViewController;->fragments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/infinitestudio/ui/TabFragment;

    .line 65
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/TabFragment;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

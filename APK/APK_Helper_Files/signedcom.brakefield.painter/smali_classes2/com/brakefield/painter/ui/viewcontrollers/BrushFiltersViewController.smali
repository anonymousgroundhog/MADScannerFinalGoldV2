.class public Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "BrushFiltersViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

.field private pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method static synthetic lambda$getView$0(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 55
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/ui/TabFragment;

    .line 56
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)Landroid/view/View;
    .locals 2

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v1, Lcom/brakefield/painter/fragments/BrushFilterEffectsLayerFragment;

    invoke-direct {v1, p2, p3}, Lcom/brakefield/painter/fragments/BrushFilterEffectsLayerFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;

    invoke-direct {v1, p2, p3}, Lcom/brakefield/painter/fragments/BrushFilterEffectsBrushFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$1;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p2, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    .line 49
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;->titleStrip:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 50
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setNestedScrollingEnabled(Z)V

    .line 52
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 54
    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;->titleStrip:Lcom/google/android/material/tabs/TabLayout;

    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    iget-object p3, p3, Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-direct {p1, p2, p3, v1}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 59
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController;->binding:Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushFiltersViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "UpsellViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;
    }
.end annotation


# static fields
.field private static final CHANGE_PAGE:I = 0x1

.field private static final CHANGE_PAGE_DELAY:I = 0x7d0


# instance fields
.field binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

.field private dismissHandler:Ljava/lang/Runnable;

.field private pageAnimator:Landroid/os/Handler;

.field private pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

.field private final purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->pageAnimator:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->pageAnimator:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic lambda$getView$0(Ljava/util/List;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    .line 105
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/ui/TabFragment;

    .line 106
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private updatePurchaseSection(Landroid/app/Activity;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->purchaseButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->purchaseButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->purchaseButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    sget-object p1, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PRE:Lcom/brakefield/painter/billing/PainterSku;

    invoke-static {p1}, Lcom/brakefield/painter/PurchaseManager;->getPurchasePrice(Lcom/brakefield/infinitestudio/billing/Sku;)Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->purchaseButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTrialSection()V
    .locals 3

    .line 177
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->getTrial()Lcom/brakefield/painter/billing/PainterTrial;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/brakefield/painter/billing/PainterTrial;->getCurrentState()Lcom/brakefield/painter/billing/PainterTrial$TrialState;

    move-result-object v1

    .line 180
    sget-object v2, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$4;->$SwitchMap$com$brakefield$painter$billing$PainterTrial$TrialState:[I

    invoke-virtual {v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->updateTrialSectionAsEnded(Lcom/brakefield/painter/billing/PainterTrial;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->updateTrialSectionAsRunning(Lcom/brakefield/painter/billing/PainterTrial;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->updateTrialSectionAsAvailable(Lcom/brakefield/painter/billing/PainterTrial;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->trialButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->trialButtonContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private updateTrialSectionAsAvailable(Lcom/brakefield/painter/billing/PainterTrial;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->freeTrialLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f120b14

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->freeTrialButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f120abd

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->trialButton:Landroid/widget/Button;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;Lcom/brakefield/painter/billing/PainterTrial;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->trialButtonContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    const-string v0, "Trial available"

    iput-object v0, p1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;->trialInfo:Ljava/lang/String;

    return-void
.end method

.method private updateTrialSectionAsEnded(Lcom/brakefield/painter/billing/PainterTrial;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->trialButtonContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    const-string v0, "Trial unavailable"

    iput-object v0, p1, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;->trialInfo:Ljava/lang/String;

    return-void
.end method

.method private updateTrialSectionAsRunning(Lcom/brakefield/painter/billing/PainterTrial;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->trialButtonContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f120af6

    .line 211
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/brakefield/painter/billing/PainterTrial;->getRemainingDays()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const v1, 0x7f120b0d

    .line 217
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const v1, 0x7f120b0c

    .line 219
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120b0b

    invoke-static {v2, v1}, Lcom/brakefield/infinitestudio/Strings;->get(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    :goto_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->subTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trial running: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " days left"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;->trialInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 6

    .line 58
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->dismissHandler:Ljava/lang/Runnable;

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    move-result-object p2

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    .line 62
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f080493

    const v1, 0x7f120aca

    .line 63
    invoke-static {v0, v1}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080491

    const v3, 0x7f120ac9

    .line 64
    invoke-static {v2, v3}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08048e

    const v5, 0x7f120ac7

    .line 65
    invoke-static {v4, v5}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08048c

    const v5, 0x7f120ac6

    .line 66
    invoke-static {v4, v5}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080489

    const v5, 0x7f120ac5

    .line 67
    invoke-static {v4, v5}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08048f

    const v5, 0x7f120ac8

    .line 68
    invoke-static {v4, v5}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080495

    const v5, 0x7f120acb

    .line 69
    invoke-static {v4, v5}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v0, v1}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v2, v3}, Lcom/brakefield/painter/fragments/DrawableTabFragment;->createFragment(II)Lcom/brakefield/painter/fragments/DrawableTabFragment;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$1;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, p0, v1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    .line 85
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->pagerAdapter:Lcom/brakefield/infinitestudio/ui/TabFragmentStateAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setNestedScrollingEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 91
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->pageAnimator:Landroid/os/Handler;

    .line 102
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->readyPageAnimation()V

    .line 104
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p2}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 107
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 109
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 110
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;)V

    invoke-virtual {p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 136
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p2

    .line 137
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pagerFade:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getBottomFadeGradient(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->updatePurchaseSection(Landroid/app/Activity;)V

    .line 140
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->updateTrialSection()V

    .line 142
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->binding:Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$updatePurchaseSection$1$com-brakefield-painter-ui-viewcontrollers-UpsellViewController(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 162
    sget-object p2, Lcom/brakefield/painter/billing/PainterSku;->MASTER_PRE:Lcom/brakefield/painter/billing/PainterSku;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->purchaseFlowInfo:Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;

    invoke-static {p1, p2, v0}, Lcom/brakefield/painter/PurchaseManager;->promptPurchase(Landroid/app/Activity;Lcom/brakefield/painter/billing/PainterSku;Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController$PurchaseFlowInfo;)V

    return-void
.end method

.method synthetic lambda$updateTrialSectionAsAvailable$2$com-brakefield-painter-ui-viewcontrollers-UpsellViewController(Lcom/brakefield/painter/billing/PainterTrial;Landroid/view/View;)V
    .locals 0

    .line 200
    invoke-virtual {p1}, Lcom/brakefield/painter/billing/PainterTrial;->startTrial()V

    .line 201
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/UpsellViewController;->dismissHandler:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method readyPageAnimation()V
    .locals 0

    return-void
.end method

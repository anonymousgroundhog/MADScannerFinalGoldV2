.class public Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;
.super Ljava/lang/Object;
.source "HomeViewController.java"


# static fields
.field public static final CURRENT_TAB:I = 0x0

.field private static final DISCOVER:I = 0x0

.field private static final HOME:I = 0x1

.field private static final PROJECTS:I = 0x2

.field public static final PROJECTS_TAB:I = 0x1

.field private static selectedPage:I = 0x1


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

.field private discoverFragment:Lcom/brakefield/painter/fragments/HomeDiscoverFragment;

.field private final fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/TabFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mainFragment:Lcom/brakefield/painter/fragments/HomeMainFragment;

.field private pagerPreDrawListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private projectsFragment:Lcom/brakefield/painter/fragments/HomeProjectsFragment;

.field private tabMargin:I

.field private titleBarHeight:I

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->tabMargin:I

    .line 64
    iput v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->titleBarHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getSelectedTabIcon(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getTabColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getTabIcon(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->updateTitleBarOnPageChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(I)I
    .locals 0

    .line 44
    sput p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->selectedPage:I

    return p0
.end method

.method private getSelectedTabIcon(I)I
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f0804a0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7f0804a2

    return p1

    :cond_1
    const p1, 0x7f0804a5

    return p1
.end method

.method private getTabBindingKey(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f1204c6

    .line 221
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7f1205b2

    .line 222
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f1207ba

    .line 223
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTabColor(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 215
    sget p1, Lcom/brakefield/infinitestudio/color/Colors;->ORANGE:I

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 216
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result p1

    return p1

    .line 217
    :cond_1
    sget p1, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    return p1
.end method

.method private getTabIcon(I)I
    .locals 1

    if-nez p1, :cond_0

    const p1, 0x7f08049f

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7f0804a1

    return p1

    :cond_1
    const p1, 0x7f0804a4

    return p1
.end method

.method private showAboutScreen(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 317
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;-><init>()V

    .line 318
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/AboutViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 319
    invoke-virtual {p2, p1, v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->fullscreen(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method private updateTitle(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v2, 0x7f120113

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 289
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v2, 0x7f120045

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->projectsFragment:Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    invoke-virtual {v2}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-ne p1, v0, :cond_2

    .line 293
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setInvisible(Landroid/view/View;)V

    .line 294
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->infiniteLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    .line 295
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->appLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_1

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->infiniteLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setInvisible(Landroid/view/View;)V

    .line 298
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->appLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setInvisible(Landroid/view/View;)V

    .line 299
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private updateTitleBarIcons(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newProjectButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    .line 306
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newFolderButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newProjectButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 309
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newFolderButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    :goto_0
    if-ne p1, v0, :cond_1

    .line 312
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore;->canNavigateBack()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->back:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_1

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->back:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private updateTitleBarOnPageChange(I)V
    .locals 2

    .line 274
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getTabColor(I)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 276
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->updateTitle(I)V

    .line 277
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->updateTitleBarIcons(I)V

    return-void
.end method


# virtual methods
.method public adjustTabWidths(Lcom/google/android/material/tabs/TabLayout;I)V
    .locals 6

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 229
    check-cast v1, Landroid/view/ViewGroup;

    .line 230
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 231
    new-instance v3, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;

    new-instance v4, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;

    invoke-direct {v4, p2, v2, v2}, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;-><init>(III)V

    invoke-direct {v3, v4}, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;-><init>(Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;)V

    .line 232
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;->get(I)F

    move-result p1

    float-to-int p1, p1

    .line 233
    iget p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->tabMargin:I

    if-eq p1, p2, :cond_4

    .line 234
    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->tabMargin:I

    if-gez p1, :cond_0

    move p1, v0

    .line 236
    :cond_0
    div-int/lit8 p2, p1, 0x2

    :goto_0
    if-ge v0, v2, :cond_4

    .line 238
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    .line 240
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 243
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 244
    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 245
    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, -0x1

    if-ne v0, v5, :cond_2

    .line 247
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 248
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 249
    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 250
    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 253
    invoke-virtual {v4, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 254
    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 255
    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 257
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public back()Z
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 324
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/PainterProjectStore;->canNavigateBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/PainterProjectStore;->navigateBack()V

    .line 326
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->updateTitle(I)V

    .line 327
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->updateTitleBarIcons(I)V

    .line 328
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/fragments/HomeTabFragment;

    .line 329
    invoke-virtual {v0}, Lcom/brakefield/painter/fragments/HomeTabFragment;->refresh()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ZI)Landroid/view/View;
    .locals 2

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x2

    .line 69
    sput p4, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->selectedPage:I

    .line 71
    :cond_0
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    if-eq p4, p2, :cond_1

    .line 72
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 73
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object p4

    invoke-virtual {p4}, Lcom/brakefield/painter/PainterProjectStore;->load()V

    .line 74
    new-instance p4, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;

    invoke-direct {p4, p2}, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->discoverFragment:Lcom/brakefield/painter/fragments/HomeDiscoverFragment;

    .line 75
    new-instance p4, Lcom/brakefield/painter/fragments/HomeMainFragment;

    invoke-direct {p4, p2}, Lcom/brakefield/painter/fragments/HomeMainFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->mainFragment:Lcom/brakefield/painter/fragments/HomeMainFragment;

    .line 76
    new-instance p4, Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    invoke-direct {p4, p2}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->projectsFragment:Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    .line 79
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    invoke-static {p4}, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    move-result-object p4

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    invoke-static {p4, v1}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper;->setupBlurView(Landroid/view/Window;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;)V

    .line 83
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->back:Landroid/widget/ImageView;

    invoke-static {p4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 84
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->back:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->back:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 87
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newProjectButton:Landroid/widget/ImageView;

    invoke-static {p4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 88
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newProjectButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newProjectButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 91
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newFolderButton:Landroid/widget/ImageView;

    invoke-static {p4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 92
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newFolderButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->newFolderButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 95
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->infiniteLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->appTitleLabels:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-static {p4, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 96
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->infiniteLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p4, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->appLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {p4, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getScreenBackgroundColor()I

    move-result v1

    invoke-virtual {p4, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    invoke-static {p4, v1}, Lcom/brakefield/infinitestudio/ui/BlurViewHelper;->setupBlurView(Landroid/view/Window;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;)V

    .line 103
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getClampedColor(I)I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 104
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopBarColor()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 106
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 107
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p4, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 109
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->discoverFragment:Lcom/brakefield/painter/fragments/HomeDiscoverFragment;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getImportIntentLaunchers()Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/brakefield/painter/fragments/HomeDiscoverFragment;->setIntentLaunchers(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    .line 110
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->mainFragment:Lcom/brakefield/painter/fragments/HomeMainFragment;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getImportIntentLaunchers()Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/brakefield/painter/fragments/HomeMainFragment;->setIntentLaunchers(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    .line 111
    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->projectsFragment:Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getImportIntentLaunchers()Lcom/brakefield/infinitestudio/ImportIntentLaunchers;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->setIntentLaunchers(Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V

    .line 113
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 114
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->discoverFragment:Lcom/brakefield/painter/fragments/HomeDiscoverFragment;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->mainFragment:Lcom/brakefield/painter/fragments/HomeMainFragment;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->projectsFragment:Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$1;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    invoke-direct {p4, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V

    invoke-virtual {p2, p4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 129
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$2;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 146
    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    iget-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p4, p4, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    invoke-direct {p1, p2, p4, v0}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 149
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 151
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 153
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$3;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 171
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    sget p2, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->selectedPage:I

    invoke-virtual {p1, p2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 173
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    .line 174
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p4, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;I)V

    invoke-virtual {p2, p4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    if-eqz p3, :cond_2

    .line 187
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda10;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->pagerPreDrawListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 193
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->pagerPreDrawListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    return-object p1
.end method

.method public isShowing(Lcom/brakefield/painter/ui/SimpleUI;)Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 266
    :cond_0
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->showingPopup(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$getView$0$com-brakefield-painter-ui-viewcontrollers-HomeViewController(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->back()Z

    return-void
.end method

.method synthetic lambda$getView$1$com-brakefield-painter-ui-viewcontrollers-HomeViewController(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->projectsFragment:Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->createNewProject(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$getView$2$com-brakefield-painter-ui-viewcontrollers-HomeViewController(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->projectsFragment:Lcom/brakefield/painter/fragments/HomeProjectsFragment;

    invoke-virtual {p1}, Lcom/brakefield/painter/fragments/HomeProjectsFragment;->createNewFolder()V

    return-void
.end method

.method synthetic lambda$getView$3$com-brakefield-painter-ui-viewcontrollers-HomeViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->showAboutScreen(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$4$com-brakefield-painter-ui-viewcontrollers-HomeViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->showAboutScreen(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method synthetic lambda$getView$5$com-brakefield-painter-ui-viewcontrollers-HomeViewController(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/TabFragment;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/TabFragment;->getIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 148
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    const v0, 0x7f0a0663

    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->getTabBindingKey(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$getView$6$com-brakefield-painter-ui-viewcontrollers-HomeViewController()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->adjustTabWidths(Lcom/google/android/material/tabs/TabLayout;I)V

    return-void
.end method

.method synthetic lambda$getView$7$com-brakefield-painter-ui-viewcontrollers-HomeViewController(I)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    .line 176
    iget v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->titleBarHeight:I

    if-eq v1, v0, :cond_0

    .line 177
    iput v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->titleBarHeight:I

    .line 179
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 180
    check-cast v1, Lcom/brakefield/painter/fragments/HomeTabFragment;

    .line 181
    iget v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->titleBarHeight:I

    invoke-virtual {v1, v2, p1}, Lcom/brakefield/painter/fragments/HomeTabFragment;->updatePadding(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$8$com-brakefield-painter-ui-viewcontrollers-HomeViewController()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->pagerPreDrawListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 190
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/fragments/HomeTabFragment;

    .line 191
    invoke-virtual {v0}, Lcom/brakefield/painter/fragments/HomeTabFragment;->animateFromEditor()V

    return-void
.end method

.method synthetic lambda$openProject$10$com-brakefield-painter-ui-viewcontrollers-HomeViewController(Lcom/brakefield/painter/PainterProjectStore$Project;)V
    .locals 1

    .line 338
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;)V

    sput-object v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProjectListener:Ljava/lang/Runnable;

    .line 339
    invoke-virtual {p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->getLocation()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->loadProject:Ljava/lang/String;

    .line 340
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method synthetic lambda$openProject$9$com-brakefield-painter-ui-viewcontrollers-HomeViewController()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopups()V

    return-void
.end method

.method public openProject(Ljava/lang/String;)V
    .locals 2

    .line 336
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p1

    .line 337
    new-instance v0, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;Lcom/brakefield/painter/PainterProjectStore$Project;)V

    invoke-direct {v0, p1, v1}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;-><init>(Lcom/brakefield/painter/PainterProjectStore$Project;Ljava/lang/Runnable;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 341
    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public refreshProjects()V
    .locals 0

    return-void
.end method

.method public updateTitleBar()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->binding:Lcom/brakefield/painter/databinding/HomeViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/HomeViewControllerBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 282
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->updateTitle(I)V

    .line 283
    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeViewController;->updateTitleBarIcons(I)V

    return-void
.end method

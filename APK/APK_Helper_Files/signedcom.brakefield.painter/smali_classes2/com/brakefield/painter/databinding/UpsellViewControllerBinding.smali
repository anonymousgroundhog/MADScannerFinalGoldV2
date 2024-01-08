.class public final Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;
.super Ljava/lang/Object;
.source "UpsellViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final freeTrialButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final freeTrialLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final pager:Landroidx/viewpager2/widget/ViewPager2;

.field public final pagerFade:Landroid/view/View;

.field public final purchaseButton:Landroid/widget/Button;

.field public final purchaseButtonContainer:Landroid/widget/FrameLayout;

.field public final purchaseButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final purchaseLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final shimmerContainer:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final subTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final tabs:Lcom/google/android/material/tabs/TabLayout;

.field public final termsOfServiceButton:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final trialButton:Landroid/widget/Button;

.field public final trialButtonContainer:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Landroid/widget/Button;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/facebook/shimmer/ShimmerFrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/google/android/material/tabs/TabLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;Landroid/widget/FrameLayout;)V
    .locals 2

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 80
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 81
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->freeTrialButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->freeTrialLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pager:Landroidx/viewpager2/widget/ViewPager2;

    move-object v1, p5

    .line 84
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->pagerFade:Landroid/view/View;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->purchaseButton:Landroid/widget/Button;

    move-object v1, p7

    .line 86
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->purchaseButtonContainer:Landroid/widget/FrameLayout;

    move-object v1, p8

    .line 87
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->purchaseButtonText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move-object v1, p9

    .line 88
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->purchaseLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move-object v1, p10

    .line 89
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->shimmerContainer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    move-object v1, p11

    .line 90
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->subTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move-object v1, p12

    .line 91
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->tabs:Lcom/google/android/material/tabs/TabLayout;

    move-object v1, p13

    .line 92
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->termsOfServiceButton:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->title:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->trialButton:Landroid/widget/Button;

    move-object/from16 v1, p16

    .line 95
    iput-object v1, v0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->trialButtonContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0a0260

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0261

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0409

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v7, :cond_0

    const v1, 0x7f0a040a

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    const v1, 0x7f0a0479

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    const v1, 0x7f0a047a

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a047b

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a047c

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a055c

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/facebook/shimmer/ShimmerFrameLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a05c2

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a05e9

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a05fe

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a062f

    .line 198
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a065b

    .line 204
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Button;

    if-eqz v18, :cond_0

    const v1, 0x7f0a065c

    .line 210
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/FrameLayout;

    if-eqz v19, :cond_0

    .line 215
    new-instance v1, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v19}, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroidx/viewpager2/widget/ViewPager2;Landroid/view/View;Landroid/widget/Button;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/facebook/shimmer/ShimmerFrameLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/google/android/material/tabs/TabLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/Button;Landroid/widget/FrameLayout;)V

    return-object v1

    .line 220
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;
    .locals 2

    const v0, 0x7f0d014f

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/brakefield/painter/databinding/UpsellViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.class public final Lcom/brakefield/painter/databinding/FilterToolbarBinding;
.super Ljava/lang/Object;
.source "FilterToolbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

.field public final adjustmentSliderBarrier:Landroidx/constraintlayout/widget/Barrier;

.field public final adjustmentSliderGroup:Landroidx/constraintlayout/widget/Group;

.field public final adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final apply:Landroid/widget/ImageView;

.field public final cancel:Landroid/widget/ImageView;

.field public final changeFilter:Landroid/widget/ImageView;

.field public final compare:Landroid/widget/ImageView;

.field public final filterType:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

.field public final maskingToolbar:Lcom/brakefield/painter/databinding/MaskingToolbarBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Group;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/ui/GradientSlider;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    iput-object p2, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    .line 68
    iput-object p3, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSliderBarrier:Landroidx/constraintlayout/widget/Barrier;

    .line 69
    iput-object p4, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSliderGroup:Landroidx/constraintlayout/widget/Group;

    .line 70
    iput-object p5, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 71
    iput-object p6, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->apply:Landroid/widget/ImageView;

    .line 72
    iput-object p7, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->cancel:Landroid/widget/ImageView;

    .line 73
    iput-object p8, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->changeFilter:Landroid/widget/ImageView;

    .line 74
    iput-object p9, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->compare:Landroid/widget/ImageView;

    .line 75
    iput-object p10, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->filterType:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 76
    iput-object p11, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    .line 77
    iput-object p12, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->maskingToolbar:Lcom/brakefield/painter/databinding/MaskingToolbarBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/FilterToolbarBinding;
    .locals 15

    const v0, 0x7f0a0054

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0055

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0056

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0057

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a006a

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a00f1

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0107

    .line 144
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a014d

    .line 150
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a023e

    .line 156
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0270

    .line 162
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/brakefield/painter/ui/GradientSlider;

    if-eqz v13, :cond_0

    const v0, 0x7f0a036e

    .line 168
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {v1}, Lcom/brakefield/painter/databinding/MaskingToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/MaskingToolbarBinding;

    move-result-object v14

    .line 174
    new-instance v0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/brakefield/painter/databinding/FilterToolbarBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Group;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/ui/GradientSlider;Lcom/brakefield/painter/databinding/MaskingToolbarBinding;)V

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/FilterToolbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/FilterToolbarBinding;
    .locals 2

    const v0, 0x7f0d0091

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/FilterToolbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/brakefield/painter/databinding/FilterToolbarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

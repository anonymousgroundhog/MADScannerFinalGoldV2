.class public final Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;
.super Ljava/lang/Object;
.source "AdjustmentLayerToolbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adjustmentName:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

.field public final adjustmentSliderGroup:Landroidx/constraintlayout/widget/Group;

.field public final adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/Group;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/ui/GradientSlider;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    iput-object p2, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentName:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 46
    iput-object p3, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    .line 47
    iput-object p4, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSliderGroup:Landroidx/constraintlayout/widget/Group;

    .line 48
    iput-object p5, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 49
    iput-object p6, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;
    .locals 9

    const v0, 0x7f0a0053

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0054

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0056

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0057

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0270

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/painter/ui/GradientSlider;

    if-eqz v8, :cond_0

    .line 109
    new-instance v0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/Group;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/ui/GradientSlider;)V

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;
    .locals 2

    const v0, 0x7f0d002d

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

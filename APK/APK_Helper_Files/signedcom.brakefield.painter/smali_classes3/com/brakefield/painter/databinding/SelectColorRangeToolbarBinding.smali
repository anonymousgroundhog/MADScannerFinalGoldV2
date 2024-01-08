.class public final Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;
.super Ljava/lang/Object;
.source "SelectColorRangeToolbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

.field public final adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final compare:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final selectColorRangeSettings:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    .line 41
    iput-object p3, p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 42
    iput-object p4, p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->compare:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->selectColorRangeSettings:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;
    .locals 8

    const v0, 0x7f0a0054

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0057

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a014d

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 91
    move-object v7, p0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 93
    new-instance p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;
    .locals 2

    const v0, 0x7f0d0124

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/brakefield/painter/databinding/SelectColorRangeToolbarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

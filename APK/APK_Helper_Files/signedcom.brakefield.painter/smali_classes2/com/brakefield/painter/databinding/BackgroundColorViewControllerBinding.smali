.class public final Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;
.super Ljava/lang/Object;
.source "BackgroundColorViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final backgroundColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

.field public final depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final scaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final textureButton:Landroid/view/View;

.field public final textureImage:Landroid/widget/ImageView;

.field public final textureSettings:Landroid/widget/LinearLayout;

.field public final textureToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/RoundButton;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 60
    iput-object p2, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->backgroundColor:Lcom/brakefield/infinitestudio/ui/RoundButton;

    .line 61
    iput-object p3, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 62
    iput-object p4, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 63
    iput-object p5, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->scaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 64
    iput-object p6, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureButton:Landroid/view/View;

    .line 65
    iput-object p7, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureImage:Landroid/widget/ImageView;

    .line 66
    iput-object p8, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureSettings:Landroid/widget/LinearLayout;

    .line 67
    iput-object p9, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->textureToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 68
    iput-object p10, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;
    .locals 13

    const v0, 0x7f0a007c

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/RoundButton;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0199

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a03f8

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a04dc

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0613

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    const v0, 0x7f0a0615

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0617

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a061c

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0635

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v12, :cond_0

    .line 152
    new-instance v0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/RoundButton;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;
    .locals 2

    const v0, 0x7f0d002f

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BackgroundColorViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

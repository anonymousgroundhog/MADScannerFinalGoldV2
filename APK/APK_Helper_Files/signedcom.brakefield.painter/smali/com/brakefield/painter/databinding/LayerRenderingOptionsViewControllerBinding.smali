.class public final Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;
.super Ljava/lang/Object;
.source "LayerRenderingOptionsViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final colorModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

.field public final gammaCorrectionToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final renderingLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final visibilityModesLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final visibilityNormalButton:Landroid/widget/FrameLayout;

.field public final visibilityNormalImage:Landroid/widget/ImageView;

.field public final visibilityNormalText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final visibilitySoloButton:Landroid/widget/FrameLayout;

.field public final visibilitySoloImage:Landroid/widget/ImageView;

.field public final visibilitySoloText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final visibilityTraceButton:Landroid/widget/FrameLayout;

.field public final visibilityTraceImage:Landroid/widget/ImageView;

.field public final visibilityTraceText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 74
    iput-object p2, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->colorModesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    .line 75
    iput-object p3, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->gammaCorrectionToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 76
    iput-object p4, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->renderingLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 77
    iput-object p5, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityModesLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 78
    iput-object p6, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityNormalButton:Landroid/widget/FrameLayout;

    .line 79
    iput-object p7, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityNormalImage:Landroid/widget/ImageView;

    .line 80
    iput-object p8, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityNormalText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 81
    iput-object p9, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilitySoloButton:Landroid/widget/FrameLayout;

    .line 82
    iput-object p10, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilitySoloImage:Landroid/widget/ImageView;

    .line 83
    iput-object p11, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilitySoloText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 84
    iput-object p12, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityTraceButton:Landroid/widget/FrameLayout;

    .line 85
    iput-object p13, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityTraceImage:Landroid/widget/ImageView;

    .line 86
    iput-object p14, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->visibilityTraceText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0a012c

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0265

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a04a5

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a069f

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a06a0

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a06a1

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a06a2

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a06a3

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a06a4

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a06a5

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a06a6

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a06a7

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a06a8

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v17, :cond_0

    .line 195
    new-instance v1, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;-><init>(Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v1

    .line 201
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;
    .locals 2

    const v0, 0x7f0d00b1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/brakefield/painter/databinding/LayerRenderingOptionsViewControllerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

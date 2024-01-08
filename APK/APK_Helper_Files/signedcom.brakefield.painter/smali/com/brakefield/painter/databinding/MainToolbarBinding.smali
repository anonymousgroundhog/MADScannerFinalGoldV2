.class public final Lcom/brakefield/painter/databinding/MainToolbarBinding;
.super Ljava/lang/Object;
.source "MainToolbarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final blendButton:Landroid/widget/ImageView;

.field public final blendColorButton:Landroid/widget/ImageView;

.field public final colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

.field public final colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

.field public final eraserButton:Landroid/widget/ImageView;

.field public final filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

.field public final flow:Landroidx/constraintlayout/helper/widget/Flow;

.field public final noEraserButton:Landroid/widget/ImageView;

.field public final opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

.field public final paintButton:Landroid/widget/ImageView;

.field public final panel:Landroid/view/View;

.field private final rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

.field public final sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

.field public final sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;


# direct methods
.method private constructor <init>(Lcom/brakefield/infinitestudio/gestures/GestureLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/ColorFillButton;Lcom/brakefield/infinitestudio/ui/ColorSweepView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/PullButton;Landroidx/constraintlayout/helper/widget/Flow;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/OpacityPullButton;Landroid/widget/ImageView;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/SizePullButton;Lcom/brakefield/infinitestudio/ui/SizeSweepView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    .line 75
    iput-object p2, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendButton:Landroid/widget/ImageView;

    .line 76
    iput-object p3, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    .line 77
    iput-object p4, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    .line 78
    iput-object p5, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    .line 79
    iput-object p6, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    .line 80
    iput-object p7, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    .line 81
    iput-object p8, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->flow:Landroidx/constraintlayout/helper/widget/Flow;

    .line 82
    iput-object p9, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->noEraserButton:Landroid/widget/ImageView;

    .line 83
    iput-object p10, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    .line 84
    iput-object p11, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    .line 85
    iput-object p12, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->panel:Landroid/view/View;

    .line 86
    iput-object p13, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    .line 87
    iput-object p14, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/MainToolbarBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0a008e

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a008f

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0128

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0141

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01ea

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a023b

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/brakefield/infinitestudio/ui/PullButton;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0258

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/helper/widget/Flow;

    if-eqz v11, :cond_0

    const v1, 0x7f0a03e7

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a03f8

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    if-eqz v13, :cond_0

    const v1, 0x7f0a040c

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0412

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    const v1, 0x7f0a056b

    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/brakefield/infinitestudio/ui/SizePullButton;

    if-eqz v16, :cond_0

    const v1, 0x7f0a056c

    .line 190
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    if-eqz v17, :cond_0

    .line 195
    new-instance v1, Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-object v4, v0

    check-cast v4, Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/brakefield/painter/databinding/MainToolbarBinding;-><init>(Lcom/brakefield/infinitestudio/gestures/GestureLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/ColorFillButton;Lcom/brakefield/infinitestudio/ui/ColorSweepView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/PullButton;Landroidx/constraintlayout/helper/widget/Flow;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/OpacityPullButton;Landroid/widget/ImageView;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/SizePullButton;Lcom/brakefield/infinitestudio/ui/SizeSweepView;)V

    return-object v1

    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/MainToolbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/MainToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/MainToolbarBinding;
    .locals 2

    const v0, 0x7f0d00be

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/MainToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/MainToolbarBinding;->getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->rootView:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    return-object v0
.end method

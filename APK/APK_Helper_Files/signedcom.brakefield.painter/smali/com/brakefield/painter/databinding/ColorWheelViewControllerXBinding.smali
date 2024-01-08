.class public final Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;
.super Ljava/lang/Object;
.source "ColorWheelViewControllerXBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

.field public final colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

.field public final colorSettingsBarrier:Landroidx/constraintlayout/widget/Barrier;

.field public final colorSettingsToggle:Landroid/widget/ImageView;

.field public final colorWheel:Landroid/widget/FrameLayout;

.field public final colorsContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final compareColor:Lcom/brakefield/infinitestudio/color/ColorPickerButton;

.field public final eyedropper:Landroid/widget/ImageView;

.field public final opacitySetting:Landroid/widget/FrameLayout;

.field public final opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field public final options:Landroid/widget/ImageView;

.field public final previousColor:Lcom/brakefield/infinitestudio/color/ColorDotButton;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final swatch:Landroidx/cardview/widget/CardView;

.field public final swatchCollection:Landroidx/recyclerview/widget/RecyclerView;

.field public final swatchCollectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

.field public final swatchTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/ShadowImageView;Lcom/brakefield/painter/databinding/SettingsColorBinding;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/color/ColorPickerButton;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/color/ColorDotButton;Landroidx/cardview/widget/CardView;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 2

    move-object v0, p0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 89
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 90
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    move-object v1, p3

    .line 91
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    move-object v1, p4

    .line 92
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsBarrier:Landroidx/constraintlayout/widget/Barrier;

    move-object v1, p5

    .line 93
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsToggle:Landroid/widget/ImageView;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorWheel:Landroid/widget/FrameLayout;

    move-object v1, p7

    .line 95
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorsContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p8

    .line 96
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->compareColor:Lcom/brakefield/infinitestudio/color/ColorPickerButton;

    move-object v1, p9

    .line 97
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->eyedropper:Landroid/widget/ImageView;

    move-object v1, p10

    .line 98
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->opacitySetting:Landroid/widget/FrameLayout;

    move-object v1, p11

    .line 99
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    move-object v1, p12

    .line 100
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->options:Landroid/widget/ImageView;

    move-object v1, p13

    .line 101
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->previousColor:Lcom/brakefield/infinitestudio/color/ColorDotButton;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatch:Landroidx/cardview/widget/CardView;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchCollection:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchCollectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-object/from16 v1, p17

    .line 105
    iput-object v1, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f0a004d

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0139

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    invoke-static {v2}, Lcom/brakefield/painter/databinding/SettingsColorBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/SettingsColorBinding;

    move-result-object v6

    const v1, 0x7f0a013a

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v7, :cond_0

    const v1, 0x7f0a013c

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0143

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    .line 166
    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a014e

    .line 169
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/brakefield/infinitestudio/color/ColorPickerButton;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0223

    .line 175
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a03f7

    .line 181
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a03f8

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a03fb

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a045d

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/brakefield/infinitestudio/color/ColorDotButton;

    if-eqz v16, :cond_0

    const v1, 0x7f0a05c8

    .line 205
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/cardview/widget/CardView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a05ca

    .line 211
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a05cb

    .line 217
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f0a05cf

    .line 223
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v20, :cond_0

    .line 228
    new-instance v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    move-object v3, v0

    move-object v4, v10

    invoke-direct/range {v3 .. v20}, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/ShadowImageView;Lcom/brakefield/painter/databinding/SettingsColorBinding;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/color/ColorPickerButton;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/color/ColorDotButton;Landroidx/cardview/widget/CardView;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v0

    .line 233
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;
    .locals 2

    const v0, 0x7f0d0054

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

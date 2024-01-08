.class public final Lcom/brakefield/painter/databinding/ThumbLayerBinding;
.super Ljava/lang/Object;
.source "ThumbLayerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final blendModeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final clippingMaskHint:Landroid/widget/ImageView;

.field public final layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

.field public final nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final preview:Lcom/makeramen/roundedimageview/RoundedImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final target:Landroid/widget/ImageView;

.field public final thumbnail:Landroid/widget/FrameLayout;

.field public final visibilityButton:Landroid/widget/ImageView;

.field public final visibilityDot:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/databinding/ThumbMaskBinding;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->blendModeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 63
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->clippingMaskHint:Landroid/widget/ImageView;

    .line 64
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 65
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    .line 66
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 67
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    .line 68
    iput-object p8, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->target:Landroid/widget/ImageView;

    .line 69
    iput-object p9, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->thumbnail:Landroid/widget/FrameLayout;

    .line 70
    iput-object p10, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityButton:Landroid/widget/ImageView;

    .line 71
    iput-object p11, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityDot:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbLayerBinding;
    .locals 14

    const v0, 0x7f0a00af

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a011d

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0302

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0366

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {v1}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    move-result-object v7

    const v0, 0x7f0a03c9

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0459

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a05f7

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0622

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a069b

    .line 151
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a069e

    .line 157
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 162
    new-instance v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/brakefield/painter/databinding/ThumbLayerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/databinding/ThumbMaskBinding;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ThumbLayerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ThumbLayerBinding;
    .locals 2

    const v0, 0x7f0d0142

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

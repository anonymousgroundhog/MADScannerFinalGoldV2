.class public final Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;
.super Ljava/lang/Object;
.source "ThumbLayerGroupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clippingMaskHint:Landroid/widget/ImageView;

.field public final icon:Landroid/widget/ImageView;

.field public final maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

.field public final nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final thumbnail:Landroid/widget/FrameLayout;

.field public final visibilityButton:Landroid/widget/ImageView;

.field public final visibilityDot:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/painter/databinding/ThumbMaskBinding;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->clippingMaskHint:Landroid/widget/ImageView;

    .line 52
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->icon:Landroid/widget/ImageView;

    .line 53
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    .line 54
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 55
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->thumbnail:Landroid/widget/FrameLayout;

    .line 56
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityButton:Landroid/widget/ImageView;

    .line 57
    iput-object p8, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityDot:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;
    .locals 11

    const v0, 0x7f0a011d

    .line 88
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a02b5

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0366

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {v1}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    move-result-object v6

    const v0, 0x7f0a03c9

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0622

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a069b

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a069e

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 130
    new-instance v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/painter/databinding/ThumbMaskBinding;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;
    .locals 2

    const v0, 0x7f0d0144

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.class public final Lcom/brakefield/painter/databinding/ThumbTraceBinding;
.super Ljava/lang/Object;
.source "ThumbTraceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final lockStripes:Landroid/widget/ImageView;

.field public final lockTransparencyHint:Landroid/widget/ImageView;

.field public final nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final preview:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final selectedBorder:Landroid/widget/ImageView;

.field public final thumbnail:Landroid/widget/FrameLayout;

.field public final visibilityButton:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 55
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->lockStripes:Landroid/widget/ImageView;

    .line 56
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->lockTransparencyHint:Landroid/widget/ImageView;

    .line 57
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 58
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->preview:Landroid/widget/ImageView;

    .line 59
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->selectedBorder:Landroid/widget/ImageView;

    .line 60
    iput-object p8, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->thumbnail:Landroid/widget/FrameLayout;

    .line 61
    iput-object p9, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->visibilityButton:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbTraceBinding;
    .locals 12

    const v0, 0x7f0a0302

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a033e

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0343

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a03c9

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0459

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0540

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0622

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a069b

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 139
    new-instance v0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/brakefield/painter/databinding/ThumbTraceBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ThumbTraceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ThumbTraceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ThumbTraceBinding;
    .locals 2

    const v0, 0x7f0d0149

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbTraceBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ThumbTraceBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.class public final Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;
.super Ljava/lang/Object;
.source "LayerSelectionOptionsViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/FrameLayout;

.field public final selectDifferenceButton:Landroid/widget/FrameLayout;

.field public final selectDifferenceImage:Landroid/widget/ImageView;

.field public final selectIntersectButton:Landroid/widget/FrameLayout;

.field public final selectIntersectImage:Landroid/widget/ImageView;

.field public final selectReplaceButton:Landroid/widget/FrameLayout;

.field public final selectReplaceImage:Landroid/widget/ImageView;

.field public final selectReverseSubtractButton:Landroid/widget/FrameLayout;

.field public final selectReverseSubtractImage:Landroid/widget/ImageView;

.field public final selectSubtractButton:Landroid/widget/FrameLayout;

.field public final selectSubtractImage:Landroid/widget/ImageView;

.field public final selectUnionButton:Landroid/widget/FrameLayout;

.field public final selectUnionImage:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 67
    iput-object p2, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectDifferenceButton:Landroid/widget/FrameLayout;

    .line 68
    iput-object p3, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectDifferenceImage:Landroid/widget/ImageView;

    .line 69
    iput-object p4, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectIntersectButton:Landroid/widget/FrameLayout;

    .line 70
    iput-object p5, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectIntersectImage:Landroid/widget/ImageView;

    .line 71
    iput-object p6, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReplaceButton:Landroid/widget/FrameLayout;

    .line 72
    iput-object p7, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReplaceImage:Landroid/widget/ImageView;

    .line 73
    iput-object p8, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReverseSubtractButton:Landroid/widget/FrameLayout;

    .line 74
    iput-object p9, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectReverseSubtractImage:Landroid/widget/ImageView;

    .line 75
    iput-object p10, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectSubtractButton:Landroid/widget/FrameLayout;

    .line 76
    iput-object p11, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectSubtractImage:Landroid/widget/ImageView;

    .line 77
    iput-object p12, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectUnionButton:Landroid/widget/FrameLayout;

    .line 78
    iput-object p13, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->selectUnionImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a051d

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a051e

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0525

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0526

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0531

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0532

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0533

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a0534

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0535

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0536

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a053b

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/FrameLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a053c

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 181
    new-instance v1, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    return-object v1

    .line 187
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;
    .locals 2

    const v0, 0x7f0d00b2

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/brakefield/painter/databinding/LayerSelectionOptionsViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

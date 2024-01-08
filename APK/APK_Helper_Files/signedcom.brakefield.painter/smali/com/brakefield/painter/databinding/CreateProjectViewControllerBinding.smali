.class public final Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;
.super Ljava/lang/Object;
.source "CreateProjectViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final back:Landroid/widget/ImageView;

.field public final canvasView:Landroidx/cardview/widget/CardView;

.field public final container:Landroid/widget/LinearLayout;

.field public final createButton:Landroid/widget/Button;

.field public final dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

.field public final imageView:Landroid/widget/ImageView;

.field public final paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

.field public final projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

.field public final renderingSection:Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final scrollView:Landroid/widget/ScrollView;

.field public final textureView:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

.field public final titleBar:Landroid/view/View;

.field public final titleBarContent:Landroid/widget/LinearLayout;

.field public final titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;Landroid/widget/ImageView;Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;Landroid/widget/ScrollView;Lcom/makeramen/roundedimageview/RoundedImageView;Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V
    .locals 2

    move-object v0, p0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 83
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 84
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->back:Landroid/widget/ImageView;

    move-object v1, p3

    .line 85
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->canvasView:Landroidx/cardview/widget/CardView;

    move-object v1, p4

    .line 86
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->container:Landroid/widget/LinearLayout;

    move-object v1, p5

    .line 87
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->createButton:Landroid/widget/Button;

    move-object v1, p6

    .line 88
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->dimensionsSection:Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    move-object v1, p7

    .line 89
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->imageView:Landroid/widget/ImageView;

    move-object v1, p8

    .line 90
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->paperSection:Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    move-object v1, p9

    .line 91
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->projectTypesSection:Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    move-object v1, p10

    .line 92
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->renderingSection:Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;

    move-object v1, p11

    .line 93
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->scrollView:Landroid/widget/ScrollView;

    move-object v1, p12

    .line 94
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->textureView:Lcom/makeramen/roundedimageview/RoundedImageView;

    move-object v1, p13

    .line 95
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->timelapseSection:Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    move-object/from16 v1, p14

    .line 96
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->titleBar:Landroid/view/View;

    move-object/from16 v1, p15

    .line 97
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->titleBarContent:Landroid/widget/LinearLayout;

    move-object/from16 v1, p16

    .line 98
    iput-object v1, v0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0a007a

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a00f8

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/cardview/widget/CardView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a015c

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a016f

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01a6

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 157
    invoke-static {v2}, Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;

    move-result-object v9

    const v1, 0x7f0a02c3

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0417

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 170
    invoke-static {v2}, Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;

    move-result-object v11

    const v1, 0x7f0a046e

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {v2}, Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;

    move-result-object v12

    const v1, 0x7f0a04a6

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 184
    invoke-static {v2}, Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;

    move-result-object v13

    const v1, 0x7f0a04e9

    .line 187
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ScrollView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a061d

    .line 193
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a062a

    .line 199
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    invoke-static {v2}, Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;

    move-result-object v16

    const v1, 0x7f0a0631

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    const v1, 0x7f0a0632

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0635

    .line 218
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v19, :cond_0

    .line 223
    new-instance v1, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v19}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/brakefield/painter/databinding/CreateProjectDimensionsSectionBinding;Landroid/widget/ImageView;Lcom/brakefield/painter/databinding/CreateProjectPaperSectionBinding;Lcom/brakefield/painter/databinding/CreateProjectTypesSectionBinding;Lcom/brakefield/painter/databinding/CreateProjectRenderingSectionBinding;Landroid/widget/ScrollView;Lcom/makeramen/roundedimageview/RoundedImageView;Lcom/brakefield/painter/databinding/CreateProjectTimelapseSectionBinding;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;)V

    return-object v1

    .line 228
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;
    .locals 2

    const v0, 0x7f0d005e

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/brakefield/painter/databinding/CreateProjectViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

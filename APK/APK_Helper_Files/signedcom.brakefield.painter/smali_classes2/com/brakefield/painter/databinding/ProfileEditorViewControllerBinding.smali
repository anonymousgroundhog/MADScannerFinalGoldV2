.class public final Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;
.super Ljava/lang/Object;
.source "ProfileEditorViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final curvesAccel:Landroid/widget/ImageView;

.field public final curvesDecel:Landroid/widget/ImageView;

.field public final curvesHighContrast:Landroid/widget/ImageView;

.field public final curvesLinear:Landroid/widget/ImageView;

.field public final curvesLowContrast:Landroid/widget/ImageView;

.field public final inputLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final outputLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

.field public final profileInvert:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/ui/ProfileEditorView;Landroid/widget/ImageView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesAccel:Landroid/widget/ImageView;

    .line 59
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesDecel:Landroid/widget/ImageView;

    .line 60
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesHighContrast:Landroid/widget/ImageView;

    .line 61
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesLinear:Landroid/widget/ImageView;

    .line 62
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->curvesLowContrast:Landroid/widget/ImageView;

    .line 63
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->inputLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 64
    iput-object p8, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->outputLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 65
    iput-object p9, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileEditor:Lcom/brakefield/painter/ui/ProfileEditorView;

    .line 66
    iput-object p10, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->profileInvert:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;
    .locals 13

    const v0, 0x7f0a017a

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a017c

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a017d

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a017f

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0180

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02d0

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0403

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0461

    .line 139
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/painter/ui/ProfileEditorView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0462

    .line 145
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 150
    new-instance v0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/brakefield/painter/ui/ProfileEditorView;Landroid/widget/ImageView;)V

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;
    .locals 2

    const v0, 0x7f0d010c

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ProfileEditorViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

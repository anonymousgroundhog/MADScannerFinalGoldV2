.class public final Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;
.super Ljava/lang/Object;
.source "BrushSettingsViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final brushPreview:Landroid/widget/ImageView;

.field public final brushSettings:Lcom/brakefield/painter/databinding/BrushSettingsBinding;

.field public final cancel:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final save:Landroid/widget/ImageView;

.field public final saveNewBrush:Landroid/widget/ImageView;

.field public final share:Landroid/widget/ImageView;

.field public final testSettings:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final topBar:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/brakefield/painter/databinding/BrushSettingsBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p2, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    .line 52
    iput-object p3, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->brushSettings:Lcom/brakefield/painter/databinding/BrushSettingsBinding;

    .line 53
    iput-object p4, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->cancel:Landroid/widget/ImageView;

    .line 54
    iput-object p5, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->save:Landroid/widget/ImageView;

    .line 55
    iput-object p6, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->saveNewBrush:Landroid/widget/ImageView;

    .line 56
    iput-object p7, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->share:Landroid/widget/ImageView;

    .line 57
    iput-object p8, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->testSettings:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 58
    iput-object p9, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->topBar:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;
    .locals 12

    const v0, 0x7f0a00db

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00dc

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {v1}, Lcom/brakefield/painter/databinding/BrushSettingsBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsBinding;

    move-result-object v5

    const v0, 0x7f0a00f1

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a04d3

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a04d6

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0557

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a05ff

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0641

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 137
    new-instance v0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/brakefield/painter/databinding/BrushSettingsBinding;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;)V

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;
    .locals 2

    const v0, 0x7f0d003f

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/brakefield/painter/databinding/BrushSettingsViewControllerBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

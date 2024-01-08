.class public final Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;
.super Ljava/lang/Object;
.source "ActivityMasterBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final back:Landroid/widget/ImageView;

.field public final background:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

.field public final mainContent:Landroid/widget/FrameLayout;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final titleBar:Landroid/view/View;

.field public final titleBarContent:Landroid/widget/LinearLayout;

.field public final titleBarSeparator:Landroid/view/View;

.field public final titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field public final titleTabs:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 61
    iput-object p2, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->back:Landroid/widget/ImageView;

    .line 62
    iput-object p3, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->background:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    iput-object p4, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->blurView:Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    .line 64
    iput-object p5, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->mainContent:Landroid/widget/FrameLayout;

    .line 65
    iput-object p6, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleBar:Landroid/view/View;

    .line 66
    iput-object p7, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleBarContent:Landroid/widget/LinearLayout;

    .line 67
    iput-object p8, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleBarSeparator:Landroid/view/View;

    .line 68
    iput-object p9, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 69
    iput-object p10, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->titleTabs:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;
    .locals 13

    .line 99
    sget v0, Lcom/brakefield/infinitestudio/R$id;->back:I

    .line 100
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 105
    sget v0, Lcom/brakefield/infinitestudio/R$id;->background:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    .line 111
    sget v0, Lcom/brakefield/infinitestudio/R$id;->blur_view:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/blurview/BlurView;

    if-eqz v6, :cond_0

    .line 117
    sget v0, Lcom/brakefield/infinitestudio/R$id;->main_content:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 123
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_bar:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 129
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_bar_content:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 135
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_bar_separator:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 141
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_label:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    if-eqz v11, :cond_0

    .line 147
    sget v0, Lcom/brakefield/infinitestudio/R$id;->title_tabs:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v12, :cond_0

    .line 153
    new-instance v0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    move-object v3, p0

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/blurview/BlurView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/AutosizeTextView;Lcom/google/android/material/tabs/TabLayout;)V

    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;
    .locals 2

    .line 86
    sget v0, Lcom/brakefield/infinitestudio/R$layout;->activity_master:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->bind(Landroid/view/View;)Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/brakefield/infinitestudio/databinding/ActivityMasterBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method

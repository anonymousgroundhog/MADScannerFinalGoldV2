.class public final Lcom/brakefield/painter/databinding/ActivityMainXBinding;
.super Ljava/lang/Object;
.source "ActivityMainXBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dummyContainer:Landroid/widget/FrameLayout;

.field public final helpContainer:Landroid/widget/FrameLayout;

.field public final hoverContainer:Landroid/widget/FrameLayout;

.field public final inkingContainer:Landroid/widget/FrameLayout;

.field public final mainBottomContainer:Landroid/widget/LinearLayout;

.field public final mainContainer:Landroid/widget/FrameLayout;

.field public final mainLeftContainer:Landroid/widget/FrameLayout;

.field public final mainRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

.field public final projectsGallery:Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final showInterface:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

.field public final splashScreen:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/CircleProgress;Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;Lcom/brakefield/infinitestudio/ui/ShadowImageView;Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 71
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->dummyContainer:Landroid/widget/FrameLayout;

    .line 72
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->helpContainer:Landroid/widget/FrameLayout;

    .line 73
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->hoverContainer:Landroid/widget/FrameLayout;

    .line 74
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->inkingContainer:Landroid/widget/FrameLayout;

    .line 75
    iput-object p6, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->mainBottomContainer:Landroid/widget/LinearLayout;

    .line 76
    iput-object p7, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->mainContainer:Landroid/widget/FrameLayout;

    .line 77
    iput-object p8, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->mainLeftContainer:Landroid/widget/FrameLayout;

    .line 78
    iput-object p9, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->mainRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    iput-object p10, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    .line 80
    iput-object p11, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->projectsGallery:Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;

    .line 81
    iput-object p12, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->showInterface:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    .line 82
    iput-object p13, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->splashScreen:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ActivityMainXBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0a01c3

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0a02a1

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0a02ae

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a02cd

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0a035a

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0a035b

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a035d

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a035e

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0463

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/brakefield/infinitestudio/ui/CircleProgress;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0473

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0563

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0592

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 184
    new-instance v1, Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    move-object v4, v0

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/brakefield/painter/databinding/ActivityMainXBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/CircleProgress;Lcom/brakefield/infinitestudio/ui/RevealFrameLayout;Lcom/brakefield/infinitestudio/ui/ShadowImageView;Landroid/view/View;)V

    return-object v1

    .line 188
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ActivityMainXBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/ActivityMainXBinding;
    .locals 2

    const v0, 0x7f0d0023

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ActivityMainXBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ActivityMainXBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method

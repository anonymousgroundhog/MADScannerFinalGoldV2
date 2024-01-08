.class public final Lcom/brakefield/painter/databinding/RecordViewControllerBinding;
.super Ljava/lang/Object;
.source "RecordViewControllerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final playbackViewButton:Landroid/widget/Button;

.field public final projectStatsDistanceTraveled:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

.field public final projectStatsStrokesDrawn:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

.field public final projectStatsTrackedTime:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

.field public final projectStatsUndoCount:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final showNavigationToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

.field public final timelapseDuration:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

.field public final timelapseFilesize:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

.field public final timelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    .line 60
    iput-object p2, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->playbackViewButton:Landroid/widget/Button;

    .line 61
    iput-object p3, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->projectStatsDistanceTraveled:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    .line 62
    iput-object p4, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->projectStatsStrokesDrawn:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    .line 63
    iput-object p5, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->projectStatsTrackedTime:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    .line 64
    iput-object p6, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->projectStatsUndoCount:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    .line 65
    iput-object p7, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->showNavigationToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    .line 66
    iput-object p8, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->timelapseDuration:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    .line 67
    iput-object p9, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->timelapseFilesize:Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    .line 68
    iput-object p10, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->timelapseToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/RecordViewControllerBinding;
    .locals 13

    const v0, 0x7f0a044d

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0469

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a046a

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a046b

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0a046c

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0565

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0628

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0629

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f0a062c

    .line 147
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    if-eqz v12, :cond_0

    .line 152
    new-instance v0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;)V

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/RecordViewControllerBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/brakefield/painter/databinding/RecordViewControllerBinding;
    .locals 2

    const v0, 0x7f0d0114

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/RecordViewControllerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/brakefield/painter/databinding/RecordViewControllerBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

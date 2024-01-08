.class public final Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;
.super Ljava/lang/Object;
.source "ActivityPlaybackBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final controlView:Landroid/view/View;

.field public final progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootView:Landroid/view/View;

.field public final videoView:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/CircleProgress;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->rootView:Landroid/view/View;

    .line 38
    iput-object p2, p0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->controlView:Landroid/view/View;

    .line 39
    iput-object p3, p0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    .line 40
    iput-object p4, p0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iput-object p5, p0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->videoView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;
    .locals 7

    const v0, 0x7f0a0165

    .line 67
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7f0a0463

    .line 73
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/brakefield/infinitestudio/ui/CircleProgress;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0496

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0693

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v6, :cond_0

    .line 90
    new-instance v0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;-><init>(Landroid/view/View;Landroid/view/View;Lcom/brakefield/infinitestudio/ui/CircleProgress;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/ui/PlayerView;)V

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0d0027

    .line 56
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    invoke-static {p1}, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

    move-result-object p0

    return-object p0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->rootView:Landroid/view/View;

    return-object v0
.end method

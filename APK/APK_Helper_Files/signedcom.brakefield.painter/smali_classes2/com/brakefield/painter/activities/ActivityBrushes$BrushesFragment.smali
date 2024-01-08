.class public Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;
.super Landroidx/fragment/app/Fragment;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityBrushes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrushesFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$DownloadBrushTask;,
        Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;,
        Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushesSection;,
        Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;
    }
.end annotation


# instance fields
.field protected binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

.field public brushes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;",
            ">;"
        }
    .end annotation
.end field

.field private final session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

.field protected viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 118
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->brushes:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 116
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 128
    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    .line 129
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object p3, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$1;-><init>(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;Landroid/content/res/Resources;)V

    invoke-virtual {p2, p3, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    const p2, 0x7f07033c

    .line 156
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 157
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, p3, p3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 158
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 160
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->brushes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->populateBrushes()V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->refresh()V

    .line 165
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public populateBrushes()V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->brushes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->brushes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;->refresh()V

    return-void
.end method

.class public abstract Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;
.super Lcom/brakefield/infinitestudio/ui/TabFragment;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PalettesFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteSection;,
        Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;
    }
.end annotation


# instance fields
.field private binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

.field protected palettes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;"
        }
    .end annotation
.end field

.field private viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/TabFragment;-><init>()V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->palettes:Ljava/util/List;

    .line 226
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-object p0
.end method


# virtual methods
.method public abstract getTitle()Ljava/lang/String;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 231
    invoke-static {p1}, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    .line 233
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 236
    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/brakefield/infinitestudio/R$dimen;->title_cover_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 237
    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object p3, p3, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 239
    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$1;-><init>(Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;Landroid/content/res/Resources;)V

    invoke-virtual {p3, v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 263
    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->populatePalettes()V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->refresh()V

    return-object p1
.end method

.method public abstract populatePalettes()V
.end method

.method public refresh()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 272
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->palettes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->emptyText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;->binding:Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/databinding/FragmentRecyclerviewBinding;->emptyText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

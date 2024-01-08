.class Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteSection;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.source "PalettesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PaletteSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionSection<",
        "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/color/ColourLovers$Palette;",
            ">;)V"
        }
    .end annotation

    .line 302
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->builder()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$layout;->palette_card:I

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->build()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V

    return-void
.end method


# virtual methods
.method protected getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 1

    .line 311
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionMargins;->ThinMargins()Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteSection;->res:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSpans;->SmallCardSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 306
    new-instance v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/activities/PalettesActivity$PalettesFragment$PaletteViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-object v0
.end method

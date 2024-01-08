.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.source "CreateProjectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresetsCollectionSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionSection<",
        "Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;",
        ">;"
    }
.end annotation


# instance fields
.field private final presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;",
            ">;)V"
        }
    .end annotation

    .line 890
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->builder()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v1, 0x7f0d0077

    .line 891
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v1, 0x7f0d0120

    .line 892
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->headerResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v1, 0x7f0d0078

    .line 893
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->footerResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->build()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;

    move-result-object v0

    .line 889
    invoke-direct {p0, p1, p3, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V

    .line 895
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    .line 896
    invoke-virtual {p2}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->title:Ljava/lang/String;

    .line 897
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->updateHasFooter()V

    return-void
.end method

.method private updateHasFooter()V
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->canExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 907
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->hasFooter()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 908
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->setHasFooter(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public get(I)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;
    .locals 1

    if-ltz p1, :cond_1

    .line 900
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->getPreset(I)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 886
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->get(I)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    move-result-object p1

    return-object p1
.end method

.method public getContentItemsTotal()I
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->size()I

    move-result v0

    return v0
.end method

.method protected getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 1

    .line 924
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionMargins;->NoMargins()Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->res:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSpans;->ListSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object v0

    return-object v0
.end method

.method public getFooterViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 920
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->presets:Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsFooterViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 918
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 916
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-direct {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-object v0
.end method

.method synthetic lambda$getFooterViewHolder$0$com-brakefield-painter-ui-viewcontrollers-CreateProjectViewController$PresetsCollectionSection()V
    .locals 0

    .line 920
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;->updateHasFooter()V

    return-void
.end method

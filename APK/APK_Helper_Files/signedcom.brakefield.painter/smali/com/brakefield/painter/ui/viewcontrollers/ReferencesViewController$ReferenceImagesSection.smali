.class Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImagesSection;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.source "ReferencesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceImagesSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionSection<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;",
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
            "Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;",
            ">;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->builder()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v1, 0x7f0d0147

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

    .line 178
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionMargins;->NoMargins()Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImagesSection;->res:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSpans;->ListSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 174
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImagesSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    check-cast v1, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;

    invoke-direct {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImageViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;)V

    return-object v0
.end method

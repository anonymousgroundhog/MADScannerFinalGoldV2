.class Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.source "ResourcesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionSection<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private uiBindingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->builder()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v1, 0x7f0d011a

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->headerResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->build()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V

    .line 188
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;->uiBindingKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 1

    .line 205
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionMargins;->ThinMargins()Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;->res:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSpans;->ItemSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 197
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;->uiBindingKey:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;Landroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 193
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-direct {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-object v0
.end method

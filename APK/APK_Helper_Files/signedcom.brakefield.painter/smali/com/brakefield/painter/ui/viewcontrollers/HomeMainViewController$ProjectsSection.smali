.class Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.source "HomeMainViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProjectsSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionSection<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f120a3d

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->builder()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v3, 0x7f0d0111

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v3, 0x7f0d0120

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->headerResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->build()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;

    move-result-object v5

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V

    .line 455
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->items:Ljava/util/List;

    .line 456
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->view:Landroid/view/View;

    .line 457
    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 486
    move-object v3, v2

    check-cast v3, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 487
    invoke-virtual {v3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isTemplate()Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v1, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentItemsTotal()I
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->getSpanCount(I)I

    move-result v0

    .line 472
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->getSpanCount(I)I

    move-result v1

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v0, 0x2

    .line 474
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 476
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 477
    check-cast v3, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 478
    invoke-virtual {v3}, Lcom/brakefield/painter/PainterProjectStore$Project;->isTemplate()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-lt v2, v0, :cond_0

    .line 481
    :cond_2
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 3

    .line 468
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionMargins;->FlexMargins(Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;FF)Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->res:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSpans;->LargeItemSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 462
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection$SectionTitleViewHolder;-><init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 460
    new-instance v0, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-direct {v0, p1, v1}, Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeMainViewController$ProjectsSection;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 497
    check-cast v2, Lcom/brakefield/painter/PainterProjectStore$Project;

    .line 498
    invoke-virtual {v2}, Lcom/brakefield/painter/PainterProjectStore$Project;->isTemplate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 499
    invoke-virtual {v2, p1}, Lcom/brakefield/painter/PainterProjectStore$Project;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

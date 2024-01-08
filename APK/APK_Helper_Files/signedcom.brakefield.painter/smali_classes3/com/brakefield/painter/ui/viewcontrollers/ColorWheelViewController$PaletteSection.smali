.class public Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;
.source "ColorWheelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaletteSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionSection<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;",
        ">;"
    }
.end annotation


# instance fields
.field final viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Landroid/content/res/Resources;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;)V
    .locals 2

    .line 1537
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->builder()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->itemResourceId(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters$Builder;->build()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V

    .line 1538
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;->viewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method

.method private getPalette()Lcom/brakefield/painter/nativeobjs/color/PaletteNative;
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    check-cast v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;->getPalette()Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;
    .locals 4

    .line 1542
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;->getPalette()Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v0

    .line 1543
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->colorPointerAt(I)J

    move-result-wide v2

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->colorAt(I)I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;-><init>(JI)V

    return-object v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1532
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;->get(I)Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;

    move-result-object p1

    return-object p1
.end method

.method public getContentItemsTotal()I
    .locals 1

    .line 1547
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;->getPalette()Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->size()I

    move-result v0

    return v0
.end method

.method protected getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;
    .locals 1

    .line 1555
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionMargins;->NoMargins()Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultSpan()Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 2

    .line 1551
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSpan;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;->getPalette()Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSpan;-><init>(Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)V

    return-object v0
.end method

.method public getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1559
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;->delegate:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-direct {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-object v0
.end method

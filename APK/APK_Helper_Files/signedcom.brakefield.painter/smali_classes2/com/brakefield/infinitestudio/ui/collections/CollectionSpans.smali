.class public Lcom/brakefield/infinitestudio/ui/collections/CollectionSpans;
.super Ljava/lang/Object;
.source "CollectionSpans.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ItemSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 3

    .line 20
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->image_thumbnail_size_medium:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;-><init>(III)V

    return-object v0
.end method

.method public static LargeCardSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 3

    .line 28
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->card_width_large:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;-><init>(III)V

    return-object v0
.end method

.method public static LargeItemSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 3

    .line 24
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->image_thumbnail_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;-><init>(III)V

    return-object v0
.end method

.method public static ListSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 1

    .line 12
    new-instance p0, Lcom/brakefield/infinitestudio/ui/layout/Span;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/layout/Span;-><init>(I)V

    return-object p0
.end method

.method public static SmallCardSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 3

    .line 32
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->card_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;-><init>(III)V

    return-object v0
.end method

.method public static TileSpan(Landroid/content/res/Resources;)Lcom/brakefield/infinitestudio/ui/layout/Span;
    .locals 3

    .line 16
    new-instance v0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->tile_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x3

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;-><init>(III)V

    return-object v0
.end method

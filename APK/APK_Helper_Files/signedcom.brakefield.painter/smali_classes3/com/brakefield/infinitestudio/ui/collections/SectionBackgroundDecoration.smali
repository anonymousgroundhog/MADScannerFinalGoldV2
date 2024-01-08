.class public Lcom/brakefield/infinitestudio/ui/collections/SectionBackgroundDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SectionBackgroundDecoration.java"


# instance fields
.field private final radius:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/collections/SectionBackgroundDecoration;->radius:F

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 12

    .line 26
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v2, -0x1000000

    .line 29
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x14

    .line 30
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    .line 35
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 36
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 38
    invoke-virtual {p3, v6}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionItemViewType(I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    goto/16 :goto_4

    .line 41
    :cond_0
    invoke-virtual {p3, v6}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 42
    invoke-virtual {p3, v7}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object v9

    .line 44
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result v9

    .line 45
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->getSectionItemsTotal()I

    move-result v10

    add-int/2addr v10, v9

    sub-int/2addr v10, v1

    .line 46
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->hasHeader()Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v9, v9, 0x1

    .line 47
    :cond_1
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->hasFooter()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v10, v10, -0x1

    :cond_2
    if-ne v6, v9, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    if-ne v6, v10, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v3

    .line 52
    :goto_2
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 53
    invoke-virtual {p2, v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    if-eqz v7, :cond_5

    .line 56
    iget v7, p0, Lcom/brakefield/infinitestudio/ui/collections/SectionBackgroundDecoration;->radius:F

    goto :goto_3

    :cond_5
    move v7, v5

    :goto_3
    if-eqz v6, :cond_6

    .line 58
    iget v5, p0, Lcom/brakefield/infinitestudio/ui/collections/SectionBackgroundDecoration;->radius:F

    .line 60
    :cond_6
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 61
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v9, 0x8

    new-array v9, v9, [F

    aput v7, v9, v3

    aput v7, v9, v1

    aput v7, v9, v8

    const/4 v8, 0x3

    aput v7, v9, v8

    const/4 v7, 0x4

    aput v5, v9, v7

    const/4 v7, 0x5

    aput v5, v9, v7

    const/4 v7, 0x6

    aput v5, v9, v7

    const/4 v7, 0x7

    aput v5, v9, v7

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v10, v9, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 62
    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 64
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

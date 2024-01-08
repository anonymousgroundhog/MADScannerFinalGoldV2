.class public Lcom/brakefield/infinitestudio/ui/collections/MarginItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MarginItemDecoration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 14
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    check-cast p4, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 15
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 17
    invoke-virtual {p4, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;

    .line 18
    invoke-virtual {p4, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionItemViewType(I)I

    move-result p2

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionSection;->getDefaultMargin()Lcom/brakefield/infinitestudio/ui/layout/Margin;

    move-result-object p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/ui/layout/Margin;->get(I)F

    move-result p2

    float-to-int p2, p2

    .line 21
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 22
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 23
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 24
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

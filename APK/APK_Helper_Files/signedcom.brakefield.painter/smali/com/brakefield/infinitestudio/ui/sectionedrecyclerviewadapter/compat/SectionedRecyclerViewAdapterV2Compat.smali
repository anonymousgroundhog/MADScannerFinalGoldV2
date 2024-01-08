.class public Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;
.super Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
.source "SectionedRecyclerViewAdapterV2Compat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFooterPositionInAdapter(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)I
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getFooterPosition()I

    move-result p1

    return p1
.end method

.method public getFooterPositionInAdapter(Ljava/lang/String;)I
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getFooterPosition()I

    move-result p1

    return p1
.end method

.method public getHeaderPositionInAdapter(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)I
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getHeaderPosition()I

    move-result p1

    return p1
.end method

.method public getHeaderPositionInAdapter(Ljava/lang/String;)I
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getHeaderPosition()I

    move-result p1

    return p1
.end method

.method public getPositionInAdapter(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;I)I
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    return p1
.end method

.method public getPositionInAdapter(Ljava/lang/String;I)I
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    return p1
.end method

.method public getSectionPosition(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)I
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result p1

    return p1
.end method

.method public getSectionPosition(Ljava/lang/String;)I
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result p1

    return p1
.end method

.method public notifyAllItemsChangedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyAllItemsChanged()V

    return-void
.end method

.method public notifyAllItemsChangedInSection(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyAllItemsChanged()V

    return-void
.end method

.method public notifyAllItemsInsertedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyAllItemsInserted()V

    return-void
.end method

.method public notifyAllItemsInsertedInSection(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyAllItemsInserted()V

    return-void
.end method

.method public notifyFooterChangedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyFooterChanged()V

    return-void
.end method

.method public notifyFooterChangedInSection(Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyFooterChanged()V

    return-void
.end method

.method public notifyFooterInsertedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyFooterInserted()V

    return-void
.end method

.method public notifyFooterInsertedInSection(Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyFooterInserted()V

    return-void
.end method

.method public notifyFooterRemovedFromSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyFooterRemoved()V

    return-void
.end method

.method public notifyFooterRemovedFromSection(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyFooterRemoved()V

    return-void
.end method

.method public notifyHeaderChangedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public notifyHeaderChangedInSection(Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public notifyHeaderInsertedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyHeaderInserted()V

    return-void
.end method

.method public notifyHeaderInsertedInSection(Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyHeaderInserted()V

    return-void
.end method

.method public notifyHeaderRemovedFromSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyHeaderRemoved()V

    return-void
.end method

.method public notifyHeaderRemovedFromSection(Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyHeaderRemoved()V

    return-void
.end method

.method public notifyItemChangedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;I)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemChangedInSection(Ljava/lang/String;I)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemInsertedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;I)V
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyItemInsertedInSection(Ljava/lang/String;I)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyItemMovedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;II)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyItemMovedInSection(Ljava/lang/String;II)V
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyItemRangeChangedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;II)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyItemRangeChangedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;IILjava/lang/Object;)V
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemRangeChangedInSection(Ljava/lang/String;II)V
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyItemRangeChangedInSection(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemRangeInsertedInSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;II)V
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyItemRangeInsertedInSection(Ljava/lang/String;II)V
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyItemRangeRemovedFromSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;II)V
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public notifyItemRangeRemovedFromSection(Ljava/lang/String;II)V
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public notifyItemRemovedFromSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;I)V
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public notifyItemRemovedFromSection(Ljava/lang/String;I)V
    .locals 0

    .line 176
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public notifyNotLoadedStateChanged(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyNotLoadedStateChanged(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V

    return-void
.end method

.method public notifyNotLoadedStateChanged(Ljava/lang/String;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyNotLoadedStateChanged(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V

    return-void
.end method

.method public notifySectionChangedToInvisible(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;I)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifySectionChangedToInvisible(I)V

    return-void
.end method

.method public notifySectionChangedToInvisible(Ljava/lang/String;I)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifySectionChangedToInvisible(I)V

    return-void
.end method

.method public notifySectionChangedToVisible(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifySectionChangedToVisible()V

    return-void
.end method

.method public notifySectionChangedToVisible(Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifySectionChangedToVisible()V

    return-void
.end method

.method public notifyStateChangedFromLoaded(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;I)V
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyStateChangedFromLoaded(I)V

    return-void
.end method

.method public notifyStateChangedFromLoaded(Ljava/lang/String;I)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyStateChangedFromLoaded(I)V

    return-void
.end method

.method public notifyStateChangedToLoaded(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyStateChangedToLoaded(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V

    return-void
.end method

.method public notifyStateChangedToLoaded(Ljava/lang/String;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/compat/SectionedRecyclerViewAdapterV2Compat;->getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyStateChangedToLoaded(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V

    return-void
.end method

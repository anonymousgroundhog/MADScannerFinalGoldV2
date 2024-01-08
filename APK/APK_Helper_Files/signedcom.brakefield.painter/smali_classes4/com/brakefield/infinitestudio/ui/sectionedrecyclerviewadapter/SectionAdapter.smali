.class public Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;
.super Ljava/lang/Object;
.source "SectionAdapter.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionPositionIdentifier;
.implements Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionNotifier;


# instance fields
.field private final transient section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

.field private final transient sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 25
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    return-void
.end method


# virtual methods
.method public getFooterPosition()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasFooter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Section doesn\'t have a footer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeaderPosition()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result v0

    return v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Section doesn\'t have a header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionInAdapter(I)I
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public getPositionInSection(I)I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p1

    return p1
.end method

.method getSection()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    return-object v0
.end method

.method public getSectionPosition()I
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSections()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 59
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    if-ne v2, v3, :cond_1

    return v1

    .line 67
    :cond_1
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Section is not in the adapter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyAllItemsChanged()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 153
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getContentItemsTotal()I

    move-result v2

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyAllItemsChanged(Ljava/lang/Object;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 161
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getContentItemsTotal()I

    move-result v2

    .line 159
    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyAllItemsInserted()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 94
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getContentItemsTotal()I

    move-result v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyFooterChanged()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getFooterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyFooterChanged(Ljava/lang/Object;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getFooterPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyFooterInserted()V
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getFooterPosition()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyFooterRemoved()V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public notifyHeaderChanged()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getHeaderPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyHeaderChanged(Ljava/lang/Object;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getHeaderPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyHeaderInserted()V
    .locals 2

    .line 263
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getHeaderPosition()I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyHeaderRemoved()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemChanged(ILjava/lang/Object;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 186
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    .line 187
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p2

    .line 185
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 169
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    .line 168
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 177
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    .line 176
    invoke-virtual {v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 101
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    .line 100
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    .line 114
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getPositionInAdapter(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public notifyNotLoadedStateChanged(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getState()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 199
    sget-object v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    if-eq p1, v1, :cond_1

    .line 203
    sget-object p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    .line 207
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemChanged(I)V

    return-void

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Use notifyStateChangedToLoaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Use notifyStateChangedFromLoaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No state changed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifySectionChangedToInvisible(I)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeRemoved(II)V

    return-void

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This section is not invisible."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifySectionChangedToVisible()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->getSectionPosition()I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->sectionedAdapter:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->notifyItemRangeInserted(II)V

    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This section is not visible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyStateChangedFromLoaded(I)V
    .locals 2

    if-ltz p1, :cond_3

    .line 245
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getState()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    .line 254
    invoke-virtual {p0, v1, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeRemoved(II)V

    .line 257
    :cond_1
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemChanged(I)V

    :goto_0
    return-void

    .line 247
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Use notifyStateChangedToLoaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "previousContentItemsCount cannot have a negative value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyStateChangedToLoaded(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getState()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    move-result-object v0

    if-eq v0, p1, :cond_4

    .line 218
    sget-object v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    if-eq v0, v1, :cond_1

    .line 219
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    if-ne p1, v0, :cond_0

    .line 220
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Use notifyStateChangedFromLoaded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Use notifyNotLoadedStateChanged"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->section:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getContentItemsTotal()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 229
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemChanged(I)V

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    sub-int/2addr p1, v0

    .line 234
    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;->notifyItemRangeInserted(II)V

    :cond_3
    :goto_0
    return-void

    .line 215
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No state changed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

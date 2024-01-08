.class public Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SectionedRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_EMPTY:I = 0x5

.field public static final VIEW_TYPE_FAILED:I = 0x4

.field public static final VIEW_TYPE_FOOTER:I = 0x1

.field public static final VIEW_TYPE_HEADER:I = 0x0

.field public static final VIEW_TYPE_ITEM_LOADED:I = 0x2

.field public static final VIEW_TYPE_LOADING:I = 0x3

.field private static final VIEW_TYPE_QTY:I = 0x6


# instance fields
.field private final transient sectionAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final transient sectionViewTypeNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient sections:Lorg/apache/commons/collections4/map/ListOrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "Ljava/lang/String;",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;",
            ">;"
        }
    .end annotation
.end field

.field private transient viewTypeCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionAdapters:Ljava/util/Map;

    return-void
.end method

.method private addSectionViewTypeNumbers(Ljava/lang/String;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/Map;

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->viewTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->viewTypeCount:I

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->viewTypeCount:I

    return-void
.end method

.method private generateSectionTag()Ljava/lang/String;
    .locals 1

    .line 247
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmptyViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 175
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isEmptyViewWillBeProvided()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getEmptyView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Section.getEmptyView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_1
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getEmptyResourceId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 187
    :goto_0
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getEmptyViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 183
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'empty\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getFailedViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 158
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isFailedViewWillBeProvided()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getFailedView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Section.getFailedView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_1
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getFailedResourceId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 170
    :goto_0
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getFailedViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 166
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'failed\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getFooterViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 124
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isFooterViewWillBeProvided()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getFooterView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Section.getFooterView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_1
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getFooterResourceId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 136
    :goto_0
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getFooterViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'footer\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHeaderViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 107
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isHeaderViewWillBeProvided()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Section.getHeaderView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_1
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getHeaderResourceId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 119
    :goto_0
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'header\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getItemViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 90
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isItemViewWillBeProvided()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Section.getItemView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getItemResourceId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 102
    :goto_0
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'item\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getLoadingViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 141
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isLoadingViewWillBeProvided()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Section.getLoadingView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getLoadingResourceId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 153
    :goto_0
    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getLoadingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 149
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing \'loading\' resource id"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getSectionItemViewTypeForAdapterViewType(I)I
    .locals 0

    .line 505
    rem-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private getValidSectionOrThrowException(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;
    .locals 3

    .line 679
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private internalOnBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 330
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v3

    if-lt p2, v1, :cond_5

    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p2, v4, :cond_5

    .line 339
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, v1, :cond_2

    if-nez p3, :cond_1

    .line 343
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    :goto_1
    return-void

    .line 351
    :cond_2
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasFooter()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v4, :cond_4

    if-nez p3, :cond_3

    .line 355
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 357
    :cond_3
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    :goto_2
    return-void

    .line 364
    :cond_4
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->onBindContentViewHolder(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    :cond_5
    add-int/2addr v1, v3

    goto :goto_0

    .line 371
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Invalid position"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onBindContentViewHolder(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 378
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$1;->$SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getState()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 p3, 0x3

    if-eq v0, p3, :cond_2

    const/4 p3, 0x4

    if-ne v0, p3, :cond_1

    if-nez p4, :cond_0

    .line 402
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindEmptyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindEmptyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    goto :goto_0

    .line 408
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p4, :cond_3

    .line 395
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 397
    :cond_3
    invoke-virtual {p1, p2, p4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    if-nez p4, :cond_5

    .line 388
    invoke-virtual {p0, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 390
    :cond_5
    invoke-virtual {p0, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getPositionInSection(I)I

    move-result p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_0

    :cond_6
    if-nez p4, :cond_7

    .line 381
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 383
    :cond_7
    invoke-virtual {p1, p2, p4}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addSection(ILcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;
    .locals 1

    .line 239
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->generateSectionTag()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p0, p1, v0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V

    return-object v0
.end method

.method public addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;
    .locals 1

    .line 197
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->generateSectionTag()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Ljava/lang/String;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V

    return-object v0
.end method

.method public addSection(ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/collections4/map/ListOrderedMap;->put(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSectionViewTypeNumbers(Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionAdapters:Ljava/util/Map;

    new-instance p2, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    invoke-direct {p2, p0, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;-><init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    if-nez p1, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This adapter already contains this Section"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSection(Ljava/lang/String;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V

    return-void
.end method

.method public getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    if-eqz p1, :cond_0

    return-object p1

    .line 665
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid section"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapterForSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getValidSectionOrThrowException(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    move-result-object p1

    .line 658
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getAdapterForSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getCopyOfSectionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;",
            ">;"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->listOrderedMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 420
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 7

    .line 443
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 444
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 447
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v4

    if-lt p1, v1, :cond_7

    add-int v5, v1, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-gt p1, v5, :cond_7

    .line 456
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 458
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_1

    return v0

    .line 464
    :cond_1
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasFooter()Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v5, :cond_2

    add-int/2addr v0, v6

    return v0

    .line 470
    :cond_2
    sget-object p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter$1;->$SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getState()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x3

    if-eq p1, v6, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_3

    add-int/lit8 v0, v0, 0x5

    return v0

    .line 480
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/2addr v0, v2

    return v0

    :cond_5
    add-int/2addr v0, v2

    return v0

    :cond_6
    add-int/2addr v0, v1

    return v0

    :cond_7
    add-int/2addr v1, v4

    goto :goto_0

    .line 487
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid position"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPositionInSection(I)I
    .locals 5

    .line 568
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 569
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 572
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v3

    if-lt p1, v1, :cond_2

    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p1, v4, :cond_2

    sub-int/2addr p1, v1

    .line 580
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader()Z

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 581
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getContentItemsTotal()I

    move-result v0

    if-eq p1, v0, :cond_1

    return p1

    .line 582
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This method is not applicable for header or footer position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/2addr v1, v3

    goto :goto_0

    .line 590
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid position"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSection(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    return-object p1
.end method

.method public getSection(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    return-object p1
.end method

.method public getSectionCount()I
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->size()I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;
    .locals 5

    .line 538
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

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

    .line 539
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 542
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getSectionItemsTotal()I

    move-result v3

    if-lt p1, v1, :cond_1

    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    if-gt p1, v4, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 556
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid position"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSectionIndex(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)I
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 646
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSectionItemViewType(I)I
    .locals 0

    .line 523
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getItemViewType(I)I

    move-result p1

    .line 525
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getSectionItemViewTypeForAdapterViewType(I)I

    move-result p1

    return p1
.end method

.method getSections()Lorg/apache/commons/collections4/map/ListOrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/ListOrderedMap<",
            "Ljava/lang/String;",
            "Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;",
            ">;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 674
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->internalOnBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 312
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    .line 318
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->internalOnBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    if-ge p2, v3, :cond_0

    .line 57
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/collections4/map/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, p2, v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 77
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getEmptyViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid viewType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getFailedViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getLoadingViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getItemViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getFooterViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->getHeaderViewHolder(Landroid/view/ViewGroup;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public removeAllSections()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->clear()V

    .line 299
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 300
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionAdapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->viewTypeCount:I

    return-void
.end method

.method public removeSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->removeSection(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public removeSection(Ljava/lang/String;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sections:Lorg/apache/commons/collections4/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;

    .line 290
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionViewTypeNumbers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->sectionAdapters:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

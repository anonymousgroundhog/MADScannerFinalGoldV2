.class public abstract Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;
.super Ljava/lang/Object;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;
    }
.end annotation


# instance fields
.field private final emptyResourceId:Ljava/lang/Integer;

.field private final emptyViewWillBeProvided:Z

.field private final failedResourceId:Ljava/lang/Integer;

.field private final failedViewWillBeProvided:Z

.field private final footerResourceId:Ljava/lang/Integer;

.field private final footerViewWillBeProvided:Z

.field private hasFooter:Z

.field private hasHeader:Z

.field private final headerResourceId:Ljava/lang/Integer;

.field private final headerViewWillBeProvided:Z

.field private final itemResourceId:Ljava/lang/Integer;

.field private final itemViewWillBeProvided:Z

.field private final loadingResourceId:Ljava/lang/Integer;

.field private final loadingViewWillBeProvided:Z

.field private state:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

.field private visible:Z


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;)V
    .locals 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->LOADED:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->state:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->visible:Z

    .line 60
    iget-object v1, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->itemResourceId:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->itemResourceId:Ljava/lang/Integer;

    .line 61
    iget-object v1, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->headerResourceId:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->headerResourceId:Ljava/lang/Integer;

    .line 62
    iget-object v2, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->footerResourceId:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->footerResourceId:Ljava/lang/Integer;

    .line 63
    iget-object v3, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->loadingResourceId:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->loadingResourceId:Ljava/lang/Integer;

    .line 64
    iget-object v3, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->failedResourceId:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->failedResourceId:Ljava/lang/Integer;

    .line 65
    iget-object v3, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->emptyResourceId:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->emptyResourceId:Ljava/lang/Integer;

    .line 66
    iget-boolean v3, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->itemViewWillBeProvided:Z

    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->itemViewWillBeProvided:Z

    .line 67
    iget-boolean v3, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->headerViewWillBeProvided:Z

    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->headerViewWillBeProvided:Z

    .line 68
    iget-boolean v4, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->footerViewWillBeProvided:Z

    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->footerViewWillBeProvided:Z

    .line 69
    iget-boolean v5, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->loadingViewWillBeProvided:Z

    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->loadingViewWillBeProvided:Z

    .line 70
    iget-boolean v5, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->failedViewWillBeProvided:Z

    iput-boolean v5, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->failedViewWillBeProvided:Z

    .line 71
    iget-boolean p1, p1, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionParameters;->emptyViewWillBeProvided:Z

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->emptyViewWillBeProvided:Z

    const/4 p1, 0x0

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    .line 73
    :goto_1
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    if-nez v2, :cond_3

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, p1

    .line 74
    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasFooter:Z

    return-void
.end method


# virtual methods
.method public abstract getContentItemsTotal()I
.end method

.method public final getEmptyResourceId()Ljava/lang/Integer;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->emptyResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEmptyView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 549
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getEmptyView() if you set emptyViewWillBeProvided"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEmptyViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 560
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getEmptyViewHolder() if you set emptyResourceId"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFailedResourceId()Ljava/lang/Integer;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->failedResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFailedView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 504
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getFailedView() if you set failedViewWillBeProvided"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFailedViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 515
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getFailedViewHolder() if you set failedResourceId"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getFooterResourceId()Ljava/lang/Integer;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->footerResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFooterView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 414
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getFooterView() if you set footerViewWillBeProvided"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFooterViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 425
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getFooterViewHolder() if you set footerResourceId"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getHeaderResourceId()Ljava/lang/Integer;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->headerResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHeaderView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 369
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getHeaderView() if you set headerViewWillBeProvided"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeaderViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 380
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getHeaderViewHolder() if you set headerResourceId"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getItemResourceId()Ljava/lang/Integer;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->itemResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 329
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getItemView() if you set itemViewWillBeProvided"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getItemViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public final getLoadingResourceId()Ljava/lang/Integer;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->loadingResourceId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 459
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/4 v0, 0x0

    sget-object v0, Landroidx/core/database/hzA/JUetN;->sUwdZYmGXGEyTzn:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLoadingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 470
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You need to implement getLoadingViewHolder() if you set loadingResourceId"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getSectionItemsTotal()I
    .locals 3

    .line 298
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$1;->$SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->state:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->getContentItemsTotal()I

    move-result v1

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasFooter:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public final getState()Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->state:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    return-object v0
.end method

.method public final hasFooter()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasFooter:Z

    return v0
.end method

.method public final hasHeader()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    return v0
.end method

.method public final isEmptyViewWillBeProvided()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->emptyViewWillBeProvided:Z

    return v0
.end method

.method public final isFailedViewWillBeProvided()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->failedViewWillBeProvided:Z

    return v0
.end method

.method public final isFooterViewWillBeProvided()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->footerViewWillBeProvided:Z

    return v0
.end method

.method public final isHeaderViewWillBeProvided()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->headerViewWillBeProvided:Z

    return v0
.end method

.method public final isItemViewWillBeProvided()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->itemViewWillBeProvided:Z

    return v0
.end method

.method public final isLoadingViewWillBeProvided()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->loadingViewWillBeProvided:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->visible:Z

    return v0
.end method

.method public onBindEmptyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onBindEmptyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 583
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindEmptyViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 538
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindFailedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onBindFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onBindFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 448
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindFooterViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 403
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindHeaderViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public abstract onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method

.method public onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
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

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 493
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->onBindLoadingViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final setHasFooter(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasFooter:Z

    return-void
.end method

.method public final setHasHeader(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->hasHeader:Z

    return-void
.end method

.method public final setState(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;)V
    .locals 2

    .line 83
    sget-object v0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$1;->$SwitchMap$com$brakefield$infinitestudio$ui$sectionedrecyclerviewadapter$Section$State:[I

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->emptyResourceId:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->emptyViewWillBeProvided:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x0

    sget-object v0, Lcom/google/api/client/extensions/android/http/tr/rffuYzZsQ;->KBtysHxameCgH:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->failedResourceId:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->failedViewWillBeProvided:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 92
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Resource id for \'failed state\' should be provided or \'failedViewWillBeProvided\' should be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->loadingResourceId:Ljava/lang/Integer;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->loadingViewWillBeProvided:Z

    if-eqz v0, :cond_5

    goto :goto_0

    .line 86
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Resource id for \'loading state\' should be provided or \'loadingViewWillBeProvided\' should be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_6
    :goto_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->state:Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section$State;

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;->visible:Z

    return-void
.end method

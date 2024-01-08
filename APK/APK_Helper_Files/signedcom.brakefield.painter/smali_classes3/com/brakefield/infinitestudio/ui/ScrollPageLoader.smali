.class public abstract Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ScrollPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;
    }
.end annotation


# instance fields
.field private currentPage:I

.field private loading:Z

.field private pageSize:I

.field private previousTotal:I

.field private totalPages:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loading:Z

    .line 10
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->currentPage:I

    .line 11
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->previousTotal:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->totalPages:I

    const/16 v0, 0x3c

    .line 13
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->pageSize:I

    return-void
.end method

.method static synthetic access$002(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loading:Z

    return p1
.end method

.method static synthetic access$102(Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->previousTotal:I

    return p1
.end method

.method private reset(I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loading:Z

    .line 17
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->currentPage:I

    .line 18
    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->previousTotal:I

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->totalPages:I

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->currentPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->pageSize:I

    return v0
.end method

.method public final handleScroll(I)V
    .locals 3

    .line 58
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->totalPages:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->currentPage:I

    if-lt v1, v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loading:Z

    if-nez v0, :cond_1

    int-to-float p1, p1

    .line 62
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->previousTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->pageSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loading:Z

    .line 64
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->currentPage:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->currentPage:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loadPage(I)Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

    :cond_1
    return-void
.end method

.method public loadFirstPage(I)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->reset(I)V

    .line 24
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->currentPage:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->currentPage:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->loadPage(I)Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;

    return-void
.end method

.method public abstract loadPage(I)Lcom/brakefield/infinitestudio/ui/ScrollPageLoader$PageFinishedLoadingCallback;
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 50
    instance-of p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->handleScroll(I)V

    :cond_0
    return-void
.end method

.method public setTotalItems(I)V
    .locals 2

    int-to-float p1, p1

    .line 45
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->pageSize:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/ScrollPageLoader;->totalPages:I

    return-void
.end method

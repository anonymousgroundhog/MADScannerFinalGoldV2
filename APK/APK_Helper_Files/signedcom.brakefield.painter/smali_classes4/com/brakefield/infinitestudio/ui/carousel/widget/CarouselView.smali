.class public Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;,
        Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;,
        Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;,
        Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;,
        Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;,
        Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$Scroller;,
        Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DrawOrder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarouselView"

.field private static sIsDebug:Z


# instance fields
.field private mClickToScroll:Z

.field private mEnableFling:Z

.field private mInternalOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mIsInfinite:Z

.field private mIsScrollTriggeredByUser:Z

.field private mLastScrollStartPositionPoint:F

.field private mLastSelectedPosition:I

.field private mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

.field private mOnItemClickListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

.field private mOnItemSelectedListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;

.field private mOnScrollListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

.field private mScrollingAlignToViews:Z

.field private mShouldPostUpdatePositionCall:Z

.field private mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 31
    sget-object p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->DEFAULT_TRANSFORMER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    const/high16 p1, -0x80000000

    .line 37
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastSelectedPosition:I

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastScrollStartPositionPoint:F

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mShouldPostUpdatePositionCall:Z

    .line 43
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mInternalOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 122
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->DEFAULT_TRANSFORMER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    const/high16 p1, -0x80000000

    .line 37
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastSelectedPosition:I

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastScrollStartPositionPoint:F

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mShouldPostUpdatePositionCall:Z

    .line 43
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mInternalOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 127
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    sget-object p1, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->DEFAULT_TRANSFORMER:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    const/high16 p1, -0x80000000

    .line 37
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastSelectedPosition:I

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastScrollStartPositionPoint:F

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mShouldPostUpdatePositionCall:Z

    .line 43
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$1;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mInternalOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 132
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mScrollingAlignToViews:Z

    return p0
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastScrollStartPositionPoint:F

    return p0
.end method

.method static synthetic access$202(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;F)F
    .locals 0

    .line 26
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastScrollStartPositionPoint:F

    return p1
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mIsScrollTriggeredByUser:Z

    return p0
.end method

.method static synthetic access$302(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mIsScrollTriggeredByUser:Z

    return p1
.end method

.method static synthetic access$400(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->dispatchPositionUpdateMessage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnScrollListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mClickToScroll:Z

    return p0
.end method

.method static synthetic access$700(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnItemClickListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mShouldPostUpdatePositionCall:Z

    return p1
.end method

.method private dispatchPositionUpdateMessage(I)V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnItemSelectedListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 306
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastSelectedPosition:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 307
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v2, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->translatePosition(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;->onItemDeselected(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;IILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnItemSelectedListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->translatePosition(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;->onItemSelected(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;IILandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mShouldPostUpdatePositionCall:Z

    .line 313
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastSelectedPosition:I

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mIsInfinite:Z

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mScrollingAlignToViews:Z

    .line 138
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mEnableFling:Z

    .line 139
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mClickToScroll:Z

    .line 140
    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setLayoutManagerInternal(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnScrollListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    .line 142
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnItemClickListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    .line 143
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mInternalOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 147
    sget-boolean v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->sIsDebug:Z

    return v0
.end method

.method private static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 685
    sget-boolean v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->sIsDebug:Z

    if-eqz v0, :cond_1

    .line 686
    array-length v0, p1

    if-lez v0, :cond_0

    .line 687
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    :cond_0
    sget-object p1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static varargs logv(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 695
    sget-boolean v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->sIsDebug:Z

    if-eqz v0, :cond_1

    .line 696
    array-length v0, p1

    if-lez v0, :cond_0

    .line 697
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 699
    :cond_0
    sget-object p1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 155
    sput-boolean p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->sIsDebug:Z

    return-void
.end method

.method private setLayoutManagerInternal(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 193
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    .line 195
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mIsInfinite:Z

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setInfinite(Z)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    const/4 p1, 0x1

    .line 196
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setExtraVisibleChilds(I)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;

    .line 199
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$2;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setOnItemClickListener(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CarouselLayoutManager cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V
    .locals 1

    .line 615
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    .line 616
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setTransformer(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-void
.end method


# virtual methods
.method public getCurrentAdapterPosition()I
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->translatePosition(I)I

    move-result v0

    return v0
.end method

.method public getCurrentOffset()F
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentOffset()F

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentPositionPoint()F
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPositionPoint()F

    move-result v0

    return v0
.end method

.method public getExtraVisibleChilds()I
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getExtraVisibleChilds()I

    move-result v0

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getGravity()I

    move-result v0

    return v0
.end method

.method public getLastScrollStartPositionPoint()F
    .locals 1

    .line 264
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLastScrollStartPositionPoint:F

    return v0
.end method

.method public bridge synthetic getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getLayoutManager()Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-object v0
.end method

.method public getTransformer()Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getTransformer()Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    move-result-object v0

    return-object v0
.end method

.method public isClickToScroll()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mClickToScroll:Z

    return v0
.end method

.method public isEnableFling()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mEnableFling:Z

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mIsInfinite:Z

    return v0
.end method

.method public isScrollingAlignToViews()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mScrollingAlignToViews:Z

    return v0
.end method

.method public isValidPosition(I)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->isValidPosition(I)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 161
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->scrollToPosition(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 388
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CarouselView onMeasure "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    sget-object p2, Lkotlin/sequences/xWeI/PLNIgvxmKA;->CjA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 406
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 416
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mIsScrollTriggeredByUser:Z

    goto :goto_0

    .line 410
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mEnableFling:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 419
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->isValidPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 297
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->dispatchPositionUpdateMessage(I)V

    return-void
.end method

.method public setClickToScroll(Z)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mClickToScroll:Z

    return-object p0
.end method

.method public setDisplayMode(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    sget-object v0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$4;->$SwitchMap$com$brakefield$infinitestudio$ui$carousel$widget$CarouselView$DisplayMode:[I

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$DisplayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 593
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :pswitch_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mTransformer:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    goto :goto_0

    .line 585
    :pswitch_1
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizedViewTransformer;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/ParameterizedViewTransformer;-><init>()V

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    goto :goto_0

    .line 581
    :pswitch_2
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/transformer/InverseTimeMachineViewTransformer;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/InverseTimeMachineViewTransformer;-><init>()V

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    goto :goto_0

    .line 577
    :pswitch_3
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/transformer/TimeMachineViewTransformer;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/TimeMachineViewTransformer;-><init>()V

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    goto :goto_0

    .line 573
    :pswitch_4
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/CoverFlowViewTransformer;-><init>()V

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    goto :goto_0

    .line 569
    :pswitch_5
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/transformer/WheelViewTransformer;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/WheelViewTransformer;-><init>()V

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    goto :goto_0

    .line 565
    :pswitch_6
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/transformer/LinearViewTransformer;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/ui/carousel/transformer/LinearViewTransformer;-><init>()V

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnableFling(Z)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mEnableFling:Z

    return-object p0
.end method

.method public setExtraVisibleChilds(I)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0, p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setExtraVisibleChilds(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;I)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-object p0
.end method

.method public setGravity(I)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setGravity(I)V

    return-void
.end method

.method public setInfinite(Z)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 1

    .line 642
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mIsInfinite:Z

    .line 643
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->setInfinite(Z)Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    return-object p0
.end method

.method public final setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 172
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "CarouselView doesn\'t support setLayoutManager(LayoutManager)"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLayoutManager(Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;)V
    .locals 1

    if-nez p1, :cond_0

    .line 184
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CarouselLayoutManager cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "setLayoutManager(CarouselLayoutManager) is not yet supported."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnItemClickListener(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnItemClickListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemClickListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnItemSelectedListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnItemSelectedListener;

    .line 461
    new-instance p1, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$3;-><init>(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public setOnScrollListener(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mOnScrollListener:Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$OnScrollListener;

    return-object p0
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "setOnScrollListener(RecyclerView.OnScrollListener) is not supported, use setOnScrollListener(CarouselView.OnScrollListener) instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollingAlignToViews(Z)Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;
    .locals 0

    .line 360
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mScrollingAlignToViews:Z

    return-object p0
.end method

.method public setTransformer(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V
    .locals 0

    .line 611
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->setTransformerInternal(Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView$ViewTransformer;)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mLayoutManager:Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/manager/CarouselLayoutManager;->isValidPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->mIsScrollTriggeredByUser:Z

    .line 285
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 286
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/carousel/widget/CarouselView;->dispatchPositionUpdateMessage(I)V

    return-void
.end method

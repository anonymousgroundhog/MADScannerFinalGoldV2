.class public Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;
.super Lcom/brakefield/infinitestudio/ui/layout/Span;
.source "MultiSpan.java"


# instance fields
.field private maxSpan:I

.field private prevSize:I

.field private sectionSpanItems:[Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionSpans:[Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Object;",
            "Lcom/brakefield/infinitestudio/ui/layout/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroidx/core/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Object;",
            "Lcom/brakefield/infinitestudio/ui/layout/Span;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/layout/Span;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->sectionSpans:[Landroidx/core/util/Pair;

    return-void
.end method

.method private leastCommonMultiple([I)I
    .locals 9

    .line 39
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    move v2, v0

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 45
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_5

    .line 46
    aget v7, p1, v4

    if-nez v7, :cond_1

    return v3

    :cond_1
    if-gez v7, :cond_2

    mul-int/lit8 v7, v7, -0x1

    .line 47
    aput v7, p1, v4

    .line 48
    :cond_2
    aget v7, p1, v4

    if-ne v7, v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 49
    :cond_3
    rem-int v8, v7, v1

    if-nez v8, :cond_4

    .line 51
    div-int/2addr v7, v1

    aput v7, p1, v4

    move v5, v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    mul-int/2addr v2, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 56
    :goto_1
    array-length v3, p1

    if-ne v6, v3, :cond_0

    return v2
.end method


# virtual methods
.method public totalSpan(I)I
    .locals 6

    .line 20
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->prevSize:I

    if-eq v0, p1, :cond_1

    .line 21
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->prevSize:I

    .line 22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->sectionSpans:[Landroidx/core/util/Pair;

    array-length v1, v0

    new-array v2, v1, [I

    .line 23
    array-length v0, v0

    new-array v0, v0, [Landroidx/core/util/Pair;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->sectionSpanItems:[Landroidx/core/util/Pair;

    const/4 v0, 0x0

    move v3, v0

    .line 24
    :goto_0
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->sectionSpans:[Landroidx/core/util/Pair;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 25
    aget-object v4, v4, v3

    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/brakefield/infinitestudio/ui/layout/Span;

    .line 26
    invoke-virtual {v4, p1}, Lcom/brakefield/infinitestudio/ui/layout/Span;->totalSpan(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0, v2}, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->leastCommonMultiple([I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->maxSpan:I

    :goto_1
    if-ge v0, v1, :cond_1

    .line 30
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->maxSpan:I

    aget v3, v2, v0

    div-int/2addr p1, v3

    .line 31
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->sectionSpanItems:[Landroidx/core/util/Pair;

    new-instance v4, Landroidx/core/util/Pair;

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->sectionSpans:[Landroidx/core/util/Pair;

    aget-object v5, v5, v0

    iget-object v5, v5, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_1
    iget p1, p0, Lcom/brakefield/infinitestudio/ui/layout/MultiSpan;->maxSpan:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    return v0

    :cond_2
    return p1
.end method

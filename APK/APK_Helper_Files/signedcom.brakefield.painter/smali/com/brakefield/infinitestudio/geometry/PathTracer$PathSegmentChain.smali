.class Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;
.super Ljava/lang/Object;
.source "PathTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/geometry/PathTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathSegmentChain"
.end annotation


# instance fields
.field segs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;",
            ">;)V"
        }
    .end annotation

    .line 1883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1884
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;)V
    .locals 1

    .line 1888
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public concat(Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;)V
    .locals 6

    .line 1892
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->getEnd()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    .line 1894
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->getStart()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v1

    .line 1895
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v4, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v5, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v3, v4, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1896
    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    new-instance v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v4, v0, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    const/4 v0, 0x0

    invoke-direct {v3, v4, v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    :cond_0
    iget-object p1, p1, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    .line 1900
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cut(Lcom/brakefield/infinitestudio/geometry/Point;F)V
    .locals 8

    .line 1863
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    .line 1864
    invoke-virtual {v3, p1, p2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->getClosestPoint(Lcom/brakefield/infinitestudio/geometry/Point;F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1866
    iget v5, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v7, v4, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v4, v4, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v5, v6, v7, v4}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v4

    if-eqz v1, :cond_1

    cmpg-float v5, v4, v2

    if-gez v5, :cond_0

    :cond_1
    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 1874
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->cut(Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/List;

    move-result-object p1

    .line 1875
    iget-object p2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1876
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1877
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1878
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    add-int v2, p2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public flip()V
    .locals 3

    .line 1905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1906
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1907
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    .line 1908
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->flip()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1910
    :cond_0
    iput-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    return-void
.end method

.method public getEnd()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 2

    .line 1921
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->getEnd()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStart()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 2

    .line 1914
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegment;->getStart()Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1928
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathSegmentChain;->segs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

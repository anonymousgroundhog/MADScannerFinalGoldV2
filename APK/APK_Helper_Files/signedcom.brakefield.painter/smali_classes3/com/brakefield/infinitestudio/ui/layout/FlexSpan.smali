.class public Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;
.super Lcom/brakefield/infinitestudio/ui/layout/Span;
.source "FlexSpan.java"


# instance fields
.field final idealSize:F

.field final maxSpan:F

.field final minSpan:F


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/layout/Span;-><init>()V

    int-to-float p1, p1

    .line 10
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->idealSize:F

    int-to-float p1, p2

    .line 11
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->minSpan:F

    int-to-float p1, p3

    .line 12
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->maxSpan:F

    return-void
.end method


# virtual methods
.method public getIdealSize()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->idealSize:F

    float-to-int v0, v0

    return v0
.end method

.method public totalSpan(I)I
    .locals 2

    .line 17
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->minSpan:F

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->maxSpan:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    float-to-int p1, v0

    return p1

    :cond_0
    int-to-float p1, p1

    .line 18
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->idealSize:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 20
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->maxSpan:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 21
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->minSpan:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

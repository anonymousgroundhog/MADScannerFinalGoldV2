.class public Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;
.super Lcom/brakefield/infinitestudio/ui/layout/FillMargin;
.source "FlexMargin.java"


# instance fields
.field private final maxMargin:F

.field private final minMargin:F


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;FF)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;-><init>(Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;)V

    .line 10
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;->minMargin:F

    .line 11
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;->maxMargin:F

    return-void
.end method

.method private subtractMinMargins(F)F
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;->span:Lcom/brakefield/infinitestudio/ui/layout/Span;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/layout/Span;->totalSpan(I)I

    move-result v0

    int-to-float v0, v0

    float-to-int v0, v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;->numberOfMarginsFromSpan(I)F

    move-result v0

    .line 26
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;->minMargin:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public get(I)F
    .locals 1

    int-to-float p1, p1

    .line 16
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;->subtractMinMargins(F)F

    move-result p1

    float-to-int p1, p1

    .line 17
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;->get(I)F

    move-result p1

    .line 18
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;->minMargin:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 19
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FlexMargin;->maxMargin:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.class public Lcom/brakefield/infinitestudio/ui/layout/FillMargin;
.super Lcom/brakefield/infinitestudio/ui/layout/Margin;
.source "FillMargin.java"


# instance fields
.field protected final idealSize:F

.field protected final span:Lcom/brakefield/infinitestudio/ui/layout/Span;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/layout/Margin;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;->span:Lcom/brakefield/infinitestudio/ui/layout/Span;

    .line 10
    iget p1, p1, Lcom/brakefield/infinitestudio/ui/layout/FlexSpan;->idealSize:F

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;->idealSize:F

    return-void
.end method


# virtual methods
.method public get(I)F
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;->span:Lcom/brakefield/infinitestudio/ui/layout/Span;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/layout/Span;->totalSpan(I)I

    move-result v0

    int-to-float v0, v0

    .line 16
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;->idealSize:F

    mul-float/2addr v1, v0

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-int v0, v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/layout/FillMargin;->numberOfMarginsFromSpan(I)F

    move-result v0

    div-float/2addr p1, v0

    return p1
.end method

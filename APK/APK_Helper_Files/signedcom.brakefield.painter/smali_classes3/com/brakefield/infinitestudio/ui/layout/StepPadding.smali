.class public Lcom/brakefield/infinitestudio/ui/layout/StepPadding;
.super Lcom/brakefield/infinitestudio/ui/layout/Padding;
.source "StepPadding.java"


# instance fields
.field final maxSize:F

.field final maxValue:F

.field final minSize:F

.field final minValue:F

.field final stepValue:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/layout/Padding;-><init>()V

    .line 12
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->minValue:F

    .line 13
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->maxValue:F

    .line 14
    iput p3, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->stepValue:F

    .line 15
    iput p4, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->minSize:F

    .line 16
    iput p5, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->maxSize:F

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 3

    int-to-float p1, p1

    .line 20
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->minSize:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iget p1, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->minValue:F

    float-to-int p1, p1

    return p1

    .line 21
    :cond_0
    iget v1, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->maxSize:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    iget p1, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->maxValue:F

    float-to-int p1, p1

    return p1

    :cond_1
    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    .line 23
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->maxValue:F

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->minValue:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/brakefield/infinitestudio/ui/layout/StepPadding;->stepValue:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    float-to-int p1, v1

    return p1
.end method

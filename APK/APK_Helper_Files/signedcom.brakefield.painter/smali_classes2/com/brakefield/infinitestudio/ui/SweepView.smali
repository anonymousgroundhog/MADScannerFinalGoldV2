.class public Lcom/brakefield/infinitestudio/ui/SweepView;
.super Landroid/view/View;
.source "SweepView.java"


# instance fields
.field protected buttonSize:F

.field protected buttonSizeLarge:F

.field center:I

.field h:I

.field protected oval:Landroid/graphics/RectF;

.field public prevValue:F

.field public value:F

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/SweepView;->oval:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->button_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SweepView;->buttonSize:F

    .line 27
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->button_size_large:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/ui/SweepView;->buttonSizeLarge:F

    return-void
.end method

.method public setPreviousValue(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SweepView;->prevValue:F

    .line 32
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SweepView;->postInvalidate()V

    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SweepView;->value:F

    .line 37
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/SweepView;->postInvalidate()V

    return-void
.end method

.method public update(II)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/SweepView;->x:I

    .line 42
    iput p2, p0, Lcom/brakefield/infinitestudio/ui/SweepView;->y:I

    return-void
.end method

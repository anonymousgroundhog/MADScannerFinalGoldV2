.class public Lcom/brakefield/infinitestudio/ui/AutosizeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "AutosizeTextView.java"


# instance fields
.field private originalTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 11
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->originalTextSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 11
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->originalTextSize:F

    .line 19
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->originalTextSize:F

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setupAutosizeSettings()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 11
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->originalTextSize:F

    .line 27
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->originalTextSize:F

    .line 28
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setupAutosizeSettings()V

    :cond_0
    return-void
.end method

.method private setupAutosizeSettings()V
    .locals 4

    .line 41
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->originalTextSize:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    return-void
.end method


# virtual methods
.method public setTextSize(F)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(F)V

    .line 36
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->originalTextSize:F

    .line 37
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setupAutosizeSettings()V

    return-void
.end method

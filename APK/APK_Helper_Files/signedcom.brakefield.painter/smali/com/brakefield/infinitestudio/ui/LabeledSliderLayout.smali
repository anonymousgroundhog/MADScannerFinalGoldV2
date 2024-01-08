.class public Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;
.super Landroid/widget/FrameLayout;
.source "LabeledSliderLayout.java"


# instance fields
.field private slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

.field private titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private valueLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addViews(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addViews(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addSlider(Landroid/content/Context;)V
    .locals 4

    .line 78
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    const/4 v1, 0x0

    sget v2, Lcom/brakefield/infinitestudio/R$style;->SliderBar:I

    invoke-direct {v0, p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    const/high16 v0, 0x41600000    # 14.0f

    .line 80
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    .line 81
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    new-instance v2, Lcom/brakefield/infinitestudio/ui/KnobDrawable;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    invoke-direct {v2, v3}, Lcom/brakefield/infinitestudio/ui/KnobDrawable;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setPadding(IIII)V

    .line 83
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/brakefield/infinitestudio/R$dimen;->button_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-direct {v1, v3, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTitleLabel(Landroid/content/Context;)V
    .locals 3

    .line 66
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/brakefield/infinitestudio/R$style;->SliderLabel:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance p1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 68
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const v2, 0x800003

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addValueLabel(Landroid/content/Context;)V
    .locals 3

    .line 72
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/brakefield/infinitestudio/R$style;->SliderValue:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 73
    new-instance p1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->valueLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 74
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const v2, 0x800005

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViews(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addTitleLabel(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addValueLabel(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->addSlider(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$addSlider$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/brakefield/infinitestudio/R$styleable;->LabeledSliderLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledSliderLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 45
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledSliderLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 46
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledSliderLayout_ui_binding_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 49
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledSliderLayout_ui_binding_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 50
    sget v0, Lcom/brakefield/infinitestudio/R$id;->ui_binding_key:I

    invoke-virtual {p0, v0, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setTag(ILjava/lang/Object;)V

    .line 53
    :cond_1
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledSliderLayout_is_centered:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 54
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMiddlePivot(Z)V

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result v0

    return v0
.end method

.method public getSlider()Lcom/brakefield/infinitestudio/ui/CustomSlider;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    return-object v0
.end method

.method public getThumbX()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getThumbX()I

    move-result v0

    return v0
.end method

.method public getThumbY()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getThumbY()I

    move-result v0

    return v0
.end method

.method public getTitleLabel()Landroid/widget/TextView;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-object v0
.end method

.method public getValueLabel()Landroid/widget/TextView;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->valueLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    return-object v0
.end method

.method public isMiddlePivot()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->isMiddlePivot()Z

    move-result v0

    return v0
.end method

.method public setMax(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMax(I)V

    return-void
.end method

.method public setMiddlePivot(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMiddlePivot(Z)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->slider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    return-void
.end method

.method public setValueLabel(Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->valueLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

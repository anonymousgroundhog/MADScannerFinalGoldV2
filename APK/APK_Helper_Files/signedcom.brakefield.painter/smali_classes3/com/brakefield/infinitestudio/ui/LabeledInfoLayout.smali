.class public Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;
.super Landroid/widget/FrameLayout;
.source "LabeledInfoLayout.java"


# instance fields
.field private titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private valueLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->addViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->addViews(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->addViews(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addTitleLabel(Landroid/content/Context;)V
    .locals 3

    .line 58
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/brakefield/infinitestudio/R$style;->InfoLabel:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 59
    new-instance p1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const v2, 0x800013

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addValueLabel(Landroid/content/Context;)V
    .locals 3

    .line 64
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/brakefield/infinitestudio/R$style;->InfoValue:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 65
    new-instance p1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->valueLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const v2, 0x800015

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViews(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->addTitleLabel(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->addValueLabel(Landroid/content/Context;)V

    return-void
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/brakefield/infinitestudio/R$styleable;->LabeledInfoLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledInfoLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 42
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledInfoLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 43
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledInfoLayout_ui_binding_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 46
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledInfoLayout_ui_binding_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    sget v0, Lcom/brakefield/infinitestudio/R$id;->ui_binding_key:I

    invoke-virtual {p0, v0, p2}, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->setTag(ILjava/lang/Object;)V

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setValue(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->valueLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledInfoLayout;->valueLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

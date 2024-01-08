.class public Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;
.super Landroid/widget/FrameLayout;
.source "LabeledToggleLayout.java"


# instance fields
.field private titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

.field private toggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->addViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->addViews(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->addViews(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addTitleLabel(Landroid/content/Context;)V
    .locals 3

    .line 59
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/brakefield/infinitestudio/R$style;->SettingsLabel:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 60
    new-instance p1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 61
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const v2, 0x800013

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addToggle(Landroid/content/Context;)V
    .locals 4

    .line 65
    new-instance v0, Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->toggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    .line 66
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const v2, 0x800015

    const/4 v3, -0x1

    invoke-direct {p1, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViews(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->addTitleLabel(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->addToggle(Landroid/content/Context;)V

    return-void
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/brakefield/infinitestudio/R$styleable;->LabeledToggleLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledToggleLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 43
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledToggleLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 44
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledToggleLayout_ui_binding_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 47
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledToggleLayout_ui_binding_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 48
    sget v0, Lcom/brakefield/infinitestudio/R$id;->ui_binding_key:I

    invoke-virtual {p0, v0, p2}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setTag(ILjava/lang/Object;)V

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getToggle()Landroid/widget/Switch;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->toggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->toggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->toggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setChecked(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->toggle:Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

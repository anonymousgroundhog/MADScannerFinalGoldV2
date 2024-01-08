.class public Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;
.super Landroid/widget/FrameLayout;
.source "LabeledDropdownLayout.java"


# instance fields
.field private dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

.field private titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->addViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->addViews(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->addViews(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addDropdown(Landroid/content/Context;)V
    .locals 4

    .line 68
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/brakefield/infinitestudio/R$style;->Spinner:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 69
    new-instance p1, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    const/high16 p1, 0x432c0000    # 172.0f

    .line 70
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    const/high16 v0, 0x42500000    # 52.0f

    .line 71
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    .line 72
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, p1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTitleLabel(Landroid/content/Context;)V
    .locals 3

    .line 62
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v1, Lcom/brakefield/infinitestudio/R$style;->SettingsLabel:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance p1, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const v2, 0x800013

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViews(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->addTitleLabel(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->addDropdown(Landroid/content/Context;)V

    return-void
.end method

.method private processAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/brakefield/infinitestudio/R$styleable;->LabeledDropdownLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledDropdownLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 46
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledDropdownLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->titleLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledDropdownLayout_ui_binding_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 50
    sget p2, Lcom/brakefield/infinitestudio/R$styleable;->LabeledDropdownLayout_ui_binding_key:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 51
    sget v0, Lcom/brakefield/infinitestudio/R$id;->ui_binding_key:I

    invoke-virtual {p0, v0, p2}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setTag(ILjava/lang/Object;)V

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDropdown()Landroid/widget/Spinner;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public setAdapter(Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->dropdown:Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.class public Lcom/brakefield/painter/ui/SettingsBuilder;
.super Ljava/lang/Object;
.source "SettingsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;,
        Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;,
        Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;,
        Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;,
        Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting2;
    }
.end annotation


# static fields
.field private static final BASELINE:I = 0x5

.field private static final BOTTOM:I = 0x4

.field private static final DEBUG:Z = false

.field private static final LEFT:I = 0x1

.field private static final MATCH_CONSTRAINT:I = 0x0

.field private static final RIGHT:I = 0x2

.field private static final TOP:I = 0x3

.field private static final WRAP_CONTENT:I = -0x2


# instance fields
.field private dropdownHeight:I

.field private dropdownWidth:I

.field private inlineLabelWidth:I

.field private sliderHeight:I

.field private switchHeight:I

.field private switchWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 275
    iput v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->switchWidth:I

    .line 276
    iput v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->switchHeight:I

    .line 278
    iput v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->dropdownWidth:I

    .line 279
    iput v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->dropdownHeight:I

    .line 281
    iput v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->inlineLabelWidth:I

    .line 283
    iput v0, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->sliderHeight:I

    return-void
.end method

.method private above(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 345
    invoke-virtual {p1, p2, v0, p3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->alignTop(Landroidx/constraintlayout/widget/ConstraintSet;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->below(Landroidx/constraintlayout/widget/ConstraintSet;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->alignBaseline(Landroidx/constraintlayout/widget/ConstraintSet;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->alignLeft(Landroidx/constraintlayout/widget/ConstraintSet;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->alignRight(Landroidx/constraintlayout/widget/ConstraintSet;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->leftOf(Landroidx/constraintlayout/widget/ConstraintSet;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/SettingsBuilder;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/SettingsBuilder;->rightOf(Landroidx/constraintlayout/widget/ConstraintSet;II)V

    return-void
.end method

.method private alignBaseline(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 1

    const/4 v0, 0x5

    .line 349
    invoke-virtual {p1, p2, v0, p3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method private alignBottom(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 1

    const/4 v0, 0x4

    .line 339
    invoke-virtual {p1, p2, v0, p3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method private alignLeft(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 1

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p1, p2, v0, p3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method private alignRight(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 1

    const/4 v0, 0x2

    .line 326
    invoke-virtual {p1, p2, v0, p3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method private alignTop(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 1

    const/4 v0, 0x3

    .line 336
    invoke-virtual {p1, p2, v0, p3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method private below(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 342
    invoke-virtual {p1, p2, v0, p3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method private leftOf(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 332
    invoke-virtual {p1, p2, v0, p3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method

.method private rightOf(Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 329
    invoke-virtual {p1, p2, v0, p3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    return-void
.end method


# virtual methods
.method public addActionSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addDropdownSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;
    .locals 10

    .line 236
    new-instance v0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 237
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setMaxLines(I)V

    const-string v2, "TEST SETTING"

    .line 238
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x13

    .line 239
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setGravity(I)V

    .line 240
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v2

    .line 242
    new-instance v3, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;

    invoke-direct {v3, p1}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;-><init>(Landroid/content/Context;)V

    .line 243
    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    new-instance v6, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v7, "TEST 1"

    const/4 v8, 0x0

    .line 244
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v5, v8

    new-instance v6, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v7, "TEST 2"

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v5, v1

    new-instance v1, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const-string v6, "TEST 3"

    const/4 v7, 0x2

    .line 246
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v1, v6, v9}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v1, v5, v7

    invoke-direct {v4, p1, v5}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 243
    invoke-virtual {v3, v4}, Lcom/brakefield/infinitestudio/ui/spinners/ImmersiveSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 248
    invoke-virtual {p0, v3}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v1

    const/4 v4, -0x2

    .line 250
    invoke-virtual {p2, v0, v8, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SettingsBuilder;->getDropdownWidth(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p2, v3, p1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 258
    new-instance p1, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting2;

    invoke-direct {p1, p0, v2, v1}, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting2;-><init>(Lcom/brakefield/painter/ui/SettingsBuilder;II)V

    return-object p1
.end method

.method public addInlineSliderSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;
    .locals 8

    .line 206
    new-instance v0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setMaxLines(I)V

    const-string v2, "TEST SETTING"

    .line 208
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v2

    .line 211
    new-instance v3, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {v3, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setMaxLines(I)V

    const/4 v1, 0x5

    .line 213
    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setGravity(I)V

    const-string v1, "100"

    .line 214
    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0, v3}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v1

    .line 217
    new-instance v4, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-direct {v4, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {p0, v4}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v5

    .line 220
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SettingsBuilder;->getInlineLabelWidth(Landroid/app/Activity;)I

    move-result v6

    const/4 v7, -0x2

    .line 221
    invoke-virtual {p2, v0, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SettingsBuilder;->getSliderHeight(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p2, v4, v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 223
    invoke-virtual {p2, v3, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 231
    new-instance p1, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;

    invoke-direct {p1, p0, v2, v5, v1}, Lcom/brakefield/painter/ui/SettingsBuilder$InlineSliderSetting;-><init>(Lcom/brakefield/painter/ui/SettingsBuilder;III)V

    return-object p1
.end method

.method public addSliderSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;
    .locals 8

    .line 177
    new-instance v0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setMaxLines(I)V

    const-string v2, "TEST SETTING"

    .line 179
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v2

    .line 182
    new-instance v3, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {v3, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setMaxLines(I)V

    const/4 v1, 0x5

    .line 184
    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setGravity(I)V

    const-string v1, "100"

    .line 185
    invoke-virtual {v3, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p0, v3}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v1

    .line 188
    new-instance v4, Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-direct {v4, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {p0, v4}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x2

    .line 191
    invoke-virtual {p2, v0, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SettingsBuilder;->getSliderHeight(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p2, v4, v6, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 193
    invoke-virtual {p2, v3, v7, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 201
    new-instance p1, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;

    invoke-direct {p1, p0, v2, v5, v1}, Lcom/brakefield/painter/ui/SettingsBuilder$StackedSliderSetting;-><init>(Lcom/brakefield/painter/ui/SettingsBuilder;III)V

    return-object p1
.end method

.method public addSourceSettingView(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addSwitchSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;
    .locals 6

    .line 156
    new-instance v0, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setMaxLines(I)V

    const-string v1, "TEST SETTING"

    .line 158
    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v1

    .line 161
    new-instance v2, Lcom/brakefield/infinitestudio/ui/CustomSwitch;

    invoke-direct {v2, p1}, Lcom/brakefield/infinitestudio/ui/CustomSwitch;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p0, v2}, Lcom/brakefield/painter/ui/SettingsBuilder;->getViewId(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 164
    invoke-virtual {p2, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SettingsBuilder;->getSwitchWidth(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/SettingsBuilder;->getSwitchHeight(Landroid/app/Activity;)I

    move-result p1

    invoke-virtual {p2, v2, v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 172
    new-instance p1, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;

    invoke-direct {p1, p0, v1, v3}, Lcom/brakefield/painter/ui/SettingsBuilder$LabeledControlSetting;-><init>(Lcom/brakefield/painter/ui/SettingsBuilder;II)V

    return-object p1
.end method

.method getDropdownHeight(Landroid/app/Activity;)I
    .locals 0

    .line 305
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->dropdownHeight:I

    if-lez p1, :cond_0

    return p1

    :cond_0
    const/high16 p1, 0x42200000    # 40.0f

    .line 306
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->dropdownHeight:I

    return p1
.end method

.method getDropdownWidth(Landroid/app/Activity;)I
    .locals 0

    .line 299
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->dropdownWidth:I

    if-lez p1, :cond_0

    return p1

    :cond_0
    const/high16 p1, 0x42f00000    # 120.0f

    .line 300
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->dropdownWidth:I

    return p1
.end method

.method getInlineLabelWidth(Landroid/app/Activity;)I
    .locals 0

    .line 311
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->inlineLabelWidth:I

    if-lez p1, :cond_0

    return p1

    :cond_0
    const/high16 p1, 0x42800000    # 64.0f

    .line 312
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->inlineLabelWidth:I

    return p1
.end method

.method getSliderHeight(Landroid/app/Activity;)I
    .locals 0

    .line 317
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->sliderHeight:I

    if-lez p1, :cond_0

    return p1

    :cond_0
    const/high16 p1, 0x42200000    # 40.0f

    .line 318
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->sliderHeight:I

    return p1
.end method

.method getSwitchHeight(Landroid/app/Activity;)I
    .locals 0

    .line 293
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->switchHeight:I

    if-lez p1, :cond_0

    return p1

    :cond_0
    const/high16 p1, 0x42200000    # 40.0f

    .line 294
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->switchHeight:I

    return p1
.end method

.method getSwitchWidth(Landroid/app/Activity;)I
    .locals 0

    .line 287
    iget p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->switchWidth:I

    if-lez p1, :cond_0

    return p1

    :cond_0
    const/high16 p1, 0x42800000    # 64.0f

    .line 288
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/painter/ui/SettingsBuilder;->switchWidth:I

    return p1
.end method

.method getViewId(Landroid/view/View;)I
    .locals 1

    .line 270
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    return v0
.end method

.method public test(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 4

    .line 121
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Debugger;->startTracking()V

    .line 123
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SettingsBuilder;->addSwitchSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SettingsBuilder;->addDropdownSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SettingsBuilder;->addInlineSliderSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_3

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/SettingsBuilder;->addSliderSetting(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;)Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const-string p1, "BUILDING SETTINGS 1"

    .line 134
    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->stopTracking(Ljava/lang/String;)J

    .line 137
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 138
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 142
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v1, v0

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;

    .line 143
    invoke-interface {v2, p1, v1, v0}, Lcom/brakefield/painter/ui/SettingsBuilder$Constrainable;->constrain(Landroidx/constraintlayout/widget/ConstraintSet;II)I

    move-result v1

    goto :goto_4

    .line 146
    :cond_4
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-string p1, "BUILDING SETTINGS 2"

    .line 148
    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->stopTracking(Ljava/lang/String;)J

    const p1, -0xbbbbbc

    .line 150
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    return-void
.end method

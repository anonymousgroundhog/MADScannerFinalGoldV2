.class public Lcom/brakefield/infinitestudio/ui/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;,
        Lcom/brakefield/infinitestudio/ui/UIManager$Value;,
        Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;,
        Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSliderPopupListener(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 6

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 140
    new-instance p0, Lcom/brakefield/infinitestudio/ui/UIManager$4;

    move-object v0, p0

    move-object v1, p3

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/infinitestudio/ui/UIManager$4;-><init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroid/view/LayoutInflater;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;)V

    return-object p0
.end method

.method static synthetic lambda$setPressAction$0(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setupSlider$1(ZFF)Ljava/lang/String;
    .locals 5

    const-string v0, "%d"

    if-eqz p0, :cond_0

    .line 306
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    float-to-double v1, p2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    float-to-double p1, p1

    mul-double/2addr v1, p1

    double-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 307
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setPressAction(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-static {p0, p0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static setPressAction(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 48
    new-instance v0, Lcom/brakefield/infinitestudio/ui/RippleDrawable;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;-><init>()V

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 51
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    .line 52
    new-instance v2, Lcom/brakefield/infinitestudio/ui/UIManager$1;

    invoke-direct {v2, p1, v1}, Lcom/brakefield/infinitestudio/ui/UIManager$1;-><init>(Landroid/view/View;F)V

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/RippleDrawable;->setOnPressedStateChangedListener(Lcom/brakefield/infinitestudio/ui/drawables/DrawableState$OnStateChangedListener;)V

    .line 88
    new-instance p1, Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/brakefield/infinitestudio/ui/UIManager$2;

    invoke-direct {v0, p4}, Lcom/brakefield/infinitestudio/ui/UIManager$2;-><init>(Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControlInternal(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/brakefield/infinitestudio/ui/UIManager$3;

    invoke-direct {v0, p4}, Lcom/brakefield/infinitestudio/ui/UIManager$3;-><init>(Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControlInternal(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 114
    invoke-static {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControlInternal(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 131
    invoke-static {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControlInternal(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private static setSliderControlInternal(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 259
    invoke-static {p0, p1, p3, p4}, Lcom/brakefield/infinitestudio/ui/UIManager;->getSliderPopupListener(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private static setSliderControlInternal(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 264
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getSlider()Lcom/brakefield/infinitestudio/ui/CustomSlider;

    move-result-object p2

    invoke-static {p0, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/UIManager;->getSliderPopupListener(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public static setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 361
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setAdapter(Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;)V

    .line 362
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 364
    invoke-virtual {p2, p3}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;->getItemPositionFromReturnObject(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->getSelectedItemPosition()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 366
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public static setupSlider(Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;Lcom/brakefield/infinitestudio/ui/UIManager$Value;Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;FFLandroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;",
            "Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;",
            "Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;",
            "Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;",
            "Lcom/brakefield/infinitestudio/ui/UIManager$Value<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;",
            "FF",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    sub-float v13, p7, p6

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, v13

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    mul-float/2addr v0, v13

    float-to-int v0, v0

    int-to-float v14, v0

    float-to-int v0, v14

    .line 300
    invoke-virtual {v10, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->isMiddlePivot()Z

    move-result v0

    if-nez p1, :cond_1

    .line 305
    new-instance v1, Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v14}, Lcom/brakefield/infinitestudio/ui/UIManager$$ExternalSyntheticLambda1;-><init>(ZF)V

    move-object v15, v1

    goto :goto_0

    :cond_1
    move-object/from16 v15, p1

    .line 313
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v8, Lcom/brakefield/infinitestudio/ui/UIManager$5;

    move-object v0, v8

    move v1, v14

    move-object/from16 v2, p5

    move/from16 v3, p6

    move v4, v13

    move-object/from16 v5, p0

    move-object v6, v15

    move-object/from16 v7, p4

    move/from16 v16, v13

    move-object v13, v8

    move-object/from16 v8, p2

    move-object v11, v9

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/brakefield/infinitestudio/ui/UIManager$5;-><init>(FLcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;FFLcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/UIManager$Value;Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;)V

    move-object/from16 v0, p8

    invoke-static {v11, v10, v0, v15, v13}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 342
    invoke-interface/range {p4 .. p4}, Lcom/brakefield/infinitestudio/ui/UIManager$Value;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v0, p6

    div-float v0, v0, p7

    if-eqz v12, :cond_2

    .line 344
    invoke-interface {v12, v0}, Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;->revert(F)F

    move-result v0

    :cond_2
    mul-float v1, v0, v14

    float-to-int v1, v1

    .line 346
    invoke-virtual {v10, v1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    move-object/from16 v1, p2

    if-eqz v1, :cond_3

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getSlider()Lcom/brakefield/infinitestudio/ui/CustomSlider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;->onProgressChanged(Landroid/widget/SeekBar;FZ)V

    .line 351
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->getProgress()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v14

    if-eqz v12, :cond_4

    .line 353
    invoke-interface {v12, v0}, Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;->apply(F)F

    move-result v0

    :cond_4
    mul-float v13, v16, v0

    add-float v0, p6, v13

    .line 356
    invoke-interface {v15, v0}, Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;->getDisplayValue(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    return-void
.end method

.method public static setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 271
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;->setChecked(Z)V

    return-void
.end method

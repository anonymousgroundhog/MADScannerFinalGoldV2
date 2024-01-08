.class public Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "LayerBlendingModesViewController.java"


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    return-void
.end method

.method private bind(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/TextView;I)V
    .locals 10

    const/16 v0, 0x1f

    new-array v7, v0, [Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModePassthrough:Landroid/widget/Button;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeNormal:Landroid/widget/Button;

    const/4 v2, 0x1

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeMultiply:Landroid/widget/Button;

    const/4 v2, 0x2

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeScreen:Landroid/widget/Button;

    const/4 v2, 0x3

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeOverlay:Landroid/widget/Button;

    const/4 v2, 0x4

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeDarken:Landroid/widget/Button;

    const/4 v2, 0x5

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeLighten:Landroid/widget/Button;

    const/4 v2, 0x6

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeSoftLight:Landroid/widget/Button;

    const/4 v2, 0x7

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeHardLight:Landroid/widget/Button;

    const/16 v9, 0x8

    aput-object v1, v7, v9

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeColorBurn:Landroid/widget/Button;

    const/16 v2, 0x9

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeColorDodge:Landroid/widget/Button;

    const/16 v2, 0xa

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeLinearBurn:Landroid/widget/Button;

    const/16 v2, 0xb

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeLinearDodge:Landroid/widget/Button;

    const/16 v2, 0xc

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeVividLight:Landroid/widget/Button;

    const/16 v2, 0xd

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeLinearLight:Landroid/widget/Button;

    const/16 v2, 0xe

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModePinLight:Landroid/widget/Button;

    const/16 v2, 0xf

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeHardMix:Landroid/widget/Button;

    const/16 v2, 0x10

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeDarkerColor:Landroid/widget/Button;

    const/16 v2, 0x11

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeLighterColor:Landroid/widget/Button;

    const/16 v2, 0x12

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeDifference:Landroid/widget/Button;

    const/16 v2, 0x13

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeExclusion:Landroid/widget/Button;

    const/16 v2, 0x14

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeNegative:Landroid/widget/Button;

    const/16 v2, 0x15

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeSubtract:Landroid/widget/Button;

    const/16 v2, 0x16

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeDivide:Landroid/widget/Button;

    const/16 v2, 0x17

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeHue:Landroid/widget/Button;

    const/16 v2, 0x18

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeSaturation:Landroid/widget/Button;

    const/16 v2, 0x19

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeColor:Landroid/widget/Button;

    const/16 v2, 0x1a

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeLuminosity:Landroid/widget/Button;

    const/16 v2, 0x1b

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeErase:Landroid/widget/Button;

    const/16 v2, 0x1c

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeMask:Landroid/widget/Button;

    const/16 v2, 0x1d

    aput-object v1, v7, v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModeOutline:Landroid/widget/Button;

    const/16 v2, 0x1e

    aput-object v1, v7, v2

    new-array v0, v0, [I

    .line 88
    fill-array-data v0, :array_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, v0

    move-object v5, p2

    move v6, p3

    .line 122
    invoke-direct/range {v1 .. v6}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->setClickListeners(Lcom/brakefield/painter/ui/SimpleUI;[Landroid/widget/TextView;[ILandroid/widget/TextView;I)V

    .line 123
    invoke-direct {p0, v7, v0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->updateTextViews([Landroid/widget/TextView;[II)V

    .line 125
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->isLayerGroup(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModePassthrough:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->blendModePassthrough:Landroid/widget/Button;

    invoke-virtual {p1, v9}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x3
        0x8
        0x1
        0x2
        0x7
        0xc
        0xe
        0x4
        0x9
        0x5
        0xa
        0xf
        0x10
        0x11
        0x12
        0x6
        0xb
        0x13
        0x14
        0x15
        0x17
        0x16
        0x19
        0x1a
        0x1b
        0x1c
        0x32
        0x33
        0x34
    .end array-data
.end method

.method static synthetic lambda$getView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private setClickListeners(Lcom/brakefield/painter/ui/SimpleUI;[Landroid/widget/TextView;[ILandroid/widget/TextView;I)V
    .locals 12

    move-object v8, p2

    const/4 v0, 0x0

    move v9, v0

    .line 130
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_0

    .line 131
    aget-object v10, v8, v9

    .line 132
    aget v3, p3, v9

    .line 133
    new-instance v11, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p5

    move-object v4, p1

    move-object/from16 v5, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;IILcom/brakefield/painter/ui/SimpleUI;Landroid/widget/TextView;[Landroid/widget/TextView;[I)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private update(Landroid/widget/TextView;III)V
    .locals 0

    if-ne p3, p2, :cond_0

    .line 154
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 155
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private updateTextViews([Landroid/widget/TextView;[II)V
    .locals 4

    const/16 v0, 0x3c

    const/4 v1, 0x0

    .line 144
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 145
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->getLayerBlendingMode(I)I

    move-result p3

    .line 146
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 147
    aget-object v2, p1, v1

    .line 148
    aget v3, p2, v1

    .line 149
    invoke-direct {p0, v2, v3, p3, v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->update(Landroid/widget/TextView;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/TextView;I)Landroid/view/View;
    .locals 4

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    .line 25
    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->container:Landroid/widget/ScrollView;

    new-instance v1, Lcom/brakefield/infinitestudio/ui/BarDrawable;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->container:Landroid/widget/ScrollView;

    invoke-direct {v1, v2}, Lcom/brakefield/infinitestudio/ui/BarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->seekContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController$1;

    invoke-direct {v2, p0, p4, p2}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;ILcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 45
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-static {p4}, Lcom/brakefield/painter/PainterLib;->getLayerOpacity(I)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 47
    invoke-direct {p0, p2, p3, p4}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->bind(Lcom/brakefield/painter/ui/SimpleUI;Landroid/widget/TextView;I)V

    .line 49
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->binding:Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/LayerBlendingModesViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setClickListeners$1$com-brakefield-painter-ui-viewcontrollers-LayerBlendingModesViewController(IILcom/brakefield/painter/ui/SimpleUI;Landroid/widget/TextView;[Landroid/widget/TextView;[ILandroid/view/View;)V
    .locals 0

    .line 134
    invoke-static {p1, p2}, Lcom/brakefield/painter/PainterLib;->setLayerBlendingMode(II)V

    .line 135
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 136
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    .line 137
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getLayerBlendingMode(I)I

    move-result p2

    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getBlendModeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-direct {p0, p5, p6, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerBlendingModesViewController;->updateTextViews([Landroid/widget/TextView;[II)V

    return-void
.end method

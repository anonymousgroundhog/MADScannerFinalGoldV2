.class public Lcom/brakefield/painter/brushes/settings/HeadSettings;
.super Lcom/brakefield/painter/brushes/settings/BrushSettings;
.source "HeadSettings.java"


# instance fields
.field binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

.field res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/settings/BrushSettings;-><init>()V

    return-void
.end method

.method private bindUI(Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 729
    iget-object v0, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 730
    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->stylusRotationToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$bindSettings$0(Landroid/view/View;)V
    .locals 0

    const-string p0, ""

    .line 56
    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setBrushHeadResourceName(Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setBrushHeadCustomName(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->refresh()V

    return-void
.end method

.method static synthetic lambda$bindSettings$14(F)Ljava/lang/String;
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    double-to-float p0, v0

    float-to-double v0, p0

    .line 357
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float/2addr p0, v0

    .line 359
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "\u00b0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindSettings$17(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 459
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setScreenAligned(Z)V

    .line 460
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method static synthetic lambda$bindSettings$18(F)Ljava/lang/String;
    .locals 2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindSettings$22(F)Ljava/lang/String;
    .locals 2

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindSettings$5(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f120ab1

    .line 113
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120b06

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->editProfile(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$bindSettings$7(F)Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x42c60000    # 99.0f

    mul-float/2addr p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindSettings$9(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;F)Ljava/lang/String;
    .locals 1

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSpacing()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.2f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private refreshSourceImage()V
    .locals 3

    .line 735
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadCustomName()Ljava/lang/String;

    move-result-object v0

    .line 736
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadResourceName()Ljava/lang/String;

    move-result-object v1

    .line 739
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 740
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushHeadsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 743
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 744
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->res:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 747
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadSelectImageText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_1

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadSelectImageText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 49
    new-instance v1, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadSettings()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;-><init>(J)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->res:Landroid/content/res/Resources;

    .line 53
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadRemove:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 54
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadRemove:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 55
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadRemove:Landroid/widget/ImageView;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x28

    const/16 v3, 0x80

    .line 61
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 63
    iget-object v3, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadContainer:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/brakefield/infinitestudio/ui/TileDrawable;

    invoke-direct {v4, v2}, Lcom/brakefield/infinitestudio/ui/TileDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadImage:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 67
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v9}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->refreshSourceImage()V

    .line 84
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headSourceInvert:Landroid/widget/Button;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadConversionFormat()I

    move-result v2

    .line 92
    iget-object v3, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headSourceInvert:Landroid/widget/Button;

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v3, v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 95
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headSourceColorize:Landroid/widget/Button;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushColorHead()Z

    move-result v2

    .line 105
    iget-object v3, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headSourceColorize:Landroid/widget/Button;

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3, v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 106
    iget-object v3, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v6, 0x8

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 112
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headProfileView:Lcom/brakefield/painter/ui/ProfileView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 113
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headProfileView:Lcom/brakefield/painter/ui/ProfileView;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda9;

    invoke-direct {v3, v9, v10}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/ui/ProfileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headProfileView:Lcom/brakefield/painter/ui/ProfileView;

    new-instance v3, Lcom/brakefield/painter/nativeobjs/ProfileNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadSourceProfile()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Lcom/brakefield/painter/nativeobjs/ProfileNative;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/ui/ProfileView;->setProfile(Lcom/brakefield/painter/nativeobjs/ProfileNative;)V

    .line 116
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda10;

    invoke-direct {v7, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    const/4 v11, 0x0

    invoke-static {v9, v2, v3, v11, v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 142
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadColorize()F

    move-result v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 145
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->stylesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$1;

    invoke-direct {v3, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$1;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    new-instance v7, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v13, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v14, 0x7f1209b0

    .line 156
    invoke-static {v14}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v8, v4

    new-instance v13, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v14, 0x7f1201d3

    .line 157
    invoke-static {v14}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v13, v8, v5

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v13, 0x7f12019d

    .line 158
    invoke-static {v13}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v5, v13, v15}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v8, v14

    invoke-direct {v7, v9, v8}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 160
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getHeadStyle()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 145
    invoke-static {v2, v3, v7, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 162
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 163
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda12;-><init>()V

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda13;

    invoke-direct {v7, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    invoke-static {v9, v2, v3, v5, v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 171
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getFlow()F

    move-result v3

    mul-float/2addr v3, v12

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 194
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda14;

    invoke-direct {v7, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    new-instance v8, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda15;

    invoke-direct {v8, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    invoke-static {v9, v2, v3, v7, v8}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 202
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSpacing()F

    move-result v3

    const v7, 0x3ba3d70a    # 0.005f

    sub-float/2addr v3, v7

    const v7, 0x3fff5c29    # 1.995f

    div-float/2addr v3, v7

    float-to-double v7, v3

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v3, v7

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 245
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->structureSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda16;

    invoke-direct {v7, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    invoke-static {v9, v2, v3, v11, v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 252
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->structureSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getStructure()F

    move-result v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 275
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda17;

    invoke-direct {v7, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    invoke-static {v9, v2, v3, v11, v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 282
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSoftness()F

    move-result v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 305
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda18;

    invoke-direct {v7, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    invoke-static {v9, v2, v3, v11, v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 318
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getDepth()F

    move-result v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 343
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getDepth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 344
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->depthDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    invoke-virtual {v2}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 346
    :cond_2
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->depthDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    invoke-virtual {v2}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    :goto_2
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 351
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda19;

    invoke-direct {v4}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda19;-><init>()V

    new-instance v6, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda20;

    invoke-direct {v6, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    invoke-static {v9, v2, v3, v4, v6}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 374
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getAngle()F

    move-result v2

    sub-float v2, v5, v2

    float-to-double v2, v2

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v6

    double-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    cmpl-float v4, v2, v5

    if-lez v4, :cond_3

    sub-float/2addr v2, v5

    .line 377
    :cond_3
    iget-object v4, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 414
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    new-instance v5, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda21;

    invoke-direct {v5, v0, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    invoke-static {v9, v2, v4, v11, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 424
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getRotation()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    mul-float/2addr v4, v12

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 457
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->orientToScreenToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda22;

    invoke-direct {v3, v1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;)V

    .line 461
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->screenAligned()Z

    move-result v1

    .line 457
    invoke-static {v2, v3, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 465
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v3, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->flowDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    const v4, 0x7f1201c1

    const v5, 0x7f1202ba

    new-instance v6, Lcom/brakefield/painter/brushes/settings/HeadSettings$2;

    invoke-direct {v6, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$2;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$3;

    invoke-direct {v7, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$3;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    new-instance v8, Lcom/brakefield/painter/brushes/settings/HeadSettings$4;

    invoke-direct {v8, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$4;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 512
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v3, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->scatterDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    const v4, 0x7f120a6e

    const v5, 0x7f1202e2

    new-instance v6, Lcom/brakefield/painter/brushes/settings/HeadSettings$5;

    invoke-direct {v6, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$5;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$6;

    invoke-direct {v7, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$6;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    new-instance v8, Lcom/brakefield/painter/brushes/settings/HeadSettings$7;

    invoke-direct {v8, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$7;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 559
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v3, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->depthDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    const v4, 0x7f120102

    const v5, 0x7f1202b4

    new-instance v6, Lcom/brakefield/painter/brushes/settings/HeadSettings$8;

    invoke-direct {v6, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$8;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    new-instance v7, Lcom/brakefield/painter/brushes/settings/HeadSettings$9;

    invoke-direct {v7, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$9;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    new-instance v8, Lcom/brakefield/painter/brushes/settings/HeadSettings$10;

    invoke-direct {v8, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$10;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 607
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterInitialAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda23;-><init>()V

    new-instance v4, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    invoke-static {v9, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 614
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterInitialAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterStartAngle()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 616
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousScatterSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    invoke-static {v9, v1, v2, v11, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 623
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousScatterSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterScatter()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 625
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousFlowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    invoke-static {v9, v1, v2, v11, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 632
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousFlowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterFlow()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 634
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda5;-><init>()V

    new-instance v4, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;)V

    invoke-static {v9, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 641
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterAngle()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 725
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    invoke-direct {v0, v1, v10}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->bindUI(Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 1

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 43
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$bindSettings$1$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 2

    .line 68
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->isPreset()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 69
    iget-object p2, p2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadResourceName(Ljava/lang/String;)V

    .line 73
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadCustomName(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p2, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 76
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadResourceName(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadCustomName(Ljava/lang/String;)V

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/settings/HeadSettings;->refreshSourceImage()V

    return-void
.end method

.method synthetic lambda$bindSettings$10$com-brakefield-painter-brushes-settings-HeadSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 0
    int-to-float p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    float-to-double p2, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 197
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-float p2, p2

    const p3, 0x3fff5c29    # 1.995f

    mul-float/2addr p2, p3

    const p3, 0x3ba3d70a    # 0.005f

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setSpacing(F)V

    .line 198
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->spacingSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSpacing()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p4, "%.2f"

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$11$com-brakefield-painter-brushes-settings-HeadSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 247
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setStructure(F)V

    .line 248
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->structureSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$12$com-brakefield-painter-brushes-settings-HeadSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 277
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setSoftness(F)V

    .line 278
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$13$com-brakefield-painter-brushes-settings-HeadSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 307
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setDepth(F)V

    .line 308
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const/4 p4, 0x0

    sget-object p4, Lorg/ejml/sparse/csc/decomposition/qr/pB/syaLyE;->ThCxMuxA:Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    if-lez p3, :cond_0

    .line 312
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->depthDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->depthDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$bindSettings$15$com-brakefield-painter-brushes-settings-HeadSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x43b40000    # 360.0f

    div-float/2addr p2, p4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    add-float/2addr p2, v1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    float-to-double v2, p2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    double-to-float p2, v2

    sub-float/2addr v1, p2

    .line 366
    invoke-virtual {p1, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setAngle(F)V

    float-to-double p1, p2

    .line 367
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x43340000    # 180.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    sub-float/2addr p1, p4

    .line 369
    :cond_1
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->brushHeadImage:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 370
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 p3, p3, -0xb4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo p3, "\u00b0"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$16$com-brakefield-painter-brushes-settings-HeadSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    const/high16 p4, 0x3f000000    # 0.5f

    sub-float/2addr p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p2, p4

    .line 416
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setRotation(F)V

    if-nez p3, :cond_0

    .line 417
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const p2, 0x7f120a56

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    if-ne p3, p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const p2, 0x7f1201bd

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x64

    if-ne p3, p2, :cond_2

    .line 419
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const p2, 0x7f120ae2

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_2
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->rotationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 421
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$19$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 610
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterStartAngle(F)V

    .line 611
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterInitialAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 612
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$2$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/brushes/settings/HeadSettings$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/brushes/settings/HeadSettings;Landroid/app/Activity;)V

    invoke-virtual {p2, p1, v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->launchBrushHeadResourcesDialog(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)V

    return-void
.end method

.method synthetic lambda$bindSettings$20$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 618
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterScatter(F)V

    .line 619
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousScatterSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$21$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 627
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterFlow(F)V

    .line 628
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousFlowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$23$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 637
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterAngle(F)V

    .line 638
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->jitterContinuousAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$3$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/view/View;)V
    .locals 3

    .line 85
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHeadConversionFormat()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 86
    :goto_0
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setBrushHeadConversionFormat(I)V

    .line 87
    iget-object v2, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headSourceInvert:Landroid/widget/Button;

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 88
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$4$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/view/View;)V
    .locals 1

    .line 96
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushColorHead()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 97
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushColorHead(Z)V

    .line 98
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->headSourceColorize:Landroid/widget/Button;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 101
    :goto_0
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$6$com-brakefield-painter-brushes-settings-HeadSettings(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 118
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushHeadColorize(F)V

    .line 119
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$8$com-brakefield-painter-brushes-settings-HeadSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    add-int/lit8 p3, p3, 0x1

    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 166
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setFlow(F)V

    .line 167
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/HeadSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsHeadSectionViewControllerBinding;->flowSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

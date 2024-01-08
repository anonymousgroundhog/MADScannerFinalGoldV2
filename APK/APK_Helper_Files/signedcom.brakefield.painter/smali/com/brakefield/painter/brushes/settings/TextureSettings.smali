.class public Lcom/brakefield/painter/brushes/settings/TextureSettings;
.super Lcom/brakefield/painter/brushes/settings/BrushSettings;
.source "TextureSettings.java"


# instance fields
.field binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

.field res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/settings/BrushSettings;-><init>()V

    return-void
.end method

.method static synthetic lambda$bindSettings$0(Landroid/view/View;)V
    .locals 0

    const-string p0, ""

    .line 55
    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureResourceName(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureCustomName(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->refresh()V

    return-void
.end method

.method static synthetic lambda$bindSettings$10(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;F)Ljava/lang/String;
    .locals 1

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getStretch()F

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

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float/2addr p0, v0

    .line 189
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

.method static synthetic lambda$bindSettings$16(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 224
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setScaleWithSize(Z)V

    .line 225
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method static synthetic lambda$bindSettings$21(F)Ljava/lang/String;
    .locals 2

    .line 313
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

.method static synthetic lambda$bindSettings$3(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f120ab1

    .line 84
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120b06

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings;->editProfile(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$bindSettings$8(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;F)Ljava/lang/String;
    .locals 1

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getScale()F

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

    .line 324
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureCustomName()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureResourceName()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 329
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushTexturesPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 332
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->res:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 337
    iget-object v2, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 338
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureSelectImageText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureSettingsSection:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureDynamicsSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureJitterSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureSettingsSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureDynamicsSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureJitterSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    .line 48
    new-instance v1, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushTextureSettings()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;-><init>(J)V

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->res:Landroid/content/res/Resources;

    .line 52
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureRemove:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 53
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureRemove:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 54
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureRemove:Landroid/widget/ImageView;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x28

    const/16 v3, 0x80

    .line 61
    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 63
    iget-object v3, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureContainer:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/brakefield/infinitestudio/ui/TileDrawable;

    invoke-direct {v4, v2}, Lcom/brakefield/infinitestudio/ui/TileDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureImage:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 67
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings;->refreshSourceImage()V

    .line 83
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->strokeTextureProfileView:Lcom/brakefield/painter/ui/ProfileView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 84
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->strokeTextureProfileView:Lcom/brakefield/painter/ui/ProfileView;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda6;

    move-object/from16 v10, p2

    invoke-direct {v3, p1, v10}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/ui/ProfileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->strokeTextureProfileView:Lcom/brakefield/painter/ui/ProfileView;

    new-instance v3, Lcom/brakefield/painter/nativeobjs/ProfileNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushTextureSourceProfile()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/brakefield/painter/nativeobjs/ProfileNative;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/ui/ProfileView;->setProfile(Lcom/brakefield/painter/nativeobjs/ProfileNative;)V

    .line 88
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureSourceInvert:Landroid/widget/Button;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureSourceInvert:Landroid/widget/Button;

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getInvert()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 97
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureSourceColorize:Landroid/widget/Button;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushColorStrokeTexture()Z

    move-result v2

    .line 110
    iget-object v3, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureSourceColorize:Landroid/widget/Button;

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3, v2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 111
    iget-object v3, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    .line 113
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    const/4 v11, 0x0

    invoke-static {p1, v2, v3, v11, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 119
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushStrokeTextureColorize()F

    move-result v3

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 122
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->stylesDropdown:Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$1;

    invoke-direct {v3, p0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$1;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    new-instance v5, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;

    new-instance v7, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v8, 0x7f1201bd

    .line 133
    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v7, v8, v13}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v7, 0x7f120a59

    .line 134
    invoke-static {v7}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v4, v7, v13}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v6, v8

    new-instance v4, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;

    const v7, 0x7f120b36

    .line 135
    invoke-static {v7}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v4, v7, v13}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerLabelItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v6, v8

    invoke-direct {v5, p1, v6}, Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;-><init>(Landroid/content/Context;[Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItem;)V

    .line 137
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getStyle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 122
    invoke-static {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupDropdown(Lcom/brakefield/infinitestudio/ui/LabeledDropdownLayout;Landroid/widget/AdapterView$OnItemSelectedListener;Lcom/brakefield/infinitestudio/ui/spinners/SpinnerItemAdapter;Ljava/lang/Object;)V

    .line 140
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    invoke-static {p1, v2, v3, v11, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 145
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getDepth()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 147
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->scaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda12;

    invoke-direct {v5, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    new-instance v6, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    invoke-static {p1, v2, v3, v5, v6}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 153
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->scaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getScale()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    float-to-double v5, v3

    const-wide v7, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    double-to-int v3, v5

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 155
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->stretchSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda14;

    invoke-direct {v5, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    new-instance v6, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    invoke-static {p1, v2, v3, v5, v6}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 162
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->stretchSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getStretch()F

    move-result v3

    sub-float/2addr v3, v4

    const/high16 v5, 0x42440000    # 49.0f

    div-float/2addr v3, v5

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 164
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->structureSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    invoke-static {p1, v2, v3, v11, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 171
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->structureSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getStructure()F

    move-result v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 173
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda17;

    invoke-direct {v5, p0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    invoke-static {p1, v2, v3, v11, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 178
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getSoftness()F

    move-result v3

    mul-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 180
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    .line 181
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    new-instance v5, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda18;

    invoke-direct {v5}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda18;-><init>()V

    new-instance v6, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    invoke-static {p1, v2, v3, v5, v6}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 216
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getAngle()F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v5

    double-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    cmpl-float v3, v2, v4

    if-lez v3, :cond_1

    sub-float/2addr v2, v4

    .line 219
    :cond_1
    iget-object v3, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 222
    iget-object v2, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->scaleWithSizeToggle:Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;)V

    .line 226
    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getScaleWithSize()Z

    move-result v1

    .line 222
    invoke-static {v2, v3, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupToggle(Lcom/brakefield/infinitestudio/ui/LabeledToggleLayout;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    .line 229
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v3, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->depthDynamics:Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;

    const v4, 0x7f120102

    const v5, 0x7f1203a4

    new-instance v6, Lcom/brakefield/painter/brushes/settings/TextureSettings$2;

    invoke-direct {v6, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$2;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    new-instance v7, Lcom/brakefield/painter/brushes/settings/TextureSettings$3;

    invoke-direct {v7, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$3;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    new-instance v8, Lcom/brakefield/painter/brushes/settings/TextureSettings$4;

    invoke-direct {v8, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$4;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v8}, Lcom/brakefield/painter/brushes/settings/TextureSettings;->setupDynamics(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/BrushSettingsDynamicsBinding;IILcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;Lcom/brakefield/painter/brushes/settings/BrushSettings$ProfileCurveSetting;)V

    .line 277
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->tiltGradationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    invoke-static {p1, v1, v2, v11, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 283
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->tiltGradationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushTiltGradation()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 287
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterInitialPositionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    invoke-static {p1, v1, v2, v11, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 293
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterInitialPositionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterTextureStartPosition()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 296
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousPositionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    invoke-static {p1, v1, v2, v11, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 302
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousPositionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterTexturePosition()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 304
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    invoke-static {p1, v1, v2, v11, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 310
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterTextureScale()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 312
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda4;-><init>()V

    new-instance v4, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    invoke-static {p1, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;)V

    .line 319
    iget-object v1, v0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushJitterTextureAngle()F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    return-void
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 1

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/brushes/settings/TextureSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 43
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$bindSettings$1$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 2

    .line 68
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->isPreset()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 69
    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureResourceName(Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureCustomName(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 75
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureResourceName(Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureCustomName(Ljava/lang/String;)V

    .line 78
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings;->refreshSourceImage()V

    return-void
.end method

.method synthetic lambda$bindSettings$11$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x42440000    # 49.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    .line 158
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setStretch(F)V

    .line 159
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->stretchSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getStretch()F

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

    .line 160
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$12$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 166
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setStructure(F)V

    .line 167
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->structureSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

.method synthetic lambda$bindSettings$13$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    .line 174
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setSoftness(F)V

    .line 175
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->softnessSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$15$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x43b40000    # 360.0f

    div-float p4, p2, p4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p4, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v2

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v3

    double-to-float v0, v0

    .line 197
    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setAngle(F)V

    float-to-double v0, v0

    .line 198
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    float-to-double v0, p4

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v3

    const-wide v3, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v0, v3

    double-to-float p1, v0

    float-to-double v0, p1

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const p4, 0x3ed413cc

    mul-float/2addr p4, p1

    add-float/2addr p4, v2

    .line 207
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 208
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 209
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->brushTextureImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 211
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

    .line 213
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$17$com-brakefield-painter-brushes-settings-TextureSettings(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 279
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushTiltGradation(F)V

    .line 280
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->tiltGradationSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$18$com-brakefield-painter-brushes-settings-TextureSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 289
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterTextureStartPosition(F)V

    .line 290
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterInitialPositionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

    .line 291
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$19$com-brakefield-painter-brushes-settings-TextureSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 298
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterTexturePosition(F)V

    .line 299
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousPositionSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 p3, 0x0

    sget-object p3, Lkotlin/sequences/xWeI/PLNIgvxmKA;->OFxMTVU:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$2$com-brakefield-painter-brushes-settings-TextureSettings(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushPackManager;->getInstance()Lcom/brakefield/painter/brushes/BrushPackManager;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/brushes/settings/TextureSettings$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/brushes/settings/TextureSettings;)V

    invoke-virtual {p2, p1, v0}, Lcom/brakefield/painter/brushes/BrushPackManager;->launchBrushTextureResourcesDialog(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)V

    return-void
.end method

.method synthetic lambda$bindSettings$20$com-brakefield-painter-brushes-settings-TextureSettings(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 306
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterTextureScale(F)V

    .line 307
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousScaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

    .line 308
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$22$com-brakefield-painter-brushes-settings-TextureSettings(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 315
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushJitterTextureAngle(F)V

    .line 316
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->jitterContinuousAngleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

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

    .line 317
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$4$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getInvert()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 90
    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setInvert(Z)V

    .line 91
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureSourceInvert:Landroid/widget/Button;

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 92
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$5$com-brakefield-painter-brushes-settings-TextureSettings(Landroid/view/View;)V
    .locals 1

    .line 98
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushColorStrokeTexture()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 99
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushColorStrokeTexture(Z)V

    .line 100
    iget-object v0, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->textureSourceColorize:Landroid/widget/Button;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 101
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$bindSettings$6$com-brakefield-painter-brushes-settings-TextureSettings(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 0
    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 115
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushStrokeTextureColorize(F)V

    .line 116
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->colorizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$7$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 0
    int-to-float p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p2, p4

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p2

    .line 141
    invoke-virtual {p1, p4}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setDepth(F)V

    .line 142
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->depthSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

.method synthetic lambda$bindSettings$9$com-brakefield-painter-brushes-settings-TextureSettings(Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 0
    int-to-float p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    float-to-double p2, p2

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 149
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p2, v0

    double-to-float p2, p2

    const/high16 p3, 0x42480000    # 50.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setScale(F)V

    .line 150
    iget-object p2, p0, Lcom/brakefield/painter/brushes/settings/TextureSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/BrushSettingsTextureSectionViewControllerBinding;->scaleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getScale()F

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

    .line 151
    invoke-static {}, Lcom/brakefield/painter/brushes/BrushSettingsDialog;->updatePreview()V

    return-void
.end method

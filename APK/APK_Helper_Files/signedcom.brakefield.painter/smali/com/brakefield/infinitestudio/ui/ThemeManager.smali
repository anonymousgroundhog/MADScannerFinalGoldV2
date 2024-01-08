.class public Lcom/brakefield/infinitestudio/ui/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;
    }
.end annotation


# static fields
.field public static final PREF_FULLSCREEN_MODE:Ljava/lang/String; = "PREF_FULLSCREEN_MODE"

.field public static final PREF_THEME:Ljava/lang/String; = "PREF_THEME"

.field public static final PREF_THEME_ACCENT:Ljava/lang/String; = "PREF_THEME_ACCENT"

.field public static final PREF_THEME_BACKGROUND:Ljava/lang/String; = "PREF_THEME_BACKGROUND"

.field public static final PREF_THEME_FOREGROUND:Ljava/lang/String; = "PREF_THEME_FOREGROUND"

.field public static final PREF_THEME_ICON:Ljava/lang/String; = "PREF_THEME_ICON"

.field public static final PREF_UI_SCALE:Ljava/lang/String; = "PREF_UI_SCALE"

.field private static alpha:I

.field private static defaultDensity:F

.field private static defaultScaledDensity:F

.field public static fullscreenMode:Z

.field private static outlineStrokeWidth:I

.field public static refresh:Z

.field private static res:Landroid/content/res/Resources;

.field private static theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

.field public static uiScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->res:Landroid/content/res/Resources;

    const/16 v0, 0xf0

    .line 63
    sput v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->alpha:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    sput v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->uiScale:F

    const/4 v0, 0x0

    .line 66
    sput v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->defaultDensity:F

    .line 67
    sput v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->defaultScaledDensity:F

    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->fullscreenMode:Z

    const/4 v0, 0x0

    .line 71
    sput v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->outlineStrokeWidth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccentTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;
    .locals 2

    .line 345
    new-instance v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;-><init>()V

    const v1, -0x50506

    .line 346
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    const v1, -0x9e9e9f

    .line 347
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    .line 348
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v1

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    const v1, -0x1f1f20

    .line 349
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    return-object v0
.end method

.method public static getActiveColor()I
    .locals 1

    .line 139
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    return v0
.end method

.method public static getBackgroundColor()I
    .locals 1

    .line 147
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    return v0
.end method

.method public static getBottomFadeGradient(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 472
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTopFadeGradient(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    .line 473
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    return-object p0
.end method

.method public static getClampedColor(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 227
    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 p0, 0x2

    aget v1, v0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const v2, 0x3f970a3d    # 1.18f

    mul-float/2addr v1, v2

    aput v1, v0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    aput v2, v0, p0

    .line 232
    :cond_0
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p0

    return p0

    :cond_1
    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    aput v1, v0, p0

    .line 235
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p0

    return p0
.end method

.method public static getDarkNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;
    .locals 2

    .line 318
    new-instance v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;-><init>()V

    const v1, -0xd6d5d5

    .line 330
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    const v1, -0x565453

    .line 331
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    const v1, -0x1f1f1f

    .line 332
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    const v1, -0xdfdede

    .line 333
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    return-object v0
.end method

.method public static getDarkerColor(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 219
    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 p0, 0x2

    aget v1, v0, p0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    aput v1, v0, p0

    .line 222
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p0

    return p0
.end method

.method public static getFABButtonColor()I
    .locals 1

    .line 174
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    return v0
.end method

.method public static getFABIconColor()I
    .locals 1

    .line 178
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    return v0
.end method

.method public static getForegroundColor()I
    .locals 1

    .line 151
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    return v0
.end method

.method public static getGrayNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;
    .locals 2

    .line 309
    new-instance v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;-><init>()V

    const v1, -0x1f1f20

    .line 310
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    const v1, -0x9e9e9f

    .line 311
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    .line 312
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    const v1, -0xc8c8c9

    .line 313
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    return-object v0
.end method

.method public static getGrayerColor(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 241
    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 p0, 0x2

    aget v1, v0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    aput v1, v0, p0

    .line 245
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p0

    return p0

    :cond_0
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    aput v1, v0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    aput v2, v0, p0

    .line 249
    :cond_1
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p0

    return p0
.end method

.method public static getHighlightColor()I
    .locals 2

    .line 190
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->res:Landroid/content/res/Resources;

    sget v1, Lcom/brakefield/infinitestudio/R$color;->highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getIconColor()I
    .locals 1

    .line 135
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    return v0
.end method

.method public static getInactiveColor()I
    .locals 1

    .line 143
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->inactiveColor:I

    return v0
.end method

.method public static getLightNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;
    .locals 2

    .line 286
    new-instance v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;-><init>()V

    const v1, -0xd0c0c

    .line 294
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    const v1, -0x9c9c9c

    .line 295
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    .line 296
    iget v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    const v1, -0xdfdede

    .line 298
    iput v1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    return-object v0
.end method

.method public static getLighterColor(I)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 210
    invoke-static {p0, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 p0, 0x2

    aget v1, v0, p0

    const v2, 0x3f970a3d    # 1.18f

    mul-float/2addr v1, v2

    aput v1, v0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    aput v2, v0, p0

    .line 214
    :cond_0
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p0

    return p0
.end method

.method public static getLockedColor()I
    .locals 4

    .line 184
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    .line 185
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 186
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static getOldTheme(I)Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 282
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getLightNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getLightNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object p0

    return-object p0

    .line 279
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getAccentTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object p0

    return-object p0

    .line 278
    :cond_2
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getGrayNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object p0

    return-object p0

    .line 277
    :cond_3
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getDarkNeutralTheme()Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object p0

    return-object p0
.end method

.method public static getOverlayColor()I
    .locals 1

    .line 199
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getOverlayTextColor()I
    .locals 1

    .line 204
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method public static getScreenBackgroundColor()I
    .locals 2

    .line 194
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    const/16 v1, 0x1a

    invoke-static {v1, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf3

    const/16 v1, 0xf2

    .line 195
    invoke-static {v1, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static getTileColor()I
    .locals 1

    const v0, 0x66111111

    return v0
.end method

.method public static getTopBarColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getTopBarIconColor()I
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 160
    sget-object v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, -0x222223

    return v0

    :cond_0
    const v0, -0xcccccd

    return v0
.end method

.method public static getTopFadeGradient(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .line 461
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 462
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 464
    invoke-static {p0, v2}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getTransparentColor(II)I

    move-result v2

    const v3, 0x431e199a    # 158.1f

    mul-float/2addr p1, v3

    float-to-int p1, p1

    .line 465
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getTransparentColor(II)I

    move-result p1

    .line 466
    invoke-static {p0, v1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getTransparentColor(II)I

    move-result p0

    filled-new-array {v2, p1, p0}, [I

    move-result-object p0

    .line 463
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return-object v0
.end method

.method public static getTrackColor()I
    .locals 1

    .line 170
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    return v0
.end method

.method public static handleFullscreen(Landroid/app/Activity;)V
    .locals 2

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->captionBar()I

    move-result v1

    or-int/2addr v0, v1

    .line 390
    sget-boolean v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->fullscreenMode:Z

    if-eqz v1, :cond_1

    .line 391
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    :goto_0
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 5

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_UI_SCALE"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->uiScale:F

    const-string v1, "PREF_FULLSCREEN_MODE"

    const/4 v3, 0x0

    .line 78
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->fullscreenMode:Z

    .line 80
    sget v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->defaultDensity:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    sget v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->defaultScaledDensity:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    .line 81
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/brakefield/infinitestudio/ui/ThemeManager;->defaultDensity:F

    .line 84
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->defaultScaledDensity:F

    .line 87
    :cond_1
    sget v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->uiScale:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    invoke-static {p0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->rescaleUI(Landroid/app/Activity;F)V

    :cond_2
    const/16 v1, 0xff

    .line 89
    sput v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->alpha:I

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->res:Landroid/content/res/Resources;

    const/high16 v1, 0x40000000    # 2.0f

    .line 93
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->outlineStrokeWidth:I

    .line 95
    new-instance v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;-><init>()V

    const-string v2, "PREF_THEME_FOREGROUND"

    .line 97
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, -0x1

    .line 98
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    const-string v2, "PREF_THEME_BACKGROUND"

    const v3, -0xbbbbbc

    .line 99
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    const-string v2, "PREF_THEME_ICON"

    const v3, -0x99999a

    .line 100
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    const-string v2, "PREF_THEME_ACCENT"

    .line 101
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    goto :goto_0

    :cond_3
    const-string v1, "PREF_THEME"

    .line 102
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getOldTheme(I)Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    move-result-object v1

    .line 104
    :goto_0
    invoke-static {p0, v1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->setTheme(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V

    return-void
.end method

.method public static isDark()Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 255
    sget-object v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTheme(Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)Z
    .locals 2

    .line 262
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    .line 263
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getOpaqueColor(I)I

    move-result v0

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->getOpaqueColor(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    iget p0, p0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$themeAlertDialog$0(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 3

    const/4 p1, -0x1

    .line 419
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, -0x3

    .line 420
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, -0x2

    .line 421
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    .line 423
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 424
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, 0x11

    .line 425
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 426
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 431
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 432
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 433
    instance-of p1, p0, Landroid/widget/Space;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 434
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static rescaleUI(Landroid/app/Activity;F)V
    .locals 3

    .line 354
    sput p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->uiScale:F

    .line 356
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/exoplayer2/metadata/icy/OZ/XlYsLoHtRjl;->ChrgdHf:Ljava/lang/String;

    .line 358
    sget v2, Lcom/brakefield/infinitestudio/ui/ThemeManager;->uiScale:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->setUIScale(Landroid/util/DisplayMetrics;F)V

    return-void
.end method

.method public static setFullscreenMode(Landroid/app/Activity;Z)V
    .locals 2

    .line 370
    sget-boolean v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->fullscreenMode:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 372
    :cond_0
    sput-boolean p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->fullscreenMode:Z

    .line 374
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 375
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "PREF_FULLSCREEN_MODE"

    .line 376
    sget-boolean v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->fullscreenMode:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 377
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 379
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->handleFullscreen(Landroid/app/Activity;)V

    return-void
.end method

.method public static setTheme(Landroid/app/Activity;Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;)V
    .locals 4

    .line 109
    sput-object p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/brakefield/infinitestudio/R$style;->DarkWithActionBarTheme:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 113
    :cond_0
    sget p1, Lcom/brakefield/infinitestudio/R$style;->LightWithActionBarTheme:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/brakefield/infinitestudio/R$style;->DarkThemeNoBackground:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 116
    :cond_2
    sget p1, Lcom/brakefield/infinitestudio/R$style;->LightThemeNoBackground:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 119
    :goto_0
    sget-object p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget p1, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    .line 120
    sget-object v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    sget v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->alpha:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    .line 122
    sget-object p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v0, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    sget-object v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    const v2, 0x3f333333    # 0.7f

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/color/ColorUtils;->interpolate(IIF)I

    move-result v0

    iput v0, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->inactiveColor:I

    .line 124
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 126
    sget-object p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget p1, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->foregroundColor:I

    const-string v0, "PREF_THEME_FOREGROUND"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    sget-object p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget p1, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->backgroundColor:I

    const-string v0, "PREF_THEME_BACKGROUND"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    sget-object p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget p1, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->iconColor:I

    const-string v0, "PREF_THEME_ICON"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 129
    sget-object p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->theme:Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;

    iget p1, p1, Lcom/brakefield/infinitestudio/ui/ThemeManager$Theme;->accentColor:I

    const-string v0, "PREF_THEME_ACCENT"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setUIScale(Landroid/util/DisplayMetrics;F)V
    .locals 2

    .line 365
    sget v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->defaultDensity:F

    sget v1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->uiScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 366
    sget v0, Lcom/brakefield/infinitestudio/ui/ThemeManager;->defaultScaledDensity:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    return-void
.end method

.method public static styleSelectedIcon(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 478
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 479
    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method public static themeAlertDialog(Landroid/app/AlertDialog;)Landroid/content/DialogInterface$OnShowListener;
    .locals 3

    .line 411
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    .line 413
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x42800000    # 64.0f

    .line 414
    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 417
    new-instance v0, Lcom/brakefield/infinitestudio/ui/ThemeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/ThemeManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/AlertDialog;)V

    return-object v0
.end method

.method public static themeSnackbar(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 4

    .line 441
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    .line 442
    sget v1, Lcom/google/android/material/R$id;->snackbar_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x2

    .line 444
    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 447
    iput v2, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->width:I

    const/16 v2, 0x31

    .line 448
    iput v2, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x42800000    # 64.0f

    .line 449
    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    .line 450
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    .line 452
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    const/4 v0, 0x1

    .line 453
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 455
    sget v0, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 456
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 457
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method public static themeToggleButton(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 400
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 401
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    goto :goto_0

    .line 403
    :cond_0
    sget p1, Lcom/brakefield/infinitestudio/ui/ThemeManager;->outlineStrokeWidth:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 404
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 405
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    :goto_0
    return-void
.end method

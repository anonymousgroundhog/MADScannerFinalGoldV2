.class public abstract Lcom/brakefield/infinitestudio/color/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;,
        Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;
    }
.end annotation


# static fields
.field public static final MIN_DISTANCE:I = 0xa

.field public static final PREF_COLOR_TONE_LOCK:Ljava/lang/String; = "PREF_COLOR_TONE_LOCK"

.field public static refColor:I = 0x0

.field public static toneLock:Z = true


# instance fields
.field protected control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

.field protected downHSV:[F

.field protected downX:F

.field protected downY:F

.field protected drawComplimentary:Z

.field protected drawSplitAnalogous:Z

.field protected drawSplitComplimentary:Z

.field protected drawSquare:Z

.field protected drawTriadic:Z

.field private gestureViewController:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

.field protected h:I

.field protected hsl:[F

.field protected hsv:[F

.field protected final hueColors:[I

.field protected hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

.field protected knobSize:I

.field public listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

.field protected moving:Z

.field protected prevColor:I

.field private refHsl:[F

.field protected rgb:[I

.field protected ringColors:[I

.field protected set:Z

.field protected toneLockControl:Landroid/graphics/drawable/Drawable;

.field protected twoDownListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;

.field protected twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

.field protected w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x7

    new-array p1, p1, [I

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v0, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, p1, v1

    .line 32
    invoke-static {v0, v0, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x1

    aput v2, p1, v3

    const/4 v2, 0x2

    invoke-static {v0, v1, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, p1, v2

    .line 33
    invoke-static {v0, v1, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v4, 0x3

    aput v2, p1, v4

    const/4 v2, 0x4

    invoke-static {v0, v1, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, p1, v2

    const/4 v2, 0x5

    .line 34
    invoke-static {v0, v0, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, p1, v2

    const/4 v2, 0x6

    invoke-static {v0, v0, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, p1, v2

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hueColors:[I

    .line 35
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->ringColors:[I

    const/high16 p1, 0x41a00000    # 20.0f

    .line 44
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->knobSize:I

    .line 46
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawComplimentary:Z

    .line 47
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawSplitComplimentary:Z

    .line 48
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawSplitAnalogous:Z

    .line 49
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawTriadic:Z

    .line 50
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawSquare:Z

    new-array p1, v4, [F

    .line 95
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->refHsl:[F

    new-array p1, v4, [F

    .line 101
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    new-array p1, v4, [F

    .line 102
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    new-array p1, v4, [I

    .line 103
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    new-array p1, v4, [F

    .line 108
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->downHSV:[F

    .line 54
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setup()V

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x7

    new-array p1, p1, [I

    const/16 p2, 0xff

    const/4 v0, 0x0

    .line 31
    invoke-static {p2, p2, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, p1, v0

    .line 32
    invoke-static {p2, p2, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v2, 0x1

    aput v1, p1, v2

    const/4 v1, 0x2

    invoke-static {p2, v0, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, p1, v1

    .line 33
    invoke-static {p2, v0, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v3, 0x3

    aput v1, p1, v3

    const/4 v1, 0x4

    invoke-static {p2, v0, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, p1, v1

    const/4 v1, 0x5

    .line 34
    invoke-static {p2, p2, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, p1, v1

    const/4 v1, 0x6

    invoke-static {p2, p2, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    aput p2, p1, v1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hueColors:[I

    .line 35
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->ringColors:[I

    const/high16 p1, 0x41a00000    # 20.0f

    .line 44
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->knobSize:I

    .line 46
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawComplimentary:Z

    .line 47
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawSplitComplimentary:Z

    .line 48
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawSplitAnalogous:Z

    .line 49
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawTriadic:Z

    .line 50
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->drawSquare:Z

    new-array p1, v3, [F

    .line 95
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->refHsl:[F

    new-array p1, v3, [F

    .line 101
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    new-array p1, v3, [F

    .line 102
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    new-array p1, v3, [I

    .line 103
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    new-array p1, v3, [F

    .line 108
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->downHSV:[F

    .line 60
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setup()V

    .line 61
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->init()V

    return-void
.end method

.method private setup()V
    .locals 6

    .line 66
    new-instance v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->gestureViewController:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    .line 68
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/brakefield/infinitestudio/R$dimen;->knob_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 70
    new-instance v1, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    neg-int v2, v0

    .line 71
    invoke-virtual {v1, v2, v2, v0, v0}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setBounds(IIII)V

    .line 72
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hueControl:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    .line 74
    new-instance v1, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-direct {v1}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;-><init>()V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    .line 75
    iget v3, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->knobSize:I

    neg-int v4, v3

    neg-int v5, v3

    invoke-virtual {v1, v4, v5, v3, v3}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setBounds(IIII)V

    .line 76
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->control:Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/CornerCircleDrawable;->setColor(I)V

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 80
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/brakefield/infinitestudio/R$drawable;->tone_lock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLockControl:Landroid/graphics/drawable/Drawable;

    neg-int v2, v0

    .line 81
    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    new-instance v0, Lcom/brakefield/infinitestudio/color/ColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/color/ColorPickerView;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private updateHslAndHsv(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    .line 148
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method

.method private updateRgb(I)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    aput v2, v0, v1

    .line 153
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    aput v2, v0, v1

    .line 154
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    aput p1, v0, v1

    return-void
.end method


# virtual methods
.method public getBlue()I
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getBrightness()F
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getBrightnessColors()[I
    .locals 6

    .line 291
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 293
    invoke-static {v0, v2}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    new-array v0, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    int-to-float v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    const/4 v5, 0x2

    aput v4, v2, v5

    .line 297
    invoke-static {v2}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public getEndBlue()I
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    const/16 v2, 0xff

    invoke-static {v1, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getEndGreen()I
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    const/16 v2, 0xff

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getEndRed()I
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    const/16 v2, 0xff

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getGreen()I
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getHue()F
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getHueColors()[I
    .locals 8

    .line 267
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 269
    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 v0, 0x7

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    div-float/2addr v5, v6

    aput v5, v1, v3

    .line 273
    invoke-static {v1}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getOnTwoDownListener()Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->twoDownListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;

    return-object v0
.end method

.method public getRed()I
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getSaturation()F
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getSaturationColors()[I
    .locals 6

    .line 279
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 281
    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aput v4, v1, v5

    .line 285
    invoke-static {v1}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getStartBlue()I
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getStartGreen()I
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getStartRed()I
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method protected handleMultiTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->gestureViewController:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 376
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->gestureViewController:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getFingersUsed()I

    move-result p1

    if-le p1, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 378
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 380
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->twoDownListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_2

    .line 386
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v3, v5

    .line 387
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-float p1, v0

    div-float/2addr v3, p1

    div-float/2addr v4, p1

    .line 392
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->twoDownListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;

    invoke-interface {p1, v3, v4}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;->onTwoDown(FF)V

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method synthetic lambda$setup$0$com-brakefield-infinitestudio-color-ColorPickerView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setPointerIcon(Landroid/view/PointerIcon;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setBlue(I)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x0

    .line 175
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1, v0, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 176
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateHslAndHsv(I)V

    .line 177
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update()V

    .line 178
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public setBrightness(F)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 209
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p1

    .line 210
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 211
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateRgb(I)V

    .line 212
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update()V

    .line 213
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public setGamma(I)V
    .locals 0

    .line 304
    sput p1, Lcom/brakefield/infinitestudio/color/ColorPickerView;->refColor:I

    return-void
.end method

.method public setGreen(I)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v2, 0x0

    .line 167
    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v2, p1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 168
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateHslAndHsv(I)V

    .line 169
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update()V

    .line 170
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public setHSB(FFF)V
    .locals 0

    .line 182
    invoke-static {p1, p2, p3}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB(FFF)I

    move-result p1

    .line 183
    iget-object p2, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 184
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateRgb(I)V

    .line 185
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update()V

    .line 186
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock(I)I

    move-result p2

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public setHue(F)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 191
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p1

    .line 192
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 193
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateRgb(I)V

    .line 194
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update()V

    .line 195
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public setOnColorChangeListener(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    return-void
.end method

.method public setOnTwoDownListener(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->twoDownListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnTwoDownListener;

    return-void
.end method

.method public setOnTwoFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->gestureViewController:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setTwoFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;)V

    .line 401
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    return-void
.end method

.method public setPreviousColor(I)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateHslAndHsv(I)V

    .line 369
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateRgb(I)V

    .line 370
    iput p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->prevColor:I

    return-void
.end method

.method public setRed(I)V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->rgb:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    .line 159
    aget v2, v0, v1

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {p1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 160
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateHslAndHsv(I)V

    .line 161
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update()V

    .line 162
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_0
    return-void
.end method

.method public setRingColors([I)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->ringColors:[I

    .line 349
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->postInvalidate()V

    return-void
.end method

.method public setSaturation(F)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 200
    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p1

    .line 201
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 202
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateRgb(I)V

    .line 203
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update()V

    .line 204
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock(I)I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    :cond_0
    return-void
.end method

.method toggleToneLock()V
    .locals 3

    .line 337
    sget-boolean v0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock:Z

    .line 339
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->invalidate()V

    .line 341
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREF_COLOR_TONE_LOCK"

    .line 343
    sget-boolean v2, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public toneLock(I)I
    .locals 1

    .line 308
    sget-boolean v0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock:Z

    if-nez v0, :cond_0

    return p1

    .line 309
    :cond_0
    sget v0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->refColor:I

    invoke-static {v0, p1}, Lcom/infinite/core/color/ColorUtilsNative;->getToneLockedColor(II)I

    move-result p1

    return p1
.end method

.method public update()V
    .locals 0

    .line 363
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updatePaints()V

    .line 364
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->postInvalidate()V

    return-void
.end method

.method public update(I)V
    .locals 2

    .line 354
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateHslAndHsv(I)V

    .line 355
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateRgb(I)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setGamma(I)V

    .line 357
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updatePaints()V

    .line 358
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->postInvalidate()V

    return-void
.end method

.method protected abstract updatePaints()V
.end method

.method protected updateToneLock()V
    .locals 6

    .line 314
    sget-boolean v0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock:Z

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    .line 317
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->toneLock(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    new-array v2, v0, [F

    .line 322
    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 323
    iget-object v3, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsv:[F

    const/4 v4, 0x1

    aget v5, v2, v4

    aput v5, v3, v4

    const/4 v5, 0x2

    aget v2, v2, v5

    .line 324
    aput v2, v3, v5

    new-array v0, v0, [F

    .line 327
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    .line 328
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColorPickerView;->hsl:[F

    aget v3, v0, v4

    aput v3, v2, v4

    aget v0, v0, v5

    .line 329
    aput v0, v2, v5

    .line 331
    invoke-direct {p0, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->updateRgb(I)V

    :cond_1
    return-void
.end method

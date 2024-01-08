.class public Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "ColorWheelViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;,
        Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;,
        Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$ColorDragView;,
        Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSpan;,
        Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSection;,
        Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteCollectionViewControllerDelegate;,
        Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColorViewHolder;,
        Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;
    }
.end annotation


# static fields
.field private static final COLOR_MODE_CMYK:I = 0x3

.field private static final COLOR_MODE_HSB:I = 0x0

.field private static final COLOR_MODE_LAB:I = 0x2

.field private static final COLOR_MODE_RGB:I = 0x1

.field private static colorMode:I

.field private static floatSwatchListener:Landroid/view/View$OnClickListener;

.field private static floatWheelListener:Landroid/view/View$OnClickListener;

.field private static prevColor:I


# instance fields
.field private binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

.field private cachedView:Landroid/view/View;

.field private changingBackgroundColor:Z

.field private cmyk:[F

.field private colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

.field private considerLayerMask:Z

.field private floatColorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

.field private hsb:[F

.field private ignoreSlider:Ljava/lang/Object;

.field private lab:[F

.field private palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

.field private paletteAdapter:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;

.field private paletteViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 114
    iput-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    new-array v1, v1, [F

    .line 115
    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 116
    iput-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    .line 123
    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setHsbB(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setLabL(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setLabA(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setLabB(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setCmykC(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setCmykM(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setCmykY(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setCmykK(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)Lcom/brakefield/infinitestudio/color/ColorPickerView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->floatColorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/infinitestudio/color/ColorPickerView;)Lcom/brakefield/infinitestudio/color/ColorPickerView;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->floatColorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Z)Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getTwoFingerListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Z)Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$702(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setHsbH(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setHsbS(I)V

    return-void
.end method

.method private getBrightnessColors()[I
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 959
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v4, 0x1

    aget v5, v2, v4

    aput v5, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v5, v1, v6

    new-array v0, v0, [F

    .line 960
    aget v5, v2, v3

    aput v5, v0, v3

    aget v2, v2, v4

    aput v2, v0, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v6

    .line 962
    invoke-static {v1}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromHsb([F)I

    move-result v1

    .line 963
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromHsb([F)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private getCmykC()I
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCmykCColors()[I
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1342
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v3, 0x1

    aget v4, v1, v3

    aput v4, v0, v3

    const/4 v3, 0x2

    aget v4, v1, v3

    aput v4, v0, v3

    const/4 v3, 0x3

    aget v1, v1, v3

    aput v1, v0, v3

    new-array v1, v3, [I

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aput v5, v0, v2

    .line 1346
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromCmyk([F)I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getCmykK()I
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCmykKColors()[I
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1372
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    aput v4, v0, v3

    const/4 v3, 0x2

    aget v1, v1, v3

    aput v1, v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x3

    aput v1, v0, v3

    new-array v1, v3, [I

    :goto_0
    if-ge v2, v3, :cond_0

    int-to-float v4, v2

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    aput v4, v0, v3

    .line 1376
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromCmyk([F)I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getCmykM()I
    .locals 2

    .line 1211
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCmykMColors()[I
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1352
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v3, 0x2

    aget v5, v1, v3

    aput v5, v0, v3

    const/4 v3, 0x3

    aget v1, v1, v3

    aput v1, v0, v3

    new-array v1, v3, [I

    :goto_0
    if-ge v2, v3, :cond_0

    int-to-float v5, v2

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aput v5, v0, v4

    .line 1356
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromCmyk([F)I

    move-result v5

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getCmykY()I
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCmykYColors()[I
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1362
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    aput v4, v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v3, 0x3

    aget v1, v1, v3

    aput v1, v0, v3

    new-array v1, v3, [I

    :goto_0
    if-ge v2, v3, :cond_0

    int-to-float v5, v2

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aput v5, v0, v4

    .line 1366
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromCmyk([F)I

    move-result v5

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getHsbB()I
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getHsbH()I
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getHsbS()I
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getHueColors()[I
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 940
    fill-array-data v0, :array_0

    const/4 v1, 0x7

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    aput v5, v0, v3

    .line 944
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromHsb([F)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getLabA()I
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x43000000    # 128.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getLabAColors()[I
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 1304
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v4, 0x2

    aget v2, v2, v4

    aput v2, v1, v4

    new-array v2, v0, [I

    :goto_0
    if-ge v3, v0, :cond_0

    int-to-float v4, v3

    const/high16 v6, 0x43800000    # 256.0f

    mul-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    const/high16 v6, -0x3d000000    # -128.0f

    add-float/2addr v4, v6

    aput v4, v1, v5

    .line 1308
    invoke-static {v1}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromLab([F)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getLabB()I
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x43000000    # 128.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getLabBColors()[I
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 1314
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    aput v2, v1, v4

    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v2, v1, v4

    new-array v2, v0, [I

    :goto_0
    if-ge v3, v0, :cond_0

    int-to-float v5, v3

    const/high16 v6, 0x43800000    # 256.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/high16 v6, -0x3d000000    # -128.0f

    add-float/2addr v5, v6

    aput v5, v1, v4

    .line 1318
    invoke-static {v1}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromLab([F)I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getLabL()I
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getLabLColors()[I
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1294
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    const/4 v4, 0x1

    aget v5, v2, v4

    aput v5, v1, v4

    const/4 v4, 0x2

    aget v2, v2, v4

    aput v2, v1, v4

    new-array v2, v0, [I

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    aput v5, v1, v3

    .line 1298
    invoke-static {v1}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromLab([F)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getSaturationColors()[I
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 950
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v1, v5

    const/4 v4, 0x2

    aget v6, v2, v4

    aput v6, v1, v4

    new-array v0, v0, [F

    .line 951
    aget v6, v2, v3

    aput v6, v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v5

    aget v2, v2, v4

    aput v2, v0, v4

    .line 953
    invoke-static {v1}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromHsb([F)I

    move-result v1

    .line 954
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromHsb([F)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0
.end method

.method private getTwoFingerListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Z)Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;
    .locals 7

    .line 519
    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ZLcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V

    return-object v6
.end method

.method static synthetic lambda$getView$0(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method static synthetic lambda$setupEyedropperSettings$55(F)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x42c60000    # 99.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    add-int/lit8 p0, p0, 0x1

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setupView$14(ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 337
    invoke-static {v0, p0}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 338
    sput-object p1, Lcom/brakefield/infinitestudio/sketchbook/tools/Eyedropper;->listener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    if-eqz p2, :cond_0

    .line 339
    invoke-interface {p2, p3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setupView$22(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;Landroid/widget/SeekBar;FZ)V
    .locals 0

    .line 440
    invoke-interface {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;->onChanged()V

    return-void
.end method

.method private openPaletteSelector(Landroid/app/Activity;)V
    .locals 3

    .line 464
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->listener:Lcom/brakefield/infinitestudio/activities/PalettesActivity$OnPaletteSelectedListener;

    .line 512
    new-instance v0, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserSession()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;-><init>(J)V

    sput-object v0, Lcom/brakefield/infinitestudio/activities/PalettesActivity;->session:Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioSession;

    .line 514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/brakefield/infinitestudio/activities/PalettesActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setCmykC(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1185
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1186
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromCmyk([F)I

    move-result p1

    .line 1187
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setCmykK(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1203
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1204
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromCmyk([F)I

    move-result p1

    .line 1205
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setCmykM(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1191
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1192
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromCmyk([F)I

    move-result p1

    .line 1193
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setCmykY(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 1197
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1198
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromCmyk([F)I

    move-result p1

    .line 1199
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setHsbB(I)V
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 914
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromHsb([F)I

    move-result p1

    .line 915
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setHsbH(I)V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    int-to-float p1, p1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p1, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 904
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromHsb([F)I

    move-result p1

    .line 905
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setHsbS(I)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 909
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromHsb([F)I

    move-result p1

    .line 910
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setLabA(I)V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    add-int/lit8 p1, p1, -0x80

    int-to-float p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1059
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromLab([F)I

    move-result p1

    .line 1060
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setLabB(I)V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    add-int/lit8 p1, p1, -0x80

    int-to-float p1, p1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1064
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromLab([F)I

    move-result p1

    .line 1065
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setLabL(I)V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    const/4 v1, 0x0

    int-to-float p1, p1

    aput p1, v0, v1

    .line 1054
    invoke-static {v0}, Lcom/infinite/core/color/ColorUtilsNative;->getColorFromLab([F)I

    move-result p1

    .line 1055
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method private setupColorHexadecimal(Landroid/app/Activity;)V
    .locals 2

    .line 1408
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->hexadecimalValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    .line 1409
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1410
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupColorModeCmykSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 7

    .line 1090
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersCmyk:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    .line 1092
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1093
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1094
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1095
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1097
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$16;

    invoke-direct {v3, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$16;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1113
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$17;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$17;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1129
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$18;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1145
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$19;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$19;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    invoke-static {p1, v1, p2, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1163
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda47;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda48;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda49;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda50;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupColorModeHsbSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 7

    .line 824
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersHsb:Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;

    .line 826
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 827
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 828
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 830
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    const/16 v2, 0x168

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMax(I)V

    .line 831
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$10;

    invoke-direct {v3, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$10;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 847
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getHueColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 848
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$11;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$11;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 866
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getSaturationColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 867
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$12;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$12;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    invoke-static {p1, v1, p2, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 885
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getBrightnessColors()[I

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 886
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupColorModeLabSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 7

    .line 971
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersLab:Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    .line 974
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 975
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 976
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 978
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$13;

    invoke-direct {v3, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$13;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 994
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$14;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$14;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1012
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMiddlePivot(Z)V

    .line 1015
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$15;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$15;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    invoke-static {p1, v1, p2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1031
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMiddlePivot(Z)V

    .line 1034
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMax(I)V

    .line 1048
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMax(I)V

    .line 1049
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMax(I)V

    return-void
.end method

.method private setupColorModeRgbSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 7

    .line 743
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersRgb:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    .line 745
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 746
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 747
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 749
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$7;

    invoke-direct {v3, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$7;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v3}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 765
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$8;

    invoke-direct {v5, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$8;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    invoke-static {p1, v1, v2, v4, v5}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 783
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$9;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$9;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    invoke-static {p1, v1, p2, v4, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 801
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object p2, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMax(I)V

    .line 817
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMax(I)V

    .line 818
    iget-object p1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setMax(I)V

    return-void
.end method

.method private setupColorModeSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 735
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupColorModeRgbSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 736
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupColorModeHsbSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 737
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupColorModeLabSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 738
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupColorModeCmykSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    return-void
.end method

.method private setupColorModeTabs(Landroid/app/Activity;)V
    .locals 1

    .line 692
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->hsbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 693
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->rgbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 694
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->labTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 695
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->cmykTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 697
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->hsbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->rgbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda22;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->labTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda33;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->cmykTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda44;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeTabs()V

    return-void
.end method

.method private setupEyedropperSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 3

    .line 1422
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->eyedropperSampleSizeSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    .line 1424
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda16;-><init>()V

    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$20;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$20;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;)V

    invoke-static {p1, v0, p2, v1, v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1444
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEyedropperSampleSize()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setProgress(I)V

    .line 1445
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getEyedropperSampleSize()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%d px"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    const/16 p1, 0x63

    .line 1446
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setMax(I)V

    return-void
.end method

.method private updateCmyk(I)V
    .locals 3

    .line 1221
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersCmyk:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    .line 1223
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 1226
    :cond_0
    invoke-static {p1}, Lcom/infinite/core/color/ColorUtilsNative;->getCmykFromColor(I)[F

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cmyk:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateColorHexadecimal()V
    .locals 2

    .line 1414
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1415
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1416
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/SettingsColorBinding;->hexadecimalValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateColorModeCmykSliders()V
    .locals 3

    .line 1383
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersCmyk:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    .line 1385
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_0

    .line 1386
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getCmykC()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1387
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getCmykCColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    .line 1390
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getCmykM()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1391
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getCmykMColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1393
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_2

    .line 1394
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getCmykY()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1395
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getCmykYColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1397
    :cond_2
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_3

    .line 1398
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getCmykK()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1399
    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getCmykKColors()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    :cond_3
    return-void
.end method

.method private updateColorModeHsbSliders()V
    .locals 3

    .line 1256
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersHsb:Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;

    .line 1258
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_0

    .line 1259
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getHsbH()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1260
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getHueColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1263
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    .line 1264
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getHsbS()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1265
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getSaturationColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1268
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_2

    .line 1269
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getHsbB()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1270
    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getBrightnessColors()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    :cond_2
    return-void
.end method

.method private updateColorModeLabSliders()V
    .locals 3

    .line 1325
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersLab:Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    .line 1327
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_0

    .line 1328
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getLabL()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1329
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getLabLColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1331
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    .line 1332
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getLabA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1333
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getLabAColors()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1335
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_2

    .line 1336
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getLabB()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1337
    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getLabBColors()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    :cond_2
    return-void
.end method

.method private updateColorModeRgbSliders()V
    .locals 4

    .line 1276
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersRgb:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    .line 1278
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_0

    .line 1279
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getRed()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1280
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getStartRed()I

    move-result v2

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getEndRed()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1283
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    .line 1284
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getGreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1285
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getStartGreen()I

    move-result v2

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getEndGreen()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    .line 1287
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_2

    .line 1288
    iget-object v1, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getBlue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1289
    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getStartBlue()I

    move-result v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getEndBlue()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/GradientSeek;->update([I)V

    :cond_2
    return-void
.end method

.method private updateColorModeSliders()V
    .locals 2

    .line 1246
    sget v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1250
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeCmykSliders()V

    goto :goto_0

    .line 1249
    :cond_1
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeLabSliders()V

    goto :goto_0

    .line 1248
    :cond_2
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeRgbSliders()V

    goto :goto_0

    .line 1247
    :cond_3
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeHsbSliders()V

    :goto_0
    return-void
.end method

.method private updateColorModeSlidersVisibility()V
    .locals 5

    .line 1235
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSettingsSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->beginDelayedFadeIn(Landroid/view/ViewGroup;)V

    .line 1236
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersHsb:Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersRgb:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersLab:Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersCmyk:Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;

    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1241
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeSliders()V

    return-void
.end method

.method private updateColorModeTabs()V
    .locals 5

    .line 722
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getActiveColor()I

    move-result v0

    .line 723
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v1

    .line 725
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/SettingsColorBinding;->hsbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    sget v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 726
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/SettingsColorBinding;->rgbTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    sget v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 727
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/SettingsColorBinding;->labTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    sget v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 728
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/SettingsColorBinding;->cmykTab:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    sget v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setTextColor(I)V

    .line 730
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeSlidersVisibility()V

    return-void
.end method

.method public static updateFloatingSwatch()V
    .locals 2

    .line 101
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->floatSwatchListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static updateFloatingWheel()V
    .locals 2

    .line 105
    sget-object v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->floatWheelListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateHsb(I)V
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersHsb:Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;

    .line 930
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 933
    :cond_0
    invoke-static {p1}, Lcom/infinite/core/color/ColorUtilsNative;->getHsbFromColor(I)[F

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 935
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->hsb:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateLab(I)V
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/SettingsColorBinding;->colorSlidersLab:Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;

    .line 1080
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v2, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->ignoreSlider:Ljava/lang/Object;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 1083
    :cond_0
    invoke-static {p1}, Lcom/infinite/core/color/ColorUtilsNative;->getLabFromColor(I)[F

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lab:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/app/Activity;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;
    .locals 11

    move-object v9, p0

    move-object/from16 v2, p5

    .line 131
    iget-object v0, v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cachedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/brakefield/infinitestudio/utils/Debugger;->startTracking()V

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    move-result-object v0

    iput-object v0, v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    .line 134
    invoke-virtual {v0}, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iput-object v0, v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cachedView:Landroid/view/View;

    const-string v0, "LOAD COLOR VIEW CONTROLLER"

    .line 135
    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->stopTracking(Ljava/lang/String;)J

    .line 138
    :cond_0
    iget-object v10, v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->cachedView:Landroid/view/View;

    .line 140
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    check-cast v0, Landroid/view/ViewGroup;

    .line 143
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    :cond_1
    iget-object v0, v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->eyedropper:Landroid/widget/ImageView;

    iget-object v1, v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->eyedropper:Landroid/widget/ImageView;

    const/16 v3, 0xb4

    invoke-static {v3}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v3

    move-object v4, p1

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/brakefield/painter/ui/SimpleUI;->bind(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageView;Lcom/brakefield/painter/ui/DockableElements$DockableElement;)V

    .line 147
    new-instance v5, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda51;

    invoke-direct {v5, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda51;-><init>(Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-static {p2}, Lcom/brakefield/infinitestudio/color/PaintManager;->getOpaqueColor(I)I

    move-result v6

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move-object v3, p3

    move-object v4, v5

    move v5, v6

    move-object v6, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Landroid/view/View$OnClickListener;ILcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;IZ)V

    return-object v10
.end method

.method synthetic lambda$setupColorHexadecimal$53$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Ljava/lang/Integer;)V
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method synthetic lambda$setupColorHexadecimal$54$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    .line 1410
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda46;

    invoke-direct {p3, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda46;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    const v0, 0x7f1201f7

    const/4 v1, 0x6

    invoke-static {p1, v0, p2, v1, p3}, Lcom/brakefield/infinitestudio/Dialogs;->showHexadecimalInputNumberDialog(Landroid/content/Context;ILjava/lang/String;ILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeCmykSliders$45$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 1166
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1167
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setCmykC(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeCmykSliders$46$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Landroid/view/View;)V
    .locals 1

    .line 1165
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->cyanSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda41;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    const p2, 0x7f1200f4

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeCmykSliders$47$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 1170
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1171
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setCmykM(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeCmykSliders$48$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Landroid/view/View;)V
    .locals 1

    .line 1169
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->magentaSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    const p2, 0x7f120260

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeCmykSliders$49$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 1174
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1175
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setCmykY(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeCmykSliders$50$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Landroid/view/View;)V
    .locals 1

    .line 1173
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->yellowSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    const p2, 0x7f120b3d

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeCmykSliders$51$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 1178
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1179
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setCmykK(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeCmykSliders$52$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;Landroid/view/View;)V
    .locals 1

    .line 1177
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;->blackSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda43;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsCmykXBinding;)V

    const p2, 0x7f12006b

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeHsbSliders$33$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 889
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 890
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setHue(F)V

    return-void
.end method

.method synthetic lambda$setupColorModeHsbSliders$34$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;Landroid/view/View;)V
    .locals 1

    .line 888
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->hueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    const p2, 0x7f120201

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeHsbSliders$35$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 893
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 894
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setSaturation(F)V

    return-void
.end method

.method synthetic lambda$setupColorModeHsbSliders$36$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;Landroid/view/View;)V
    .locals 1

    .line 892
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->saturationSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    const p2, 0x7f120a5f

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeHsbSliders$37$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 897
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 898
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setBrightness(F)V

    return-void
.end method

.method synthetic lambda$setupColorModeHsbSliders$38$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;Landroid/view/View;)V
    .locals 1

    .line 896
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;->brightnessSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsHsbXBinding;)V

    const p2, 0x7f120079

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeLabSliders$39$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 1035
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1036
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setLabL(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeLabSliders$40$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;Landroid/view/View;)V
    .locals 1

    .line 1034
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->luminositySlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda52;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda52;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    const p2, 0x7f120251

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeLabSliders$41$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 1039
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1040
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setLabA(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeLabSliders$42$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;Landroid/view/View;)V
    .locals 1

    .line 1038
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labASlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda24;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    const p2, 0x7f120af8

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeLabSliders$43$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 1043
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 1044
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setLabB(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeLabSliders$44$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;Landroid/view/View;)V
    .locals 1

    .line 1042
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;->labBSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda26;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsLabXBinding;)V

    const p2, 0x7f120ae5

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeRgbSliders$27$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 804
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 805
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setRed(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeRgbSliders$28$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Landroid/view/View;)V
    .locals 1

    .line 803
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->redSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda25;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    const p2, 0x7f120a3f

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeRgbSliders$29$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 808
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 809
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setGreen(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeRgbSliders$30$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Landroid/view/View;)V
    .locals 1

    .line 807
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->greenSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    const p2, 0x7f1201de

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeRgbSliders$31$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Ljava/lang/Integer;)V
    .locals 1

    .line 812
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/GradientSeek;->setProgress(I)V

    .line 813
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setBlue(I)V

    return-void
.end method

.method synthetic lambda$setupColorModeRgbSliders$32$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Landroid/view/View;)V
    .locals 1

    .line 811
    iget-object p3, p2, Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;->blueSlider:Lcom/brakefield/infinitestudio/color/GradientSeek;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/color/GradientSeek;->getProgress()I

    move-result p3

    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda45;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V

    const p2, 0x7f120072

    invoke-static {p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/Dialogs;->showNumberInputDialog(Landroid/content/Context;IILcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupColorModeTabs$23$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x0

    .line 698
    sput p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    .line 699
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeTabs()V

    return-void
.end method

.method synthetic lambda$setupColorModeTabs$24$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    .line 703
    sput p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    .line 704
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeTabs()V

    return-void
.end method

.method synthetic lambda$setupColorModeTabs$25$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x2

    .line 708
    sput p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    .line 709
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeTabs()V

    return-void
.end method

.method synthetic lambda$setupColorModeTabs$26$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x3

    .line 713
    sput p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorMode:I

    .line 714
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeTabs()V

    return-void
.end method

.method synthetic lambda$setupView$1$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->previousColor:Lcom/brakefield/infinitestudio/color/ColorDotButton;

    iget v0, v0, Lcom/brakefield/infinitestudio/color/ColorDotButton;->color:I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

.method synthetic lambda$setupView$10$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda23;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Ljava/lang/String;)V

    const v2, 0x7f12099b

    invoke-static {p1, v2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupView$11$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->clearColors()V

    .line 320
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 321
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const v1, 0x7f1209d0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(I)V

    return-void
.end method

.method synthetic lambda$setupView$12$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 6

    .line 282
    new-instance v0, Lcom/brakefield/infinitestudio/CustomDialog;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a60

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda53;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda53;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;)V

    const v5, 0x7f08044c

    invoke-direct {v2, v3, v5, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v2, Lcom/brakefield/infinitestudio/MenuOption;

    const v3, 0x7f120a8b

    invoke-static {v3}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda54;

    invoke-direct {v4, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda54;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    const p2, 0x7f0801a3

    invoke-direct {v2, v3, p2, v4}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance p2, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f1209bd

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda55;

    invoke-direct {v3, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda55;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;)V

    const v4, 0x7f0801e1

    invoke-direct {p2, v2, v4, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance p2, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f120a47

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;)V

    const v4, 0x7f080439

    invoke-direct {p2, v2, v4, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance p2, Lcom/brakefield/infinitestudio/MenuOption;

    const v2, 0x7f1200b3

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    const v4, 0x7f080103

    invoke-direct {p2, v2, v4, v3}, Lcom/brakefield/infinitestudio/MenuOption;-><init>(Ljava/lang/String;ILcom/brakefield/infinitestudio/MenuOption$OnSelectedListener;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-virtual {v0, p1, p3, v1}, Lcom/brakefield/infinitestudio/CustomDialog;->showDropDown(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)Landroid/widget/PopupWindow;

    return-void
.end method

.method synthetic lambda$setupView$13$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->openPaletteSelector(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$setupView$15$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    .line 358
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeSliders()V

    return-void
.end method

.method synthetic lambda$setupView$16$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    .line 351
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    .line 352
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 354
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsToggle:Landroid/widget/ImageView;

    const p2, 0x7f08011c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda42;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda42;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 362
    :cond_0
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setGone(Landroid/view/View;)V

    .line 363
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/animation/ViewAnimation;->setVisible(Landroid/view/View;)V

    .line 364
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsToggle:Landroid/widget/ImageView;

    const p2, 0x7f08046e

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setupView$17$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;)V
    .locals 2

    .line 375
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->addColor(II)V

    .line 376
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    return-void
.end method

.method synthetic lambda$setupView$18$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 380
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 381
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    const-string p2, "name"

    const-string v0, "color"

    .line 385
    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const p2, 0x3dcccccd    # 0.1f

    .line 386
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return v3
.end method

.method synthetic lambda$setupView$19$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    .line 392
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2

    .line 394
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setAlpha(F)V

    :cond_2
    return p2
.end method

.method synthetic lambda$setupView$2$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;IIZ)V
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    .line 198
    invoke-interface {p1, p3, p4}, Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;->colorChanged(IZ)V

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->compareColor:Lcom/brakefield/infinitestudio/color/ColorPickerButton;

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->setColor(I)V

    if-eqz p4, :cond_2

    if-eq p3, p2, :cond_1

    .line 201
    sput p2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->prevColor:I

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setColorFilter(I)V

    .line 203
    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateHsb(I)V

    .line 204
    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateLab(I)V

    .line 205
    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateCmyk(I)V

    .line 206
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorModeSliders()V

    .line 207
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateColorHexadecimal()V

    .line 208
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    :cond_2
    return-void
.end method

.method synthetic lambda$setupView$20$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 0

    .line 414
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatch:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getFloatView(Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method synthetic lambda$setupView$21$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V
    .locals 1

    .line 421
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->floatColorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->getFloatView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 423
    check-cast p1, Lcom/brakefield/infinitestudio/color/ColorPickerView;

    .line 424
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result p2

    .line 425
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->getColor()I

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupView$3$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;Lcom/brakefield/infinitestudio/gestures/LongpressGesture;Landroid/graphics/PointF;)V
    .locals 3

    .line 259
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchCollection:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 261
    invoke-virtual {p2, p3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 262
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchCollection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->colorPointerAt(I)J

    move-result-wide v0

    .line 264
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$ColorDragView;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$ColorDragView;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;->setTargetDragView(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)V

    const-string p1, "name"

    const-string v0, "color"

    .line 266
    invoke-static {p1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1, v0, v2, p3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method synthetic lambda$setupView$4$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Ljava/lang/String;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->setName(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getColorPalettesPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->save(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setupView$5$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;)V
    .locals 3

    .line 0
    const v0, 0x7f1209d0

    .line 286
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    const v2, 0x7f12099b

    invoke-static {p1, v2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupView$6$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/String;)V
    .locals 3

    .line 294
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".clrs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v1, v0, p3}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->saveAs(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedDocumentsDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "Palettes"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$3;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    const-string p2, "application/com.brakefield.painter.clrs"

    invoke-static {p1, v0, p2, p3, v1}, Lcom/brakefield/painter/ExportManager;->saveFileToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/brakefield/painter/ExportManager$Callback;)V

    return-void
.end method

.method synthetic lambda$setupView$7$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    const p2, 0x7f12099b

    invoke-static {p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/Dialogs;->showTextInputDialog(Landroid/content/Context;ILjava/lang/String;Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method synthetic lambda$setupView$8$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->openPaletteSelector(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$setupView$9$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->setName(Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListener(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setOnColorChangeListener(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V

    return-void
.end method

.method public setupView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Landroid/view/View$OnClickListener;ILcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;IZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 169
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v9

    invoke-static {v9}, Lcom/brakefield/painter/PainterLib;->isLayerMask(I)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_1

    if-eqz v7, :cond_0

    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    :cond_0
    move v9, v10

    goto :goto_0

    :cond_1
    move v9, v11

    :goto_0
    iput-boolean v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->considerLayerMask:Z

    if-ne v7, v10, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    move v9, v11

    .line 170
    :goto_1
    iput-boolean v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->changingBackgroundColor:Z

    .line 172
    new-instance v9, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    if-ne v7, v10, :cond_3

    move v12, v10

    goto :goto_2

    :cond_3
    move v12, v11

    :goto_2
    invoke-static {v12}, Lcom/brakefield/painter/PainterLib;->getColorPalette(Z)J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;-><init>(J)V

    iput-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    .line 174
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorWheel:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 175
    invoke-static/range {p1 .. p1}, Lcom/brakefield/infinitestudio/color/ColorPickerManager;->getColorPickerView(Landroid/content/Context;)Lcom/brakefield/infinitestudio/color/ColorPickerView;

    move-result-object v9

    iput-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    .line 176
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorWheel:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-direct/range {p0 .. p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupColorModeSliders(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 179
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupColorModeTabs(Landroid/app/Activity;)V

    .line 180
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupColorHexadecimal(Landroid/app/Activity;)V

    .line 181
    invoke-direct/range {p0 .. p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->setupEyedropperSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 183
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-static {v9}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 184
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v9, v11}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setShadow(Z)V

    .line 186
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v9, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setPreviousColor(I)V

    .line 189
    sget v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->prevColor:I

    const/16 v12, 0x8

    if-eqz v9, :cond_4

    .line 190
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->previousColor:Lcom/brakefield/infinitestudio/color/ColorDotButton;

    sget v13, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->prevColor:I

    invoke-virtual {v9, v13}, Lcom/brakefield/infinitestudio/color/ColorDotButton;->setColor(I)V

    .line 191
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->previousColor:Lcom/brakefield/infinitestudio/color/ColorDotButton;

    invoke-virtual {v9, v11}, Lcom/brakefield/infinitestudio/color/ColorDotButton;->setVisibility(I)V

    goto :goto_3

    .line 192
    :cond_4
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->previousColor:Lcom/brakefield/infinitestudio/color/ColorDotButton;

    invoke-virtual {v9, v12}, Lcom/brakefield/infinitestudio/color/ColorDotButton;->setVisibility(I)V

    .line 194
    :goto_3
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->previousColor:Lcom/brakefield/infinitestudio/color/ColorDotButton;

    invoke-static {v9}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 195
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->previousColor:Lcom/brakefield/infinitestudio/color/ColorDotButton;

    new-instance v13, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda27;

    invoke-direct {v13, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda27;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    invoke-virtual {v9, v13}, Lcom/brakefield/infinitestudio/color/ColorDotButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    new-instance v13, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;

    invoke-direct {v13, v0, v3, v5}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V

    invoke-virtual {v9, v13}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setOnColorChangeListener(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V

    .line 212
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v9, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    .line 213
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->compareColor:Lcom/brakefield/infinitestudio/color/ColorPickerButton;

    invoke-virtual {v9, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->setColor(I)V

    if-eqz p8, :cond_5

    .line 215
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getTwoFingerListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Z)Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->setOnTwoFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;)V

    .line 217
    :cond_5
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    if-nez v9, :cond_6

    .line 219
    new-instance v9, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v9}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    .line 221
    new-instance v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;

    invoke-direct {v9, v0, v8}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/content/res/Resources;)V

    .line 240
    new-instance v10, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;

    invoke-direct {v10, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    iput-object v10, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteAdapter:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;

    .line 248
    new-instance v10, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$2;

    iget-object v13, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v13, v13, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchCollection:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteAdapter:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;

    invoke-direct {v10, v0, v13, v14, v9}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$2;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 254
    iget-object v13, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v13, v13, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchCollection:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v10}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 256
    iget-object v13, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object v14, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v14, v14, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchCollection:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v15, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->paletteAdapter:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSectionedRecyclerViewAdapter;

    invoke-virtual {v13, v14, v15, v9}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 258
    iget-object v9, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v9, v9, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchCollectionGestures:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    new-instance v13, Lcom/brakefield/infinitestudio/gestures/LongpressGesture$Single;

    new-instance v14, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda32;

    invoke-direct {v14, v0, v10}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda32;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;)V

    invoke-direct {v13, v8, v14}, Lcom/brakefield/infinitestudio/gestures/LongpressGesture$Single;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressGesture$Listener;)V

    invoke-virtual {v9, v13}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V

    goto :goto_4

    .line 269
    :cond_6
    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 271
    :goto_4
    iget-object v8, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v8, v8, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->options:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 272
    iget-object v8, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v8, v8, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->options:Landroid/widget/ImageView;

    new-instance v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda34;

    invoke-direct {v9, v0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda34;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v8, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v8, v8, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v8}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 330
    iget-object v8, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v8, v8, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v9, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda35;

    invoke-direct {v9, v0, v1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda35;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;)V

    invoke-virtual {v8, v9}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->swatchTitle:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object v8, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {v8}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/brakefield/infinitestudio/Strings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->eyedropper:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 335
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->eyedropper:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 336
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->eyedropper:Landroid/widget/ImageView;

    new-instance v8, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;

    invoke-direct {v8, v7, v3, v4}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;-><init>(ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettings:Lcom/brakefield/painter/databinding/SettingsColorBinding;

    invoke-virtual {v1}, Lcom/brakefield/painter/databinding/SettingsColorBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 344
    iget-object v3, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorWheel:Landroid/widget/FrameLayout;

    .line 346
    iget-object v7, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v7, v7, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsToggle:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 347
    iget-object v7, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v7, v7, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsToggle:Landroid/widget/ImageView;

    new-instance v8, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda37;

    invoke-direct {v8, v0, v1, v3}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda37;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v3, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsToggle:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 369
    iget-object v3, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->options:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 371
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsToggle:Landroid/widget/ImageView;

    const v3, 0x7f08011c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 372
    :cond_7
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->colorSettingsToggle:Landroid/widget/ImageView;

    const v3, 0x7f08046e

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    :goto_5
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda38;

    invoke-direct {v3, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda38;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda39;

    invoke-direct {v3, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda39;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->addColor:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    new-instance v3, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda40;

    invoke-direct {v3, v0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda40;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;)V

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 413
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda28;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->floatSwatchListener:Landroid/view/View$OnClickListener;

    .line 420
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda29;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/ui/SimpleUI;)V

    sput-object v1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->floatWheelListener:Landroid/view/View$OnClickListener;

    .line 429
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->compareColor:Lcom/brakefield/infinitestudio/color/ColorPickerButton;

    invoke-virtual {v1, v5}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->setPreviousColor(I)V

    .line 430
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->compareColor:Lcom/brakefield/infinitestudio/color/ColorPickerButton;

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_8

    .line 435
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->opacitySetting:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 437
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/4 v3, 0x0

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda30;

    invoke-direct {v4, v6}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda30;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;)V

    const/4 v5, 0x0

    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;

    invoke-direct {v7, v0, v6}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$4;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$OnOpacityChangeListener;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 456
    invoke-virtual/range {p2 .. p2}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v11

    move-object v2, v1

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    .line 437
    invoke-static/range {v2 .. v10}, Lcom/brakefield/infinitestudio/ui/UIManager;->setupSlider(Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;Lcom/brakefield/infinitestudio/ui/UIManager$Value;Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;FFLandroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_6

    .line 459
    :cond_8
    iget-object v1, v0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->opacitySetting:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public update(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->binding:Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ColorWheelViewControllerXBinding;->compareColor:Lcom/brakefield/infinitestudio/color/ColorPickerButton;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerButton;->setPreviousColor(I)V

    .line 154
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->colorPicker:Lcom/brakefield/infinitestudio/color/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/color/ColorPickerView;->update(I)V

    return-void
.end method

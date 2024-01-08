.class public final Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;,
        Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field private static final BLACK_MAX_LIGHTNESS:F = 0.05f

.field private static final COMPONENT_BLUE:I = -0x1

.field private static final COMPONENT_GREEN:I = -0x2

.field private static final COMPONENT_RED:I = -0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITE_MIN_LIGHTNESS:F = 0.95f


# instance fields
.field private final mColorPopulations:Landroid/util/SparseIntArray;

.field private final mColors:[I

.field private final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 383
    new-instance v0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$1;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/brakefield/infinitestudio/color/ColorHistogram;I)V
    .locals 8

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 44
    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mTempHsl:[F

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-lt p2, v0, :cond_5

    .line 79
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/ColorHistogram;->getNumberOfColors()I

    move-result v1

    .line 80
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/ColorHistogram;->getColors()[I

    move-result-object v2

    .line 81
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/ColorHistogram;->getColorCounts()[I

    move-result-object p1

    .line 84
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    move v4, v3

    .line 85
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 86
    iget-object v5, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;

    aget v6, v2, v4

    aget v7, p1, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_0
    new-array p1, v1, [I

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColors:[I

    .line 91
    array-length p1, v2

    move v1, v3

    move v4, v1

    :goto_1
    if-ge v1, p1, :cond_2

    aget v5, v2, v1

    .line 92
    invoke-direct {p0, v5}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    iget-object v6, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColors:[I

    add-int/lit8 v7, v4, 0x1

    aput v5, v6, v4

    move v4, v7

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-gt v4, p2, :cond_3

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 99
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColors:[I

    array-length p2, p1

    :goto_2
    if-ge v3, p2, :cond_4

    aget v0, p1, v3

    .line 100
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v2, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-direct {v2, v0, v4}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    sub-int/2addr v4, v0

    .line 104
    invoke-direct {p0, v4, p2}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->quantizePixels(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    :cond_4
    return-void

    .line 77
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxColors must be 1 or greater"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "colorHistogram can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;)[I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColors:[I

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;III)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->modifySignificantOctet(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;)Landroid/util/SparseIntArray;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;I)Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;
    .locals 9

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 62
    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    move v3, v6

    .line 63
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 64
    new-instance p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;

    new-instance v0, Lcom/brakefield/infinitestudio/color/ColorHistogram;

    invoke-direct {v0, v8}, Lcom/brakefield/infinitestudio/color/ColorHistogram;-><init>([I)V

    invoke-direct {p0, v0, p1}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;-><init>(Lcom/brakefield/infinitestudio/color/ColorHistogram;I)V

    return-object p0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;

    .line 151
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->getAverageColor()Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;

    move-result-object v1

    .line 152
    invoke-static {v1}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->shouldIgnoreColor(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static isBlack([F)Z
    .locals 1

    const/4 v0, 0x2

    .line 366
    aget p0, p0, v0

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNearRedILine([F)Z
    .locals 3

    const/4 v0, 0x0

    .line 378
    aget v1, p0, v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x42140000    # 37.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    aget p0, p0, v1

    const v2, 0x3f51eb85    # 0.82f

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private static isWhite([F)Z
    .locals 1

    const/4 v0, 0x2

    .line 372
    aget p0, p0, v0

    const v0, 0x3f733333    # 0.95f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private modifySignificantOctet(III)V
    .locals 3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-gt p2, p3, :cond_2

    .line 346
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColors:[I

    aget v0, p1, p2

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 347
    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p2, p3, :cond_2

    .line 339
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mColors:[I

    aget v0, p1, p2

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    .line 340
    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private quantizePixels(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 118
    new-instance v1, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;-><init>(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0, v0, p2}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 123
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private shouldIgnoreColor(I)Z
    .locals 3

    .line 353
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0, v1, p1, v2}, Lcom/brakefield/infinitestudio/color/ColorUtils;->RGBtoHSL(III[F)V

    .line 354
    iget-object p1, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {p1}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    move-result p1

    return p1
.end method

.method private static shouldIgnoreColor(Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;)Z
    .locals 0

    .line 357
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;->getHsl()[F

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->shouldIgnoreColor([F)Z

    move-result p0

    return p0
.end method

.method private static shouldIgnoreColor([F)Z
    .locals 1

    .line 360
    invoke-static {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->isWhite([F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->isNearRedILine([F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 135
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;->splitBox()Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/color/ColorCutQuantizer$Swatch;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

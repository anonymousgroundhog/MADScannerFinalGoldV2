.class public final Lcom/brakefield/infinitestudio/color/ColorHistogram;
.super Ljava/lang/Object;
.source "ColorHistogram.java"


# instance fields
.field private final mColorCounts:[I

.field private final mColors:[I

.field private final mNumberColors:I


# direct methods
.method public constructor <init>([I)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 35
    invoke-static {p1}, Lcom/brakefield/infinitestudio/color/ColorHistogram;->countDistinctColors([I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mNumberColors:I

    .line 37
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColors:[I

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColorCounts:[I

    .line 40
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/color/ColorHistogram;->countFrequencies([I)V

    return-void
.end method

.method private static countDistinctColors([I)I
    .locals 4

    .line 61
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 63
    array-length p0, p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 67
    aget v0, p0, v0

    const/4 v1, 0x1

    move v2, v1

    .line 69
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 71
    aget v3, p0, v1

    if-eq v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private countFrequencies([I)V
    .locals 6

    .line 79
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 83
    aget v1, p1, v0

    .line 84
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColors:[I

    aput v1, v2, v0

    .line 85
    iget-object v2, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColorCounts:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    .line 86
    array-length v2, p1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    move v2, v3

    .line 91
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 92
    aget v4, p1, v2

    if-ne v4, v1, :cond_2

    .line 94
    iget-object v4, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColorCounts:[I

    aget v5, v4, v0

    add-int/2addr v5, v3

    aput v5, v4, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 99
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColors:[I

    aput v4, v1, v0

    .line 100
    iget-object v1, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColorCounts:[I

    aput v3, v1, v0

    move v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getColorCounts()[I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColorCounts:[I

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mColors:[I

    return-object v0
.end method

.method public getNumberOfColors()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/brakefield/infinitestudio/color/ColorHistogram;->mNumberColors:I

    return v0
.end method

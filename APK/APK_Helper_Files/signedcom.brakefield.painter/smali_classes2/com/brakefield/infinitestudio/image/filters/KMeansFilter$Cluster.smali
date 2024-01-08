.class public Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;
.super Ljava/lang/Object;
.source "KMeansFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cluster"
.end annotation


# instance fields
.field public blue:I

.field blues:I

.field public green:I

.field greens:I

.field id:I

.field public pixelCount:I

.field public red:I

.field reds:I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;II)V
    .locals 2

    .line 73
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->this$0:Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 p1, p3, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    .line 77
    iput p1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->red:I

    .line 78
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->green:I

    .line 79
    iput v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blue:I

    .line 80
    iput p2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->id:I

    .line 81
    invoke-virtual {p0, p3}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->addPixel(I)V

    return-void
.end method


# virtual methods
.method addPixel(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    .line 109
    iget v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    .line 110
    iget v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    .line 111
    iget v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    .line 112
    iget p1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    .line 113
    div-int/2addr v2, p1

    iput v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->red:I

    .line 114
    div-int/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->green:I

    .line 115
    div-int/2addr v1, p1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blue:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->red:I

    .line 86
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->green:I

    .line 87
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blue:I

    .line 88
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    .line 89
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    .line 90
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    .line 91
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    return-void
.end method

.method public distance(I)I
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->this$0:Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter;->colourDistance(II)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method getId()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->id:I

    return v0
.end method

.method public getRGB()I
    .locals 4

    .line 99
    iget v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    iget v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    div-int/2addr v0, v1

    .line 100
    iget v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    div-int/2addr v2, v1

    .line 101
    iget v3, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    div-int/2addr v3, v1

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public merge(Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;)V
    .locals 3

    .line 145
    iget v0, p1, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    int-to-float v1, v0

    iget v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 146
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->getRGB()I

    move-result v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->getRGB()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/brakefield/infinitestudio/color/ColorUtils;->interpolate(IIF)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 147
    iput v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->red:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 148
    iput v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->green:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 149
    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blue:I

    .line 151
    iget v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    iget v1, p1, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    .line 152
    iget v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    iget v1, p1, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    .line 153
    iget v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    iget v1, p1, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    .line 154
    iget v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    iget p1, p1, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    return-void
.end method

.method removePixel(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    .line 122
    iget v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->reds:I

    .line 123
    iget v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->greens:I

    .line 124
    iget v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blues:I

    .line 125
    iget p1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->pixelCount:I

    .line 126
    div-int/2addr v2, p1

    iput v2, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->red:I

    .line 127
    div-int/2addr v0, p1

    iput v0, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->green:I

    .line 128
    div-int/2addr v1, p1

    iput v1, p0, Lcom/brakefield/infinitestudio/image/filters/KMeansFilter$Cluster;->blue:I

    return-void
.end method

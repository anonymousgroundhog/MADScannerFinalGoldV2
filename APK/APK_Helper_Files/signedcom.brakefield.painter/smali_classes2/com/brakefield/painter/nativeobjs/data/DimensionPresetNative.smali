.class public Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;
.super Lcom/infinite/core/NativeObject;
.source "DimensionPresetNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getDPI(J)I
.end method

.method private native getHeight(J)F
.end method

.method private native getMeasurementType(J)I
.end method

.method private native getName(J)Ljava/lang/String;
.end method

.method private native getWidth(J)F
.end method

.method private native isAdvanced(J)Z
.end method


# virtual methods
.method public getDPI()I
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getDPI(J)I

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getHeight(J)F

    move-result v0

    return v0
.end method

.method public getMeasurementType()I
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getMeasurementType(J)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePointer()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->nativePointer:J

    return-wide v0
.end method

.method public getSizeText()Ljava/lang/String;
    .locals 5

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getWidth()F

    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getHeight()F

    move-result v1

    .line 23
    invoke-static {}, Ljava/text/DecimalFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/4 v4, 0x2

    .line 25
    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 26
    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 27
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    float-to-double v3, v0

    .line 29
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    float-to-double v3, v1

    .line 30
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    invoke-direct {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getMeasurementType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setType(I)V

    .line 35
    invoke-virtual {v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->abbreviation()Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " x "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getWidth(J)F

    move-result v0

    return v0
.end method

.method public isAdvanced()Z
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->isAdvanced(J)Z

    move-result v0

    return v0
.end method

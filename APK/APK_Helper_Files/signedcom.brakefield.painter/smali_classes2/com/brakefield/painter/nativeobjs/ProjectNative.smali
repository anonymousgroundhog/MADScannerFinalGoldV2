.class public Lcom/brakefield/painter/nativeobjs/ProjectNative;
.super Lcom/infinite/core/NativeObject;
.source "ProjectNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getColorProfile(J)I
.end method

.method private native getDisplayName(J)Ljava/lang/String;
.end method

.method private native getHeightMeasurement(J)J
.end method

.method private native getPaperColor(J)I
.end method

.method private native getPaperTextureName(J)Ljava/lang/String;
.end method

.method private native getTimelapseQuality(J)I
.end method

.method private native getTimelapseShowsUserNavigation(J)Z
.end method

.method private native getWidthMeasurement(J)J
.end method

.method private native hasPaperTexture(J)Z
.end method

.method private native isPaperTextureCustom(J)Z
.end method

.method private native isPaperVisible(J)Z
.end method

.method private native isTimelapseEnabled(J)Z
.end method

.method private native setChallenge(JILjava/lang/String;)V
.end method

.method private native setColorProfile(JI)V
.end method

.method private native setDisplayName(JLjava/lang/String;)V
.end method

.method private native setIsPattern(JZ)V
.end method

.method private native setName(JLjava/lang/String;)V
.end method

.method private native setPaperColor(JI)V
.end method

.method private native setPaperIsVisible(JZ)V
.end method

.method private native setPaperTexture(JLjava/lang/String;Z)V
.end method

.method private native setTimelapseDimens(JII)V
.end method

.method private native setTimelapseEnabled(JZ)V
.end method

.method private native setTimelapseQuality(JI)V
.end method

.method private native setTimelapseShowsUserNavigation(JZ)V
.end method

.method private native setUsesGammaCorrection(JZ)V
.end method

.method private native usesGammaCorrection(J)Z
.end method


# virtual methods
.method public getColorProfile()I
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getColorProfile(J)I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeightMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;
    .locals 3

    .line 31
    new-instance v0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getHeightMeasurement(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;-><init>(J)V

    return-object v0
.end method

.method public getPaperColor()I
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getPaperColor(J)I

    move-result v0

    return v0
.end method

.method public getPaperTextureName()Ljava/lang/String;
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getPaperTextureName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimelapseQuality()I
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseQuality(J)I

    move-result v0

    return v0
.end method

.method public getTimelapseShowsUserNavigation()Z
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getTimelapseShowsUserNavigation(J)Z

    move-result v0

    return v0
.end method

.method public getWidthMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;
    .locals 3

    .line 28
    new-instance v0, Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getWidthMeasurement(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;-><init>(J)V

    return-object v0
.end method

.method public hasPaperTexture()Z
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->hasPaperTexture(J)Z

    move-result v0

    return v0
.end method

.method public isPaperTextureCustom()Z
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isPaperTextureCustom(J)Z

    move-result v0

    return v0
.end method

.method public isPaperVisible()Z
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isPaperVisible(J)Z

    move-result v0

    return v0
.end method

.method public isTimelapseEnabled()Z
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->isTimelapseEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setChallenge(ILjava/lang/String;)V
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setChallenge(JILjava/lang/String;)V

    return-void
.end method

.method public setColorProfile(I)V
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setColorProfile(JI)V

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setDisplayName(JLjava/lang/String;)V

    return-void
.end method

.method public setIsPattern(Z)V
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setIsPattern(JZ)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setName(JLjava/lang/String;)V

    return-void
.end method

.method public setPaperColor(I)V
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperColor(JI)V

    return-void
.end method

.method public setPaperIsVisible(Z)V
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperIsVisible(JZ)V

    return-void
.end method

.method public setPaperTexture(Ljava/lang/String;Z)V
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPaperTexture(JLjava/lang/String;Z)V

    return-void
.end method

.method public setPixelDimensions(II)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getWidthMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getHeightMeasurement()Lcom/brakefield/painter/nativeobjs/MeasurementNative;

    move-result-object v1

    .line 36
    invoke-virtual {v0, p1}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setPixels(I)V

    .line 37
    invoke-virtual {v1, p2}, Lcom/brakefield/painter/nativeobjs/MeasurementNative;->setPixels(I)V

    return-void
.end method

.method public setTimelapseDimens(II)V
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseDimens(JII)V

    return-void
.end method

.method public setTimelapseEnabled(Z)V
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseEnabled(JZ)V

    return-void
.end method

.method public setTimelapseQuality(I)V
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseQuality(JI)V

    return-void
.end method

.method public setTimelapseShowsUserNavigation(Z)V
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setTimelapseShowsUserNavigation(JZ)V

    return-void
.end method

.method public setUsesGammaCorrection(Z)V
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setUsesGammaCorrection(JZ)V

    return-void
.end method

.method public setup(Ljava/lang/String;II)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setDisplayName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p2, p3}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setPixelDimensions(II)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setIsPattern(Z)V

    const-string p2, ""

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->setChallenge(ILjava/lang/String;)V

    return-void
.end method

.method public usesGammaCorrection()Z
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProjectNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->usesGammaCorrection(J)Z

    move-result v0

    return v0
.end method

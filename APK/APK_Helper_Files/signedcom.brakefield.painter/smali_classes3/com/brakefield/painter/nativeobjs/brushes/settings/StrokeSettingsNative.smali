.class public Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;
.super Lcom/infinite/core/NativeObject;
.source "StrokeSettingsNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getAdhesion(J)F
.end method

.method private native getBlendingMode(J)I
.end method

.method private native getBlendingModeIntensity(J)F
.end method

.method private native getGlazeStrokes(J)F
.end method

.method private native getMaxSize(J)F
.end method

.method private native getSmoothness(J)F
.end method

.method private native getWetEdges(J)F
.end method

.method private native hasFlowProfile(J)Z
.end method

.method private native hasSizeProfile(J)Z
.end method

.method private native setAdhesion(JF)V
.end method

.method private native setBlendingModeIntensity(JF)V
.end method

.method private native setGlazeStrokes(JF)V
.end method

.method private native setHasFlowProfile(JZ)V
.end method

.method private native setHasSizeProfile(JZ)V
.end method

.method private native setMaxSize(JF)V
.end method

.method private native setSmoothness(JF)V
.end method

.method private native setWetEdges(JF)V
.end method


# virtual methods
.method public getAdhesion()F
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getAdhesion(J)F

    move-result v0

    return v0
.end method

.method public getBlendingMode()I
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getBlendingMode(J)I

    move-result v0

    return v0
.end method

.method public getBlendingModeIntensity()F
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getBlendingModeIntensity(J)F

    move-result v0

    return v0
.end method

.method public getGlazeStrokes()F
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getGlazeStrokes(J)F

    move-result v0

    return v0
.end method

.method public getMaxSize()F
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getMaxSize(J)F

    move-result v0

    return v0
.end method

.method public getSmoothness()F
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getSmoothness(J)F

    move-result v0

    return v0
.end method

.method public getWetEdges()F
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->getWetEdges(J)F

    move-result v0

    return v0
.end method

.method public hasFlowProfile()Z
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->hasFlowProfile(J)Z

    move-result v0

    return v0
.end method

.method public hasSizeProfile()Z
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->hasSizeProfile(J)Z

    move-result v0

    return v0
.end method

.method public setAdhesion(F)V
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setAdhesion(JF)V

    return-void
.end method

.method public setBlendingModeIntensity(F)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setBlendingModeIntensity(JF)V

    return-void
.end method

.method public setGlazeStrokes(F)V
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setGlazeStrokes(JF)V

    return-void
.end method

.method public setHasFlowProfile(Z)V
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setHasFlowProfile(JZ)V

    return-void
.end method

.method public setHasSizeProfile(Z)V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setHasSizeProfile(JZ)V

    return-void
.end method

.method public setMaxSize(F)V
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setMaxSize(JF)V

    return-void
.end method

.method public setSmoothness(F)V
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setSmoothness(JF)V

    return-void
.end method

.method public setWetEdges(F)V
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/StrokeSettingsNative;->setWetEdges(JF)V

    return-void
.end method

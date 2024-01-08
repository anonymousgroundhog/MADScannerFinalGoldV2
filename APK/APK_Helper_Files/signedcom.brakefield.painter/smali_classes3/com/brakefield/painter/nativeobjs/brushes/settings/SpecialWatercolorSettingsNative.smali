.class public Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;
.super Lcom/infinite/core/NativeObject;
.source "SpecialWatercolorSettingsNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getBleedRate(J)F
.end method

.method private native getBleeds(J)Z
.end method

.method private native getDryout(J)F
.end method

.method private native getGlaze(J)F
.end method

.method private native getMixIn(J)F
.end method

.method private native setBleedRate(JF)V
.end method

.method private native setBleeds(JZ)V
.end method

.method private native setDryout(JF)V
.end method

.method private native setGlaze(JF)V
.end method

.method private native setMixIn(JF)V
.end method


# virtual methods
.method public getBleedRate()F
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getBleedRate(J)F

    move-result v0

    return v0
.end method

.method public getBleeds()Z
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getBleeds(J)Z

    move-result v0

    return v0
.end method

.method public getDryout()F
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getDryout(J)F

    move-result v0

    return v0
.end method

.method public getGlaze()F
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getGlaze(J)F

    move-result v0

    return v0
.end method

.method public getMixIn()F
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->getMixIn(J)F

    move-result v0

    return v0
.end method

.method public setBleedRate(F)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setBleedRate(JF)V

    return-void
.end method

.method public setBleeds(Z)V
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setBleeds(JZ)V

    return-void
.end method

.method public setDryout(F)V
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setDryout(JF)V

    return-void
.end method

.method public setGlaze(F)V
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setGlaze(JF)V

    return-void
.end method

.method public setMixIn(F)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialWatercolorSettingsNative;->setMixIn(JF)V

    return-void
.end method

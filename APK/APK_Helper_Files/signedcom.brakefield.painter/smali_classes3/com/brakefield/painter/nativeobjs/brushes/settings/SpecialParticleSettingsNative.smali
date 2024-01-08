.class public Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;
.super Lcom/infinite/core/NativeObject;
.source "SpecialParticleSettingsNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getAttractors(J)I
.end method

.method private native getMaxSize(J)F
.end method

.method private native getOvershoot(J)F
.end method

.method private native getParticles(J)I
.end method

.method private native getRadius(J)F
.end method

.method private native setAttractors(JI)V
.end method

.method private native setMaxSize(JF)V
.end method

.method private native setOvershoot(JF)V
.end method

.method private native setParticles(JI)V
.end method

.method private native setRadius(JF)V
.end method


# virtual methods
.method public getAttractors()I
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getAttractors(J)I

    move-result v0

    return v0
.end method

.method public getMaxSize()F
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getMaxSize(J)F

    move-result v0

    return v0
.end method

.method public getOvershoot()F
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getOvershoot(J)F

    move-result v0

    return v0
.end method

.method public getParticles()I
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getParticles(J)I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->getRadius(J)F

    move-result v0

    return v0
.end method

.method public setAttractors(I)V
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setAttractors(JI)V

    return-void
.end method

.method public setMaxSize(F)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setMaxSize(JF)V

    return-void
.end method

.method public setOvershoot(F)V
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setOvershoot(JF)V

    return-void
.end method

.method public setParticles(I)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setParticles(JI)V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialParticleSettingsNative;->setRadius(JF)V

    return-void
.end method

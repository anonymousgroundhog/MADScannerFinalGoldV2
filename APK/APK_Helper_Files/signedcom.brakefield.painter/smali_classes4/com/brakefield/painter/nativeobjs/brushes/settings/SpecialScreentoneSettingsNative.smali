.class public Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;
.super Lcom/infinite/core/NativeObject;
.source "SpecialScreentoneSettingsNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getAngle(J)F
.end method

.method private native getGridSize(J)F
.end method

.method private native getScaleWithSize(J)Z
.end method

.method private native getUsesScreentone(J)Z
.end method

.method private native setAngle(JF)V
.end method

.method private native setGridSize(JF)V
.end method

.method private native setScaleWithSize(JZ)V
.end method

.method private native setUsesScreentone(JZ)V
.end method


# virtual methods
.method public getAngle()F
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getAngle(J)F

    move-result v0

    return v0
.end method

.method public getGridSize()F
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getGridSize(J)F

    move-result v0

    return v0
.end method

.method public getScaleWithSize()Z
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getScaleWithSize(J)Z

    move-result v0

    return v0
.end method

.method public getUsesScreentone()Z
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->getUsesScreentone(J)Z

    move-result v0

    return v0
.end method

.method public setAngle(F)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->setAngle(JF)V

    return-void
.end method

.method public setGridSize(F)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->setGridSize(JF)V

    return-void
.end method

.method public setScaleWithSize(Z)V
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->setScaleWithSize(JZ)V

    return-void
.end method

.method public setUsesScreentone(Z)V
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialScreentoneSettingsNative;->setUsesScreentone(JZ)V

    return-void
.end method

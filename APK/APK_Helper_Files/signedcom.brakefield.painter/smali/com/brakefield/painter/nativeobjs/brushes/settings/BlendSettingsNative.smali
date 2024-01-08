.class public Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;
.super Lcom/infinite/core/NativeObject;
.source "BlendSettingsNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getMixAmount(J)F
.end method

.method private native getMixDilution(J)F
.end method

.method private native getSmudgeAmount(J)F
.end method

.method private native getSmudgeOpacity(J)F
.end method

.method private native getSmudgeStrength(J)F
.end method

.method private native isWetPaint(J)Z
.end method

.method private native setMixAmount(JF)V
.end method

.method private native setMixDilution(JF)V
.end method

.method private native setSmudgeAmount(JF)V
.end method

.method private native setSmudgeOpacity(JF)V
.end method

.method private native setSmudgeStrength(JF)V
.end method

.method private native setWetPaint(JZ)V
.end method


# virtual methods
.method public getMixAmount()F
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getMixAmount(J)F

    move-result v0

    return v0
.end method

.method public getMixDilution()F
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getMixDilution(J)F

    move-result v0

    return v0
.end method

.method public getSmudgeAmount()F
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeAmount(J)F

    move-result v0

    return v0
.end method

.method public getSmudgeOpacity()F
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeOpacity(J)F

    move-result v0

    return v0
.end method

.method public getSmudgeStrength()F
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->getSmudgeStrength(J)F

    move-result v0

    return v0
.end method

.method public isWetPaint()Z
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->isWetPaint(J)Z

    move-result v0

    return v0
.end method

.method public setMixAmount(F)V
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setMixAmount(JF)V

    return-void
.end method

.method public setMixDilution(F)V
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setMixDilution(JF)V

    return-void
.end method

.method public setSmudgeAmount(F)V
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeAmount(JF)V

    return-void
.end method

.method public setSmudgeOpacity(F)V
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeOpacity(JF)V

    return-void
.end method

.method public setSmudgeStrength(F)V
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setSmudgeStrength(JF)V

    return-void
.end method

.method public setWetPaint(Z)V
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/BlendSettingsNative;->setWetPaint(JZ)V

    return-void
.end method

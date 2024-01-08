.class public Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;
.super Lcom/infinite/core/NativeObject;
.source "SpecialEffectsSettingsNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getEffect(J)I
.end method

.method private native getTarget(J)I
.end method

.method private native getUsesPaintColor(J)Z
.end method

.method private native getValue(J)F
.end method

.method private native isMiddlePivot(J)Z
.end method

.method private native setEffect(JI)V
.end method

.method private native setTarget(JI)V
.end method

.method private native setValue(JF)V
.end method


# virtual methods
.method public getEffect()I
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getEffect(J)I

    move-result v0

    return v0
.end method

.method public getTarget()I
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getTarget(J)I

    move-result v0

    return v0
.end method

.method public getUsesPaintColor()Z
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getUsesPaintColor(J)Z

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getValue(J)F

    move-result v0

    return v0
.end method

.method public isMiddlePivot()Z
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->isMiddlePivot(J)Z

    move-result v0

    return v0
.end method

.method public setEffect(I)V
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setEffect(JI)V

    return-void
.end method

.method public setTarget(I)V
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setTarget(JI)V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->setValue(JF)V

    return-void
.end method

.class public Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;
.super Lcom/infinite/core/NativeObject;
.source "HeadSettingsNative.java"


# static fields
.field public static final BLEND_GLAZE:I = 0x1

.field public static final BLEND_GLOW:I = 0x2

.field public static final BLEND_NORMAL:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getAngle(J)F
.end method

.method private native getDepth(J)F
.end method

.method private native getFlow(J)F
.end method

.method private native getHeadStyle(J)I
.end method

.method private native getRotation(J)F
.end method

.method private native getSoftness(J)F
.end method

.method private native getSpacing(J)F
.end method

.method private native getStructure(J)F
.end method

.method private native screenAligned(J)Z
.end method

.method private native setAngle(JF)V
.end method

.method private native setDepth(JF)V
.end method

.method private native setFlow(JF)V
.end method

.method private native setHeadStyle(JI)V
.end method

.method private native setRotation(JF)V
.end method

.method private native setScreenAligned(JZ)V
.end method

.method private native setSoftness(JF)V
.end method

.method private native setSpacing(JF)V
.end method

.method private native setStructure(JF)V
.end method


# virtual methods
.method public getAngle()F
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getAngle(J)F

    move-result v0

    return v0
.end method

.method public getDepth()F
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getDepth(J)F

    move-result v0

    return v0
.end method

.method public getFlow()F
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getFlow(J)F

    move-result v0

    return v0
.end method

.method public getHeadStyle()I
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getHeadStyle(J)I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getRotation(J)F

    move-result v0

    return v0
.end method

.method public getSoftness()F
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSoftness(J)F

    move-result v0

    return v0
.end method

.method public getSpacing()F
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getSpacing(J)F

    move-result v0

    return v0
.end method

.method public getStructure()F
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->getStructure(J)F

    move-result v0

    return v0
.end method

.method public screenAligned()Z
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->screenAligned(J)Z

    move-result v0

    return v0
.end method

.method public setAngle(F)V
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setAngle(JF)V

    return-void
.end method

.method public setDepth(F)V
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setDepth(JF)V

    return-void
.end method

.method public setFlow(F)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setFlow(JF)V

    return-void
.end method

.method public setHeadStyle(I)V
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setHeadStyle(JI)V

    return-void
.end method

.method public setRotation(F)V
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setRotation(JF)V

    return-void
.end method

.method public setScreenAligned(Z)V
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setScreenAligned(JZ)V

    return-void
.end method

.method public setSoftness(F)V
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setSoftness(JF)V

    return-void
.end method

.method public setSpacing(F)V
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setSpacing(JF)V

    return-void
.end method

.method public setStructure(F)V
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setStructure(JF)V

    return-void
.end method

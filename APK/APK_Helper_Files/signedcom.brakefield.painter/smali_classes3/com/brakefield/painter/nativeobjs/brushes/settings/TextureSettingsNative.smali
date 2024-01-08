.class public Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;
.super Lcom/infinite/core/NativeObject;
.source "TextureSettingsNative.java"


# static fields
.field public static final STYLE_FIXED:I = 0x0

.field public static final STYLE_ROTATE:I = 0x1

.field public static final STYLE_WARP:I = 0x2


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

.method private native getInvert(J)Z
.end method

.method private native getScale(J)F
.end method

.method private native getScaleWithSize(J)Z
.end method

.method private native getSoftness(J)F
.end method

.method private native getStretch(J)F
.end method

.method private native getStructure(J)F
.end method

.method private native getStyle(J)I
.end method

.method private native setAngle(JF)V
.end method

.method private native setDepth(JF)V
.end method

.method private native setInvert(JZ)V
.end method

.method private native setScale(JF)V
.end method

.method private native setScaleWithSize(JZ)V
.end method

.method private native setSoftness(JF)V
.end method

.method private native setStretch(JF)V
.end method

.method private native setStructure(JF)V
.end method

.method private native setStyle(JI)V
.end method


# virtual methods
.method public getAngle()F
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getAngle(J)F

    move-result v0

    return v0
.end method

.method public getDepth()F
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getDepth(J)F

    move-result v0

    return v0
.end method

.method public getInvert()Z
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getInvert(J)Z

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getScale(J)F

    move-result v0

    return v0
.end method

.method public getScaleWithSize()Z
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getScaleWithSize(J)Z

    move-result v0

    return v0
.end method

.method public getSoftness()F
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getSoftness(J)F

    move-result v0

    return v0
.end method

.method public getStretch()F
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getStretch(J)F

    move-result v0

    return v0
.end method

.method public getStructure()F
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getStructure(J)F

    move-result v0

    return v0
.end method

.method public getStyle()I
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->getStyle(J)I

    move-result v0

    return v0
.end method

.method public setAngle(F)V
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setAngle(JF)V

    return-void
.end method

.method public setDepth(F)V
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setDepth(JF)V

    return-void
.end method

.method public setInvert(Z)V
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setInvert(JZ)V

    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setScale(JF)V

    return-void
.end method

.method public setScaleWithSize(Z)V
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setScaleWithSize(JZ)V

    return-void
.end method

.method public setSoftness(F)V
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setSoftness(JF)V

    return-void
.end method

.method public setStretch(F)V
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setStretch(JF)V

    return-void
.end method

.method public setStructure(F)V
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setStructure(JF)V

    return-void
.end method

.method public setStyle(I)V
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/TextureSettingsNative;->setStyle(JI)V

    return-void
.end method

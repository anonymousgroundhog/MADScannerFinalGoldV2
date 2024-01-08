.class public Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;
.super Lcom/infinite/core/NativeObject;
.source "PatternFillNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getBrightness(J)F
.end method

.method private native getContrast(J)F
.end method

.method private native getHue(J)F
.end method

.method private native getOpacity(J)F
.end method

.method private native getSaturation(J)F
.end method

.method private native setBrightness(JF)V
.end method

.method private native setContrast(JF)V
.end method

.method private native setHue(JF)V
.end method

.method private native setOpacity(JF)V
.end method

.method private native setSaturation(JF)V
.end method


# virtual methods
.method public getBrightness()F
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getBrightness(J)F

    move-result v0

    return v0
.end method

.method public getContrast()F
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getContrast(J)F

    move-result v0

    return v0
.end method

.method public getHue()F
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getHue(J)F

    move-result v0

    return v0
.end method

.method public getOpacity()F
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getOpacity(J)F

    move-result v0

    return v0
.end method

.method public getSaturation()F
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->getSaturation(J)F

    move-result v0

    return v0
.end method

.method public setBrightness(F)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setBrightness(JF)V

    return-void
.end method

.method public setContrast(F)V
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setContrast(JF)V

    return-void
.end method

.method public setHue(F)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setHue(JF)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setOpacity(JF)V

    return-void
.end method

.method public setSaturation(F)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternFillNative;->setSaturation(JF)V

    return-void
.end method

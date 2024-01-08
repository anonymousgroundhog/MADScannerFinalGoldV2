.class public Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;
.super Lcom/infinite/core/NativeObject;
.source "FillToolNative.java"


# static fields
.field public static final FILL_LINEAR:I = 0x1

.field public static final FILL_PATTERN:I = 0x4

.field public static final FILL_RADIAL:I = 0x2

.field public static final FILL_SOLID:I = 0x0

.field public static final FILL_SWEEP:I = 0x3


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getFillAdjustColor(J)I
.end method

.method private native getFillCycles(J)I
.end method

.method private native getFillMirror(J)Z
.end method

.method private native getFillOpacity(J)F
.end method

.method private native getFillRepeat(J)Z
.end method

.method public static native getFillSamplesAllLayers(J)Z
.end method

.method private native setFillAdjustColor(JFFF)V
.end method

.method private native setFillCycles(JI)V
.end method

.method private native setFillOpacity(JF)V
.end method


# virtual methods
.method public getFillAdjustColor()I
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillAdjustColor(J)I

    move-result v0

    return v0
.end method

.method public getFillCycles()I
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillCycles(J)I

    move-result v0

    return v0
.end method

.method public getFillMirror()Z
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillMirror(J)Z

    move-result v0

    return v0
.end method

.method public getFillOpacity()F
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillOpacity(J)F

    move-result v0

    return v0
.end method

.method public getFillRepeat()Z
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillRepeat(J)Z

    move-result v0

    return v0
.end method

.method public getFillSamplesAllLayers()Z
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    invoke-static {v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->getFillSamplesAllLayers(J)Z

    move-result v0

    return v0
.end method

.method public setFillAdjustColor(FFF)V
    .locals 6

    .line 35
    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->setFillAdjustColor(JFFF)V

    return-void
.end method

.method public setFillCycles(I)V
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->setFillCycles(JI)V

    return-void
.end method

.method public setFillOpacity(F)V
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/FillToolNative;->setFillOpacity(JF)V

    return-void
.end method

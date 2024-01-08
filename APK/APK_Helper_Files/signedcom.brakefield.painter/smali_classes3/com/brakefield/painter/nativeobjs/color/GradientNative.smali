.class public Lcom/brakefield/painter/nativeobjs/color/GradientNative;
.super Lcom/infinite/core/NativeObject;
.source "GradientNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native adjustColorStop(JIF)V
.end method

.method private native closestColorStop(JF)I
.end method

.method private native colorAt(JI)I
.end method

.method private native insertColorStopAt(JF)I
.end method

.method private native isEndPoint(JI)Z
.end method

.method private native isRemoving(JI)Z
.end method

.method private native numberOfColorStops(JZ)I
.end method

.method private native positionAt(JI)F
.end method

.method private native removeColorStop(JI)V
.end method

.method private native setRemovingColorStop(JI)V
.end method

.method private native updateColorStop(JII)V
.end method


# virtual methods
.method public adjustColorStop(IF)V
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->adjustColorStop(JIF)V

    return-void
.end method

.method public closestColorStop(F)I
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->closestColorStop(JF)I

    move-result p1

    return p1
.end method

.method public colorAt(I)I
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->colorAt(JI)I

    move-result p1

    return p1
.end method

.method public insertColorStopAt(F)I
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->insertColorStopAt(JF)I

    move-result p1

    return p1
.end method

.method public isEndPoint(I)Z
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->isEndPoint(JI)Z

    move-result p1

    return p1
.end method

.method public isRemoving(I)Z
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->isRemoving(JI)Z

    move-result p1

    return p1
.end method

.method public numberOfColorStops(Z)I
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->numberOfColorStops(JZ)I

    move-result p1

    return p1
.end method

.method public positionAt(I)F
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->positionAt(JI)F

    move-result p1

    return p1
.end method

.method public removeColorStop(I)V
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->removeColorStop(JI)V

    return-void
.end method

.method public setRemovingColorStop(I)V
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->setRemovingColorStop(JI)V

    return-void
.end method

.method public updateColorStop(II)V
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->updateColorStop(JII)V

    return-void
.end method

.class public Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;
.super Lcom/infinite/core/NativeObject;
.source "PatternSymToolNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getFan(J)F
.end method

.method private native getPlanes(J)I
.end method

.method private native getReflect(J)Z
.end method

.method private native getRotate(J)F
.end method

.method private native setFan(JF)V
.end method

.method private native setPlanes(JI)V
.end method

.method private native setReflect(JZ)V
.end method

.method private native setRotate(JF)V
.end method


# virtual methods
.method public getFan()F
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getFan(J)F

    move-result v0

    return v0
.end method

.method public getPlanes()I
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getPlanes(J)I

    move-result v0

    return v0
.end method

.method public getReflect()Z
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getReflect(J)Z

    move-result v0

    return v0
.end method

.method public getRotate()F
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->getRotate(J)F

    move-result v0

    return v0
.end method

.method public setFan(F)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->setFan(JF)V

    return-void
.end method

.method public setPlanes(I)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->setPlanes(JI)V

    return-void
.end method

.method public setReflect(Z)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->setReflect(JZ)V

    return-void
.end method

.method public setRotate(F)V
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternSymToolNative;->setRotate(JF)V

    return-void
.end method

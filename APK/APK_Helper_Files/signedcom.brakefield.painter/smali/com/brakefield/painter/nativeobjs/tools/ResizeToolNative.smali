.class public Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;
.super Lcom/infinite/core/NativeObject;
.source "ResizeToolNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getHeight(J)I
.end method

.method private native getLockRatio(J)Z
.end method

.method private native getScaleContent(J)Z
.end method

.method private native getWidth(J)I
.end method

.method private native setHeight(JI)V
.end method

.method private native setLockRatio(JZ)V
.end method

.method private native setScaleContent(JZ)V
.end method

.method private native setWidth(JI)V
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getHeight(J)I

    move-result v0

    return v0
.end method

.method public getLockRatio()Z
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getLockRatio(J)Z

    move-result v0

    return v0
.end method

.method public getScaleContent()Z
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getScaleContent(J)Z

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->getWidth(J)I

    move-result v0

    return v0
.end method

.method public setHeight(I)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->setHeight(JI)V

    return-void
.end method

.method public setLockRatio(Z)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->setLockRatio(JZ)V

    return-void
.end method

.method public setScaleContent(Z)V
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->setScaleContent(JZ)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/ResizeToolNative;->setWidth(JI)V

    return-void
.end method

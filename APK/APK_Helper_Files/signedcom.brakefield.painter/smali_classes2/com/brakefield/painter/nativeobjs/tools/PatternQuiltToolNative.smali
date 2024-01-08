.class public Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;
.super Lcom/infinite/core/NativeObject;
.source "PatternQuiltToolNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getReflectX(J)Z
.end method

.method private native getReflectY(J)Z
.end method

.method private native setReflectX(JZ)V
.end method

.method private native setReflectY(JZ)V
.end method


# virtual methods
.method public getReflectX()Z
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->getReflectX(J)Z

    move-result v0

    return v0
.end method

.method public getReflectY()Z
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->getReflectY(J)Z

    move-result v0

    return v0
.end method

.method public setReflectX(Z)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->setReflectX(JZ)V

    return-void
.end method

.method public setReflectY(Z)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternQuiltToolNative;->setReflectY(JZ)V

    return-void
.end method

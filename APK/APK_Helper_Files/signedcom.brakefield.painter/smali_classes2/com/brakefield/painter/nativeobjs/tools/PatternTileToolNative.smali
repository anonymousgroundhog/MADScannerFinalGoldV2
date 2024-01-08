.class public Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;
.super Lcom/infinite/core/NativeObject;
.source "PatternTileToolNative.java"


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

.method private native getRotateX(J)Z
.end method

.method private native getRotateY(J)Z
.end method

.method private native toggleReflectX(J)V
.end method

.method private native toggleReflectY(J)V
.end method

.method private native toggleRotateX(J)V
.end method

.method private native toggleRotateY(J)V
.end method


# virtual methods
.method public getReflectX()Z
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->getReflectX(J)Z

    move-result v0

    return v0
.end method

.method public getReflectY()Z
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->getReflectY(J)Z

    move-result v0

    return v0
.end method

.method public getRotateX()Z
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->getRotateX(J)Z

    move-result v0

    return v0
.end method

.method public getRotateY()Z
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->getRotateY(J)Z

    move-result v0

    return v0
.end method

.method public toggleReflectX()V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->toggleReflectX(J)V

    return-void
.end method

.method public toggleReflectY()V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->toggleReflectY(J)V

    return-void
.end method

.method public toggleRotateX()V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->toggleRotateX(J)V

    return-void
.end method

.method public toggleRotateY()V
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternTileToolNative;->toggleRotateY(J)V

    return-void
.end method

.class public Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;
.super Lcom/infinite/core/NativeObject;
.source "PatternPathToolNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getJitterAngle(J)F
.end method

.method private native getJitterSize(J)F
.end method

.method private native getSpacing(J)F
.end method

.method private native setJitterAngle(JF)V
.end method

.method private native setJitterSize(JF)V
.end method

.method private native setSpacing(JF)V
.end method


# virtual methods
.method public getJitterAngle()F
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->getJitterAngle(J)F

    move-result v0

    return v0
.end method

.method public getJitterSize()F
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->getJitterSize(J)F

    move-result v0

    return v0
.end method

.method public getSpacing()F
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->getSpacing(J)F

    move-result v0

    return v0
.end method

.method public setJitterAngle(F)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->setJitterAngle(JF)V

    return-void
.end method

.method public setJitterSize(F)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->setJitterSize(JF)V

    return-void
.end method

.method public setSpacing(F)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PatternPathToolNative;->setSpacing(JF)V

    return-void
.end method

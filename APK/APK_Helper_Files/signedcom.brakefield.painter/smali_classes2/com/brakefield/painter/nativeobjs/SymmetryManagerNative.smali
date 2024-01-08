.class public Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;
.super Lcom/infinite/core/NativeObject;
.source "SymmetryManagerNative.java"


# static fields
.field public static final KALEIDO:I = 0x4

.field public static final MASTER:I = 0x5

.field public static final NONE:I = 0x0

.field public static final RADIAL:I = 0x3

.field public static final X:I = 0x1

.field public static final Y:I = 0x2


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getClip(J)Z
.end method

.method private native getFan(J)F
.end method

.method private native getLock(J)Z
.end method

.method private native getMirror(J)Z
.end method

.method private native getPlanes(J)I
.end method

.method private native getType(J)I
.end method

.method private native setClip(JZ)V
.end method

.method private native setFan(JF)V
.end method

.method private native setLock(JZ)V
.end method

.method private native setMirror(JZ)V
.end method

.method private native setPlanes(JI)V
.end method

.method private native setType(JI)V
.end method

.method private native toggleOrSetSymmetry(JI)V
.end method


# virtual methods
.method public getClip()Z
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getClip(J)Z

    move-result v0

    return v0
.end method

.method public getFan()F
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getFan(J)F

    move-result v0

    return v0
.end method

.method public getLock()Z
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getLock(J)Z

    move-result v0

    return v0
.end method

.method public getMirror()Z
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getMirror(J)Z

    move-result v0

    return v0
.end method

.method public getPlanes()I
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getPlanes(J)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType(J)I

    move-result v0

    return v0
.end method

.method public setClip(Z)V
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setClip(JZ)V

    return-void
.end method

.method public setFan(F)V
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setFan(JF)V

    return-void
.end method

.method public setLock(Z)V
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setLock(JZ)V

    return-void
.end method

.method public setMirror(Z)V
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setMirror(JZ)V

    return-void
.end method

.method public setPlanes(I)V
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setPlanes(JI)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->setType(JI)V

    return-void
.end method

.method public toggleOrSetSymmetry(I)V
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->toggleOrSetSymmetry(JI)V

    return-void
.end method

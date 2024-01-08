.class public Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;
.super Lcom/infinite/core/NativeObject;
.source "FilterToolNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native cycleTypes(J)V
.end method

.method private native getType(J)I
.end method

.method private native getValue(J)F
.end method

.method private native isMiddlePivot(J)Z
.end method

.method private native setValue(JF)V
.end method


# virtual methods
.method public cycleTypes()V
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->cycleTypes(J)V

    return-void
.end method

.method public getType()I
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->getType(J)I

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->getValue(J)F

    move-result v0

    return v0
.end method

.method public isMiddlePivot()Z
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->isMiddlePivot(J)Z

    move-result v0

    return v0
.end method

.method public setValue(F)V
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/FilterToolNative;->setValue(JF)V

    return-void
.end method

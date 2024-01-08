.class public Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;
.super Lcom/infinite/core/NativeObject;
.source "TransformToolNative.java"


# static fields
.field public static final MODE_ANCHOR:I = 0x1

.field public static final MODE_BASIC:I = 0x0

.field public static final MODE_DISTORT:I = 0x2

.field public static final MODE_WARP:I = 0x3


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getTransformMode(J)I
.end method

.method private native isTransformingFrame(J)Z
.end method

.method private native setTransformMode(JI)V
.end method

.method private native toggleTransformingFrame(J)V
.end method

.method private native transformFlip(J)V
.end method

.method private native transformRotateCW(J)V
.end method


# virtual methods
.method public getTransformMode()I
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->getTransformMode(J)I

    move-result v0

    return v0
.end method

.method public isTransformingFrame()Z
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->isTransformingFrame(J)Z

    move-result v0

    return v0
.end method

.method public setTransformMode(I)V
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->setTransformMode(JI)V

    return-void
.end method

.method public toggleTransformingFrame()V
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->toggleTransformingFrame(J)V

    return-void
.end method

.method public transformFlip()V
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->transformFlip(J)V

    return-void
.end method

.method public transformRotateCW()V
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/TransformToolNative;->transformRotateCW(J)V

    return-void
.end method

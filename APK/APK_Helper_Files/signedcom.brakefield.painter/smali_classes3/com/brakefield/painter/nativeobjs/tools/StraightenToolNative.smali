.class public Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;
.super Lcom/infinite/core/NativeObject;
.source "StraightenToolNative.java"


# static fields
.field public static final HORIZONTAL:I = 0x2

.field public static final ROTATE:I = 0x0

.field public static final VERTICAL:I = 0x1


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getMode(J)I
.end method

.method private native reset(J)V
.end method

.method private native setMode(JI)V
.end method


# virtual methods
.method public getMode()I
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->getMode(J)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->reset(J)V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/StraightenToolNative;->setMode(JI)V

    return-void
.end method

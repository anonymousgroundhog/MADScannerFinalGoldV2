.class public Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;
.super Lcom/infinite/core/NativeObject;
.source "PerspectiveManagerNative.java"


# static fields
.field public static final NONE:I = 0x0

.field public static final PERSPECTIVE_1:I = 0x4

.field public static final PERSPECTIVE_2:I = 0x5

.field public static final PERSPECTIVE_3:I = 0x6

.field public static final PERSPECTIVE_5:I = 0x7

.field public static final PERSPECTIVE_GRID:I = 0x9

.field public static final PERSPECTIVE_ISO:I = 0x8


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getGrid(J)Z
.end method

.method private native getLock(J)Z
.end method

.method private native getSnap(J)Z
.end method

.method private native getType(J)I
.end method

.method private native setGrid(JZ)V
.end method

.method private native setLock(JZ)V
.end method

.method private native setSnap(JZ)V
.end method

.method private native setType(JI)V
.end method

.method private native toggleOrSetType(JI)V
.end method


# virtual methods
.method public getGrid()Z
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getGrid(J)Z

    move-result v0

    return v0
.end method

.method public getLock()Z
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getLock(J)Z

    move-result v0

    return v0
.end method

.method public getSnap()Z
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getSnap(J)Z

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getType(J)I

    move-result v0

    return v0
.end method

.method public setGrid(Z)V
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->setGrid(JZ)V

    return-void
.end method

.method public setLock(Z)V
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->setLock(JZ)V

    return-void
.end method

.method public setSnap(Z)V
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->setSnap(JZ)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->setType(JI)V

    return-void
.end method

.method public toggleOrSetPerspective(I)V
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->toggleOrSetType(JI)V

    return-void
.end method

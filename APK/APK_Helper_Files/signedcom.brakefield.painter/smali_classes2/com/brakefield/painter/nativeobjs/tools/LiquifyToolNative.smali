.class public Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;
.super Lcom/infinite/core/NativeObject;
.source "LiquifyToolNative.java"


# static fields
.field public static final BLOAT:I = 0x2

.field public static final MOVE:I = 0x0

.field public static final PINCH:I = 0x3

.field public static final RESTORE:I = 0x6

.field public static final RIPPLE:I = 0x5

.field public static final SMUDGE:I = 0x1

.field public static final SWIRL:I = 0x4

.field public static final SWIRL_CCW:I = 0x8

.field public static final SWIRL_CW:I = 0x9

.field public static final TIME:I = 0x7


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getDrawCursor(J)Z
.end method

.method private native getIntensity(J)F
.end method

.method private native getTemplate(J)I
.end method

.method private native isRestorable(J)Z
.end method

.method private native setDrawCursor(JZ)V
.end method

.method private native setIntensity(JF)V
.end method

.method private native setTemplate(JI)V
.end method


# virtual methods
.method public getDrawCursor()Z
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getDrawCursor(J)Z

    move-result v0

    return v0
.end method

.method public getIntensity()F
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getIntensity(J)F

    move-result v0

    return v0
.end method

.method public getTemplate()I
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->getTemplate(J)I

    move-result v0

    return v0
.end method

.method public isRestorable()Z
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->isRestorable(J)Z

    move-result v0

    return v0
.end method

.method public setDrawCursor(Z)V
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setDrawCursor(JZ)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setIntensity(JF)V

    return-void
.end method

.method public setTemplate(I)V
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/LiquifyToolNative;->setTemplate(JI)V

    return-void
.end method

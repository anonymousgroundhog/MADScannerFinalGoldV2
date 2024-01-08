.class public Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;
.super Lcom/infinite/core/NativeObject;
.source "ColorAdjustmentToolNative.java"


# static fields
.field public static final BRIGHTNESS:I = 0x0

.field public static final CONTRAST:I = 0x1

.field public static final EXPOSURE:I = 0x2

.field public static final GAMMA:I = 0x3

.field public static final HUE:I = 0x7

.field public static final SATURATION:I = 0x4

.field public static final TEMPERATURE:I = 0x6

.field public static final TINT:I = 0x8

.field public static final VIBRANCE:I = 0x5


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getMode(J)I
.end method

.method private native getValue(J)F
.end method

.method private native isMiddlePivot(J)Z
.end method

.method private native setMode(JI)V
.end method

.method private native setValue(JF)V
.end method


# virtual methods
.method public getMode()I
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->getMode(J)I

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->getValue(J)F

    move-result v0

    return v0
.end method

.method public isMiddlePivot()Z
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->isMiddlePivot(J)Z

    move-result v0

    return v0
.end method

.method public setMode(I)V
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setMode(JI)V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->setValue(JF)V

    return-void
.end method

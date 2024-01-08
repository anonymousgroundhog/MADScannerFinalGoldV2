.class public Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;
.super Lcom/infinite/core/NativeObject;
.source "MaskToolManagerNative.java"


# static fields
.field public static final FOCUS:I = 0x1

.field public static final HIGHLIGHTS:I = 0x4

.field public static final MIDTONES:I = 0x5

.field public static final NONE:I = 0x0

.field public static final SATURATION:I = 0x3

.field public static final SHADOWS:I = 0x6

.field public static final TILT_SHIFT:I = 0x2


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getType(J)I
.end method

.method private native setType(JI)V
.end method


# virtual methods
.method public getType()I
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;->getType(J)I

    move-result v0

    return v0
.end method

.method public setType(I)V
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/MaskToolManagerNative;->setType(JI)V

    return-void
.end method

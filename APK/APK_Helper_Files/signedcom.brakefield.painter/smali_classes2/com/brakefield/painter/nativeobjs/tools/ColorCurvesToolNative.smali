.class public Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;
.super Lcom/infinite/core/NativeObject;
.source "ColorCurvesToolNative.java"


# static fields
.field public static final CHANNEL_ALPHA:I = 0x4

.field public static final CHANNEL_BLUE:I = 0x2

.field public static final CHANNEL_GAMMA:I = 0x3

.field public static final CHANNEL_GREEN:I = 0x1

.field public static final CHANNEL_RED:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getEditChannel(J)I
.end method

.method private native resize(JFFFF)V
.end method

.method private native setEditChannel(JI)V
.end method


# virtual methods
.method public getEditChannel()I
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->getEditChannel(J)I

    move-result v0

    return v0
.end method

.method public resize(FFFF)V
    .locals 7

    .line 18
    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->nativePointer:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->resize(JFFFF)V

    return-void
.end method

.method public setEditChannel(I)V
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/ColorCurvesToolNative;->setEditChannel(JI)V

    return-void
.end method

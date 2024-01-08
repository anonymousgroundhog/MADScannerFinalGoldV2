.class public Lcom/brakefield/painter/nativeobjs/GuideManagerNative;
.super Lcom/infinite/core/NativeObject;
.source "GuideManagerNative.java"


# static fields
.field public static final ELLIPSE:I = 0x2

.field public static final LINE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final PATH:I = 0x3


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 13
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

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;->getType(J)I

    move-result v0

    return v0
.end method

.method public setType(I)V
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;->setType(JI)V

    return-void
.end method

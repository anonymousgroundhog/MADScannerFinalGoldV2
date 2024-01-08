.class public Lcom/brakefield/painter/nativeobjs/ProfileNative;
.super Lcom/infinite/core/NativeObject;
.source "ProfileNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getPath(J)J
.end method


# virtual methods
.method public getPath()Lcom/infinite/geom/PathNative;
    .locals 3

    .line 17
    new-instance v0, Lcom/infinite/geom/PathNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/ProfileNative;->nativePointer:J

    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ProfileNative;->getPath(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/infinite/geom/PathNative;-><init>(J)V

    return-object v0
.end method

.method public final getPointer()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/ProfileNative;->nativePointer:J

    return-wide v0
.end method

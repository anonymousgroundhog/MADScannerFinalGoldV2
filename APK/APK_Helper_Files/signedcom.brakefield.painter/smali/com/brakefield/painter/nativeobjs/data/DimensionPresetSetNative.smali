.class public Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;
.super Lcom/infinite/core/NativeObject;
.source "DimensionPresetSetNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native canExpand(J)Z
.end method

.method private native getName(J)Ljava/lang/String;
.end method

.method private native getPreset(JI)J
.end method

.method private native isExpanded(J)Z
.end method

.method private native setExpanded(JZ)V
.end method

.method private native size(J)I
.end method


# virtual methods
.method public canExpand()Z
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->canExpand(J)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->getName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreset(I)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;
    .locals 3

    .line 18
    new-instance v0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->nativePointer:J

    invoke-direct {p0, v1, v2, p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->getPreset(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;-><init>(J)V

    return-object v0
.end method

.method public isExpanded()Z
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->isExpanded(J)Z

    move-result v0

    return v0
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->setExpanded(JZ)V

    return-void
.end method

.method public size()I
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;->size(J)I

    move-result v0

    return v0
.end method

.class public Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;
.super Lcom/infinite/core/NativeObject;
.source "DimensionPresetSetsNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/infinite/core/NativeObject;-><init>()V

    return-void
.end method

.method private native deletePreset(JJ)I
.end method

.method private native getPresets(JI)J
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeInit()J
.end method

.method private native numberOfPresets(J)I
.end method

.method private native renamePreset(JJLjava/lang/String;)I
.end method

.method private native savePreset(JLjava/lang/String;IFFI)V
.end method

.method private native setup(JII)V
.end method


# virtual methods
.method public deleteNativePointer(J)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->nativeDelete(J)V

    return-void
.end method

.method public deletePreset(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 4

    .line 29
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->nativePointer:J

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getNativePointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->deletePreset(JJ)I

    return-void
.end method

.method public getNativePointer()J
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->nativeInit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPresets(I)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;
    .locals 3

    .line 23
    new-instance v0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->nativePointer:J

    invoke-direct {p0, v1, v2, p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->getPresets(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;-><init>(J)V

    return-object v0
.end method

.method public numberOfPresets()I
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->numberOfPresets(J)I

    move-result v0

    return v0
.end method

.method public renamePreset(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;Ljava/lang/String;)V
    .locals 6

    .line 32
    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->nativePointer:J

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;->getNativePointer()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->renamePreset(JJLjava/lang/String;)I

    return-void
.end method

.method public savePreset(Ljava/lang/String;IFFI)V
    .locals 8

    .line 26
    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->nativePointer:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->savePreset(JLjava/lang/String;IFFI)V

    return-void
.end method

.method public setup(II)V
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->setup(JII)V

    return-void
.end method

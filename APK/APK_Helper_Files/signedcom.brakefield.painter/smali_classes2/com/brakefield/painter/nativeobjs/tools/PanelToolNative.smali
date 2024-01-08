.class public Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;
.super Lcom/infinite/core/NativeObject;
.source "PanelToolNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native getColor(J)I
.end method

.method private native getGutterSize(J)F
.end method

.method private native getHeightMargin(J)F
.end method

.method private native getWidthMargin(J)F
.end method

.method private native setColor(JI)V
.end method

.method private native setGutterSize(JF)V
.end method

.method private native setHeightMargin(JF)V
.end method

.method private native setWidthMargin(JF)V
.end method


# virtual methods
.method public getColor()I
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getColor(J)I

    move-result v0

    return v0
.end method

.method public getGutterSize()F
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getGutterSize(J)F

    move-result v0

    return v0
.end method

.method public getHeightMargin()F
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getHeightMargin(J)F

    move-result v0

    return v0
.end method

.method public getWidthMargin()F
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getWidthMargin(J)F

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->setColor(JI)V

    return-void
.end method

.method public setGutterSize(F)V
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->setGutterSize(JF)V

    return-void
.end method

.method public setHeightMargin(F)V
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->setHeightMargin(JF)V

    return-void
.end method

.method public setWidthMargin(F)V
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->setWidthMargin(JF)V

    return-void
.end method

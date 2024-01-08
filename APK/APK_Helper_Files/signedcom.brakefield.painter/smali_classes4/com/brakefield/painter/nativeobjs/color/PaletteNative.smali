.class public Lcom/brakefield/painter/nativeobjs/color/PaletteNative;
.super Lcom/infinite/core/NativeObject;
.source "PaletteNative.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native addColor(JI)V
.end method

.method private native addColorAt(JII)V
.end method

.method private native changeColor(JII)V
.end method

.method private native clearColors(J)V
.end method

.method private native colorAt(JI)I
.end method

.method private native colorPointerAt(JI)J
.end method

.method private native indexOf(JJ)I
.end method

.method private native moveColor(JII)V
.end method

.method private native name(J)Ljava/lang/String;
.end method

.method private native removeColor(JI)V
.end method

.method private native save(JLjava/lang/String;)V
.end method

.method private native saveAs(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setName(JLjava/lang/String;)V
.end method

.method private native size(J)I
.end method


# virtual methods
.method public addColor(I)V
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->addColor(JI)V

    return-void
.end method

.method public addColor(II)V
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->addColorAt(JII)V

    return-void
.end method

.method public changeColor(II)V
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->changeColor(JII)V

    return-void
.end method

.method public clearColors()V
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->clearColors(J)V

    return-void
.end method

.method public colorAt(I)I
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->colorAt(JI)I

    move-result p1

    return p1
.end method

.method public colorPointerAt(I)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->colorPointerAt(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(J)I
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->indexOf(JJ)I

    move-result p1

    return p1
.end method

.method public moveColor(II)V
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->moveColor(JII)V

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->name(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeColor(I)V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->removeColor(JI)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->save(JLjava/lang/String;)V

    return-void
.end method

.method public saveAs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->saveAs(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->setName(JLjava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->size(J)I

    move-result v0

    return v0
.end method

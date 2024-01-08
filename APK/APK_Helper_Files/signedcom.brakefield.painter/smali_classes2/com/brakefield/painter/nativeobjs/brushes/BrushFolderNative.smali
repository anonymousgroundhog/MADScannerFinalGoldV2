.class public Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;
.super Lcom/infinite/core/NativeObject;
.source "BrushFolderNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/infinite/core/NativeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private native addBrush(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native getBrushCount(J)I
.end method

.method private native getBrushId(JI)I
.end method

.method private native getBrushName(JI)Ljava/lang/String;
.end method

.method private native getDisplayName(J)Ljava/lang/String;
.end method

.method private native getName(J)Ljava/lang/String;
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeInit()J
.end method

.method private native setDisplayName(JLjava/lang/String;)V
.end method

.method private native setName(JLjava/lang/String;)V
.end method


# virtual methods
.method public addBrush(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 39
    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->addBrush(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteNativePointer(J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativeDelete(J)V

    return-void
.end method

.method public getBrushCount()I
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getBrushCount(J)I

    move-result v0

    return v0
.end method

.method public getBrushId(I)I
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getBrushId(JI)I

    move-result p1

    return p1
.end method

.method public getBrushName(I)Ljava/lang/String;
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getBrushName(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getDisplayName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePointer()J
    .locals 4

    .line 16
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    return-wide v0

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativeInit()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->setDisplayName(JLjava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->setName(JLjava/lang/String;)V

    return-void
.end method

.class public Lcom/brakefield/painter/nativeobjs/PainterZipNative;
.super Lcom/infinite/core/NativeObject;
.source "PainterZipNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/infinite/core/NativeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/infinite/core/NativeObject;-><init>(J)V

    return-void
.end method

.method public static load(Ljava/lang/String;)Lcom/brakefield/painter/nativeobjs/PainterZipNative;
    .locals 4

    .line 12
    invoke-static {p0}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativeLoad(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lcom/brakefield/painter/nativeobjs/PainterZipNative;

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;-><init>(J)V

    return-object p0
.end method

.method private native nativeAddBrushFolder(JJ)V
.end method

.method private native nativeDelete(J)V
.end method

.method private native nativeGetBrushFolderAt(JI)J
.end method

.method private native nativeGetBrushFolderCount(J)I
.end method

.method private native nativeInit()J
.end method

.method private static native nativeLoad(Ljava/lang/String;)J
.end method

.method private native nativeSave(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public addBrushFolder(Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;)V
    .locals 4

    .line 30
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativePointer:J

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;->getNativePointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativeAddBrushFolder(JJ)V

    return-void
.end method

.method public deleteNativePointer(J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativeDelete(J)V

    return-void
.end method

.method public getBrushFolderAt(I)Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;
    .locals 3

    .line 36
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;

    iget-wide v1, p0, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativePointer:J

    invoke-direct {p0, v1, v2, p1}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativeGetBrushFolderAt(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/BrushFolderNative;-><init>(J)V

    return-object v0
.end method

.method public getBrushFolderCount()I
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativeGetBrushFolderCount(J)I

    move-result v0

    return v0
.end method

.method public getNativePointer()J
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativeInit()J

    move-result-wide v0

    return-wide v0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativePointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/brakefield/painter/nativeobjs/PainterZipNative;->nativeSave(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

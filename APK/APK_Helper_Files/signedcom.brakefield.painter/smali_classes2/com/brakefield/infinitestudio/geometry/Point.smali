.class public Lcom/brakefield/infinitestudio/geometry/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public pressure:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 22
    iput p2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method


# virtual methods
.method public copy()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 3

    .line 68
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;

    if-eqz v1, :cond_1

    .line 86
    check-cast p1, Lcom/brakefield/infinitestudio/geometry/Point;

    .line 87
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public load(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v1, v0

    .line 41
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    .line 46
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 50
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 51
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 53
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v4, v2

    .line 54
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-ne v2, v1, :cond_2

    return-void

    :cond_2
    :goto_1
    if-ge v0, v3, :cond_3

    .line 58
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 59
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 63
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 64
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public save(Ljava/io/FileOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 33
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 34
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public set(FF)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 78
    iput p2, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public set(Lcom/brakefield/infinitestudio/geometry/Point;)V
    .locals 1

    .line 72
    iget v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 73
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 26
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v0, v2

    .line 28
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    aget p1, v0, v3

    .line 29
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method

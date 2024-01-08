.class public Lcom/brakefield/painter/View2GL;
.super Ljava/lang/Object;
.source "View2GL.java"


# instance fields
.field private mGlSurfaceTexture:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceCanvas:Landroid/graphics/Canvas;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHeight:I

.field private mTextureWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 11

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x84c0

    .line 24
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const v1, 0x8d65

    .line 27
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v2, 0x8d65

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move v5, p1

    move v6, p2

    .line 28
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0x2801

    const v3, 0x46180400    # 9729.0f

    .line 30
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    .line 32
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 34
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 36
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 39
    iput v0, p0, Lcom/brakefield/painter/View2GL;->mGlSurfaceTexture:I

    .line 41
    iput p1, p0, Lcom/brakefield/painter/View2GL;->mTextureWidth:I

    .line 42
    iput p2, p0, Lcom/brakefield/painter/View2GL;->mTextureHeight:I

    .line 43
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget p2, p0, Lcom/brakefield/painter/View2GL;->mGlSurfaceTexture:I

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/View2GL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 44
    iget p2, p0, Lcom/brakefield/painter/View2GL;->mTextureWidth:I

    iget v0, p0, Lcom/brakefield/painter/View2GL;->mTextureHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 45
    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/brakefield/painter/View2GL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/brakefield/painter/View2GL;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public getGLSurfaceTexture()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/brakefield/painter/View2GL;->mGlSurfaceTexture:I

    return v0
.end method

.method public getTextureHeight()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/brakefield/painter/View2GL;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/brakefield/painter/View2GL;->mTextureWidth:I

    return v0
.end method

.method public onDrawFrame()V
    .locals 1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDrawViewBegin()Landroid/graphics/Canvas;
    .locals 2

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurfaceCanvas:Landroid/graphics/Canvas;

    .line 77
    iget-object v1, p0, Lcom/brakefield/painter/View2GL;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurfaceCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurfaceCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public onDrawViewEnd()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurfaceCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/brakefield/painter/View2GL;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurfaceCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public releaseSurface()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 63
    :cond_1
    iget v0, p0, Lcom/brakefield/painter/View2GL;->mGlSurfaceTexture:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 64
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 65
    :cond_2
    iput v1, p0, Lcom/brakefield/painter/View2GL;->mGlSurfaceTexture:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurface:Landroid/view/Surface;

    .line 68
    iput-object v0, p0, Lcom/brakefield/painter/View2GL;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setTextureHeight(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/brakefield/painter/View2GL;->mTextureHeight:I

    return-void
.end method

.method public setTextureWidth(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/brakefield/painter/View2GL;->mTextureWidth:I

    return-void
.end method

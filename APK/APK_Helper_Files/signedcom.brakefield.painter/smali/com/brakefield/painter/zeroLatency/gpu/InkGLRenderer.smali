.class public Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;
.super Ljava/lang/Object;
.source "InkGLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mDebugMode:Z

.field private mFBRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;

.field private mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

.field private mInkRender:Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;

.field private mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

.field private mLastPanningPoint:Landroid/graphics/PointF;

.field private mPredictedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mScissor:Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

.field private mSharedBufferModeAvailable:Z

.field private mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    invoke-direct {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mScissor:Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 38
    new-instance v0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    .line 42
    iput-boolean v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mDebugMode:Z

    .line 43
    iput-boolean v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mSharedBufferModeAvailable:Z

    .line 48
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-direct {v0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    invoke-direct {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mScissor:Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 38
    new-instance v0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;-><init>(I)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    .line 42
    iput-boolean v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mDebugMode:Z

    .line 43
    iput-boolean v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mSharedBufferModeAvailable:Z

    .line 52
    iget-object p1, p1, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    return-void
.end method

.method private addToScissor(Landroid/graphics/PointF;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->applyMatrixToPoint([FLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mScissor:Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->addPoint(FF)V

    return-void
.end method

.method private addToScissor(Lcom/brakefield/painter/zeroLatency/InkPoint;)V
    .locals 2

    .line 279
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    iget p1, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 280
    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Landroid/graphics/PointF;)V

    return-void
.end method

.method private addToScissor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 290
    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyMatrixToPoint([FLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 9

    const/4 v0, 0x4

    new-array v5, v0, [F

    .line 267
    iget v1, p2, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x0

    aput v1, v5, v7

    iget p2, p2, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x1

    aput p2, v5, v8

    const/4 p2, 0x2

    const/4 v1, 0x0

    aput v1, v5, p2

    const/4 p2, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v5, p2

    new-array p2, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p1

    .line 269
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 270
    new-instance p1, Landroid/graphics/PointF;

    aget v0, p2, v7

    aget p2, p2, v8

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private disableSingleBuffer()V
    .locals 4

    .line 132
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mSharedBufferModeAvailable:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    const/16 v1, 0x3059

    .line 134
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    const/16 v2, 0x3086

    const/16 v3, 0x3084

    .line 135
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    const/16 v2, 0x314c

    const/4 v3, 0x0

    .line 136
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    :cond_0
    return-void
.end method

.method private drawFrameDoubleBufferMode()V
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->generatePredictedPoints()V

    const/16 v0, 0x4000

    .line 169
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 170
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkRender:Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->draw()V

    .line 171
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method private drawFrameSingleBufferMode()V
    .locals 2

    .line 154
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->generatePredictedPoints()V

    .line 155
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mFBRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->useFrameBuffer(Z)V

    .line 156
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mScissor:Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->apply()V

    const/16 v0, 0x4000

    .line 157
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 158
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkRender:Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->draw()V

    .line 159
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mFBRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->useFrameBuffer(Z)V

    .line 160
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mScissor:Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->apply()V

    .line 161
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mFBRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;->draw()V

    .line 162
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mScissor:Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->disable()V

    .line 163
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 164
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mScissor:Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->reset()V

    return-void
.end method

.method private drawFullScreen()V
    .locals 3

    .line 274
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Landroid/graphics/PointF;)V

    .line 275
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v1, v1, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v2, v2, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Landroid/graphics/PointF;)V

    return-void
.end method

.method private enableSingleBuffer()V
    .locals 4

    .line 122
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mSharedBufferModeAvailable:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    const/16 v1, 0x3059

    .line 124
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    const/16 v2, 0x3086

    const/16 v3, 0x3085

    .line 125
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    const/16 v2, 0x314c

    const/4 v3, 0x1

    .line 126
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    :cond_0
    return-void
.end method

.method private generatePredictedPoints()V
    .locals 4

    .line 229
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mDebugMode:Z

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mPredictedPoints:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Ljava/util/List;)V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mPredictedPoints:Ljava/util/List;

    .line 232
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->clearPrediction()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    invoke-interface {v0}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->calculatePrediction()Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 236
    :cond_1
    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Ljava/util/List;)V

    .line 237
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 239
    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mPredictedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mPredictedPoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-direct {p0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->getPredictVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->addPredictionVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V

    .line 242
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-direct {p0, v2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->getPredictVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->addPredictionVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getPredictVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;
    .locals 2

    .line 258
    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->getVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    move-result-object p1

    .line 259
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mDebugMode:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p1, v0, v1, v1}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;->setColor(FFF)V

    :cond_0
    return-object p1
.end method

.method private getVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 251
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v1, v1, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mModelMatrix:[F

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 252
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mX:F

    iget p1, p1, Lcom/brakefield/painter/zeroLatency/InkPoint;->mY:F

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->applyMatrixToPoint([FLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 253
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;-><init>(FF)V

    return-object v0
.end method

.method private updateMatrixAndFBO()V
    .locals 11

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mRotation:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;

    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v3, v3, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    iget-object v4, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v4, v4, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    invoke-direct {v0, v3, v4}, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;-><init>(II)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mFBRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;

    .line 99
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v3, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mProjectionMatrix:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    int-to-float v6, v0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    int-to-float v8, v0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 101
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 102
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v3, v3, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    int-to-float v3, v3

    invoke-static {v0, v2, v1, v3, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 103
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v1, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mRotation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 105
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;

    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v3, v3, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    iget-object v4, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v4, v4, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    invoke-direct {v0, v3, v4}, Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;-><init>(II)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mFBRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkFrameBufferRenderer;

    .line 106
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v3, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mProjectionMatrix:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    int-to-float v6, v0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    int-to-float v8, v0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 107
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 108
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v3, v3, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v4, v4, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    int-to-float v4, v4

    invoke-static {v0, v2, v3, v4, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 109
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v1, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 110
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v1, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mViewMatrix:[F

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addInkPoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/zeroLatency/InkPoint;",
            ">;)V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    .line 218
    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Ljava/util/List;)V

    .line 219
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/zeroLatency/InkPoint;

    .line 220
    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    if-nez v2, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-direct {p0, v2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->getVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->addVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V

    .line 222
    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-direct {p0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->getVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->addVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V

    .line 223
    iput-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    invoke-interface {v0, p1}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->addPoints(Ljava/util/List;)V

    return-void
.end method

.method public beginInking(Lcom/brakefield/painter/zeroLatency/InkPoint;)V
    .locals 3

    .line 193
    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    .line 194
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/brakefield/painter/zeroLatency/InkPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->addPoints(Ljava/util/List;)V

    .line 195
    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    return-void
.end method

.method public beginPanning(FF)V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->disableSingleBuffer()V

    .line 176
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastPanningPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->clearAll()V

    .line 62
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mPredictedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    invoke-interface {v0}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->reset()V

    const/16 v0, 0x4000

    .line 64
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public doPanning(FF)V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget-object v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mModelMatrix:[F

    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastPanningPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastPanningPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, p2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 182
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastPanningPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 183
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastPanningPoint:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public endInking(Lcom/brakefield/painter/zeroLatency/InkPoint;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    .line 201
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->drawFullScreen()V

    .line 204
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mPredictedPoints:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addToScissor(Ljava/util/List;)V

    .line 205
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mPredictedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->clearPrediction()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    if-nez v0, :cond_1

    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-direct {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->getVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->addVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V

    .line 211
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->getVertexFromInkPoint(Lcom/brakefield/painter/zeroLatency/InkPoint;)Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->addVertex(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer$Vertex;)V

    .line 212
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    invoke-interface {p1}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->reset()V

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mLastInkPoint:Lcom/brakefield/painter/zeroLatency/InkPoint;

    return-void
.end method

.method public endPanning()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->enableSingleBuffer()V

    .line 189
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->drawFullScreen()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    .line 142
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p1

    .line 143
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    const/16 v1, 0x3086

    .line 145
    invoke-static {p1, v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkEGL;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I)I

    move-result p1

    const/16 v0, 0x3085

    if-ne p1, v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->drawFrameSingleBufferMode()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->drawFrameDoubleBufferMode()V

    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget p1, p1, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget p1, p1, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    if-eq p1, p3, :cond_1

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-virtual {p1}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->clearAll()V

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iput p2, p1, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mWidth:I

    .line 89
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iput p3, p1, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mHeight:I

    const/16 p1, 0x4000

    .line 90
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 91
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->updateMatrixAndFBO()V

    .line 92
    invoke-direct {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->enableSingleBuffer()V

    .line 93
    iget-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkRender:Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;

    invoke-virtual {p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;->draw()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 73
    new-instance p1, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;

    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-direct {p1, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;)V

    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkRender:Lcom/brakefield/painter/zeroLatency/gpu/InkStrokeRenderer;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mPredictedPoints:Ljava/util/List;

    .line 76
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    .line 77
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    const/16 v1, 0x3033

    invoke-static {p1, v0, p2, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkEGL;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result p1

    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 78
    :goto_0
    iput-boolean p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mSharedBufferModeAvailable:Z

    const/high16 p1, 0x3f800000    # 1.0f

    const p2, 0x3f666666    # 0.9f

    .line 80
    invoke-static {p2, p2, p2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method public rotate(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iget v0, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mRotation:I

    if-eq v0, p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->clearAll()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mVertexBuffer:Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;

    iput p1, v0, Lcom/brakefield/painter/zeroLatency/gpu/VertexBuffer;->mRotation:I

    return-void
.end method

.method public setPredictionTarget(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mInkPredictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    invoke-interface {v0, p1}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->setPredictionTarget(I)V

    return-void
.end method

.method public toggleDebugMode()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mDebugMode:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->mDebugMode:Z

    return-void
.end method

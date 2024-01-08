.class public Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;
.super Landroid/opengl/GLSurfaceView;
.source "InkGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;,
        Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$SingleBufferWindowSurfaceFactory;
    }
.end annotation


# instance fields
.field private mHasRotationSupport:Z

.field private mPredictionTarget:I

.field private final mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;


# direct methods
.method public static synthetic $r8$lambda$wuwzTG51IVrR3ZnZ9rsgZ_ioMRQ(Landroid/widget/Toast;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;-><init>(Landroid/content/Context;Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V
    .locals 1

    .line 149
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 151
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    iget-object p2, p2, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;)V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    goto :goto_0

    .line 153
    :cond_0
    new-instance p2, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-direct {p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;-><init>()V

    iput-object p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    :goto_0
    const/4 p2, 0x2

    .line 156
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->setEGLContextClientVersion(I)V

    .line 157
    new-instance p2, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;

    invoke-direct {p2, p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$MutableRenderBufferConfigChooser;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 159
    new-instance p2, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$SingleBufferWindowSurfaceFactory;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$SingleBufferWindowSurfaceFactory;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$1;)V

    invoke-virtual {p0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    const/4 p2, 0x1

    .line 162
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->setZOrderOnTop(Z)V

    .line 163
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->setFocusable(Z)V

    .line 164
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->setFocusableInTouchMode(Z)V

    const/16 p2, 0x14

    .line 165
    iput p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    .line 166
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {v0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->setPredictionTarget(I)V

    .line 168
    iget-object p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {p0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p2, 0x0

    .line 169
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->setRenderMode(I)V

    .line 170
    invoke-static {p1}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasZeroLatencyWithRotationSupport(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mHasRotationSupport:Z

    return-void
.end method

.method private displayMessage(Ljava/lang/String;)V
    .locals 3

    .line 268
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 270
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Toast;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onKeyDown$10$com-brakefield-painter-zeroLatency-gpu-InkGLView()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    iget v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->setPredictionTarget(I)V

    return-void
.end method

.method synthetic lambda$onKeyDown$7$com-brakefield-painter-zeroLatency-gpu-InkGLView()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->clear()V

    return-void
.end method

.method synthetic lambda$onKeyDown$8$com-brakefield-painter-zeroLatency-gpu-InkGLView()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->toggleDebugMode()V

    return-void
.end method

.method synthetic lambda$onKeyDown$9$com-brakefield-painter-zeroLatency-gpu-InkGLView()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    iget v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->setPredictionTarget(I)V

    return-void
.end method

.method synthetic lambda$onTouchFinger$1$com-brakefield-painter-zeroLatency-gpu-InkGLView(Landroid/view/MotionEvent;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->beginPanning(FF)V

    return-void
.end method

.method synthetic lambda$onTouchFinger$2$com-brakefield-painter-zeroLatency-gpu-InkGLView()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->endPanning()V

    return-void
.end method

.method synthetic lambda$onTouchFinger$3$com-brakefield-painter-zeroLatency-gpu-InkGLView(Landroid/view/MotionEvent;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->doPanning(FF)V

    return-void
.end method

.method synthetic lambda$onTouchStylus$4$com-brakefield-painter-zeroLatency-gpu-InkGLView(Lcom/brakefield/painter/zeroLatency/InkPoint;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->beginInking(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    return-void
.end method

.method synthetic lambda$onTouchStylus$5$com-brakefield-painter-zeroLatency-gpu-InkGLView(Lcom/brakefield/painter/zeroLatency/InkPoint;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->endInking(Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    return-void
.end method

.method synthetic lambda$onTouchStylus$6$com-brakefield-painter-zeroLatency-gpu-InkGLView(Ljava/util/List;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->addInkPoints(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$surfaceChanged$0$com-brakefield-painter-zeroLatency-gpu-InkGLView(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mRenderer:Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLRenderer;->rotate(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 p2, 0x3e

    if-ne p1, p2, :cond_0

    .line 246
    new-instance p1, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->requestRender()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    .line 249
    new-instance p1, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    const-string p1, "Debug Mode Changed"

    .line 250
    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->displayMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x26

    const-string v0, "ms."

    const-string v1, "Prediction target: "

    const/4 v2, 0x0

    if-ne p1, p2, :cond_3

    .line 252
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    add-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    if-gez p1, :cond_2

    .line 253
    iput v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    .line 254
    :cond_2
    new-instance p1, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->displayMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x27

    if-ne p1, p2, :cond_5

    .line 257
    iget p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    const/16 p2, 0x32

    if-le p1, p2, :cond_4

    .line 258
    iput p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    .line 259
    :cond_4
    new-instance p1, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mPredictionTarget:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->displayMessage(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->onTouchFinger(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->onTouchStylus(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchFinger(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 207
    new-instance p1, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 209
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 211
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->requestRender()V

    return v1
.end method

.method public onTouchStylus(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 216
    new-instance v7, Lcom/brakefield/painter/zeroLatency/InkPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/zeroLatency/InkPoint;-><init>(JFFFLjava/lang/Object;)V

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 220
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v7}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    if-ne v0, v8, :cond_1

    .line 224
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, v7}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Lcom/brakefield/painter/zeroLatency/InkPoint;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 228
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v10, v0

    .line 229
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 230
    new-instance v11, Lcom/brakefield/painter/zeroLatency/InkPoint;

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v1

    .line 231
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    .line 232
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v5

    move-object v0, v11

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/painter/zeroLatency/InkPoint;-><init>(JFFFLjava/lang/Object;)V

    .line 233
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 235
    :cond_2
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v9}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 238
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->requestRender()V

    return v8
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->mHasRotationSupport:Z

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 185
    :cond_1
    invoke-static {p0, v0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->setBufferRotation(Landroid/view/SurfaceView;I)V

    .line 188
    new-instance v1, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;I)V

    invoke-virtual {p0, v1}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 190
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

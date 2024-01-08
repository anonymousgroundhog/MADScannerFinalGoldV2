.class public Lcom/brakefield/painter/ui/MainViewX;
.super Landroid/view/SurfaceView;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;


# static fields
.field private static final useLowLatency:Z = true

.field private static final usePredictedSegments:Z = true


# instance fields
.field private callbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

.field private downColor:I

.field private fingerCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

.field private frontBufferRenderer:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/brakefield/painter/SharedMessageHandler;

.field private isDrawing:Z

.field private isStylus:Z

.field private isWaitingToRender:Z

.field private motionEventPredictor:Landroidx/input/motionprediction/MotionEventPredictor;

.field private opacityControl:Lcom/brakefield/painter/OpacityControl;

.field private overrideTwoFingerGesture:Z

.field private pressure:F

.field private final prevNewResetMatrix:Landroid/graphics/Matrix;

.field private final prevOldResetMatrix:Landroid/graphics/Matrix;

.field private queuedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private queuedFrontBufferPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

.field private renderWhenFinished:Z

.field private final renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

.field private screenRotation:F

.field private startX:F

.field private startY:F

.field private stylusCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

.field private surfaceCreated:Z

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private viewModel:Lcom/brakefield/painter/GLRendererViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/brakefield/painter/GLRendererViewModel;)V
    .locals 2

    .line 236
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->prevOldResetMatrix:Landroid/graphics/Matrix;

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->prevNewResetMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isWaitingToRender:Z

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedFrontBufferPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 94
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->renderWhenFinished:Z

    .line 95
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isDrawing:Z

    .line 99
    iput-object v1, p0, Lcom/brakefield/painter/ui/MainViewX;->frontBufferRenderer:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;

    const/4 v1, 0x1

    .line 100
    iput-boolean v1, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceCreated:Z

    .line 101
    iput v0, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceWidth:I

    .line 102
    iput v0, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceHeight:I

    .line 106
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainViewX$1;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->callbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedEvents:Ljava/util/ArrayList;

    .line 237
    iput-object p2, p0, Lcom/brakefield/painter/ui/MainViewX;->viewModel:Lcom/brakefield/painter/GLRendererViewModel;

    .line 238
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/MainViewX;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedEvents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$002(Lcom/brakefield/painter/ui/MainViewX;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/MainViewX;[F)Landroid/graphics/Matrix;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->fromMatrix4x4([F)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->up(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->cancel()V

    return-void
.end method

.method static synthetic access$1200(Lcom/brakefield/painter/ui/MainViewX;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/MainViewX;->overrideTwoFingerGesture:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/brakefield/painter/ui/MainViewX;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/MainViewX;->overrideTwoFingerGesture:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/SharedMessageHandler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/OpacityControl;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainViewX;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/brakefield/painter/ui/MainViewX;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/MainViewX;->isDrawing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->getNormalizedHoverDistanceFromScreen(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/brakefield/painter/ui/MainViewX;)Landroid/graphics/Matrix;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainViewX;->prevOldResetMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/PainterGraphicsRenderer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainViewX;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/brakefield/painter/ui/MainViewX;)Landroid/graphics/Matrix;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainViewX;->prevNewResetMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$302(Lcom/brakefield/painter/ui/MainViewX;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/MainViewX;->isWaitingToRender:Z

    return p1
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/infinitestudio/sketchbook/Pointer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedFrontBufferPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/MainViewX;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/MainViewX;->renderWhenFinished:Z

    return p0
.end method

.method static synthetic access$502(Lcom/brakefield/painter/ui/MainViewX;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/MainViewX;->renderWhenFinished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/MainViewX;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceWidth:I

    return p0
.end method

.method static synthetic access$602(Lcom/brakefield/painter/ui/MainViewX;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/brakefield/painter/ui/MainViewX;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceHeight:I

    return p0
.end method

.method static synthetic access$702(Lcom/brakefield/painter/ui/MainViewX;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/brakefield/painter/ui/MainViewX;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceCreated:Z

    return p0
.end method

.method static synthetic access$802(Lcom/brakefield/painter/ui/MainViewX;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceCreated:Z

    return p1
.end method

.method static synthetic access$900(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/MainViewX;->move(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    return-void
.end method

.method private cancel()V
    .locals 1

    .line 1149
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1169
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isDrawing:Z

    .line 1171
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

.method private fromMatrix4x4([F)Landroid/graphics/Matrix;
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 212
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 213
    aget v2, p1, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/16 v2, 0xc

    .line 214
    aget v2, p1, v2

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 217
    aget v2, p1, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v2, 0x5

    .line 218
    aget v4, p1, v2

    aput v4, v0, v1

    const/16 v1, 0xd

    .line 219
    aget v1, p1, v1

    aput v1, v0, v2

    const/4 v1, 0x6

    .line 222
    aget v2, p1, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 223
    aget v2, p1, v1

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 224
    aget p1, p1, v1

    const/16 v1, 0x8

    aput p1, v0, v1

    .line 226
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 227
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-object p1
.end method

.method private getNormalizedHoverDistanceFromScreen(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 2

    .line 1201
    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->distance:F

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F
    .locals 2

    .line 1132
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->stylusCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->getAdjustedPressure(F)F

    move-result v0

    iput v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    goto :goto_0

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->fingerCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->getAdjustedPressure(F)F

    move-result v0

    iput v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    :goto_0
    if-eqz p2, :cond_1

    .line 1139
    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    iput p1, p0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    goto :goto_1

    .line 1141
    :cond_1
    iget p2, p0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    iget v0, p0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    .line 1144
    :goto_1
    iget p1, p0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    return p1
.end method

.method private getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 4

    .line 1193
    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tilt:F

    float-to-double v0, p1

    const-wide v2, 0x3ff41b2f7ba3bcbeL    # 1.2566370801612687

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method private getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 6

    .line 1175
    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->rotation:F

    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v2

    double-to-float p1, v0

    .line 1178
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v0

    .line 1180
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float p1, p1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 1182
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    float-to-double v1, p1

    float-to-double v3, v0

    .line 1184
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    :goto_0
    sub-double/2addr v1, v3

    double-to-float p1, v1

    float-to-double v0, p1

    .line 1187
    iget p1, p0, Lcom/brakefield/painter/ui/MainViewX;->screenRotation:F

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 243
    new-instance v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    .line 245
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    const-string v1, "STYLUS-COOKER"

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->stylusCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    .line 246
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    const-string v1, "FINGER-COOKER"

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->fingerCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    .line 248
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 p1, 0x1

    .line 250
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->setFocusable(Z)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->setFocusableInTouchMode(Z)V

    .line 253
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setupGestureListeners()V

    .line 255
    invoke-static {p0}, Landroidx/input/motionprediction/MotionEventPredictor;->newInstance(Landroid/view/View;)Landroidx/input/motionprediction/MotionEventPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->motionEventPredictor:Landroidx/input/motionprediction/MotionEventPredictor;

    return-void
.end method

.method private move(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V
    .locals 2

    const/4 v0, 0x1

    .line 1015
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    if-ne p2, p3, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->motionEventPredictor:Landroidx/input/motionprediction/MotionEventPredictor;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->event:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroidx/input/motionprediction/MotionEventPredictor;->record(Landroid/view/MotionEvent;)V

    .line 1021
    :cond_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 1023
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    if-ne p2, p3, :cond_1

    .line 1089
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->renderFrontBufferedLayer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_1
    return-void
.end method

.method private releaseFrontBufferRenderer()V
    .locals 2

    .line 1372
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->frontBufferRenderer:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1373
    invoke-virtual {v0, v1}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->release(Z)V

    const/4 v0, 0x0

    .line 1374
    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->frontBufferRenderer:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;

    :cond_0
    return-void
.end method

.method private setFingerListener()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$4;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;)V

    return-void
.end method

.method private setFourFingerListener()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$11;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$11;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setFourFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;)V

    return-void
.end method

.method private setHoverListener()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$12;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$12;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setHoverListener(Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;)V

    return-void
.end method

.method private setLongpressDragListener()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$13;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$13;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setOnLongpressDragListener(Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;)V

    return-void
.end method

.method private setLongpressListener()V
    .locals 2

    .line 807
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setOnLongpressListener(Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;)V

    return-void
.end method

.method private setMouseScrollListener()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$3;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setMouseScrollListener(Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;)V

    return-void
.end method

.method private setMultiTapListener()V
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setOnDoubleTapListener(Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;)V

    return-void
.end method

.method private setStylusButtonListener()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$6;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$6;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setStylusButtonListener(Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;)V

    return-void
.end method

.method private setStylusListener()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$5;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$5;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setStylusListener(Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;)V

    return-void
.end method

.method private setThreeFingerListener()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$10;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$10;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setThreeFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;)V

    return-void
.end method

.method private setThreeFingerSlideHorizontalListener()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$9;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$9;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setThreeFingerSlideHorizontalListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;)V

    return-void
.end method

.method private setThreeFingerSlideVerticalListener()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$8;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$8;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setThreeFingerSlideVerticalListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;)V

    return-void
.end method

.method private setTopEdgePullListener()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$2;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setTopEdgePullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V

    return-void
.end method

.method private setTwoFingerListener()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$7;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$7;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setTwoFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;)V

    return-void
.end method

.method private setupFrontBufferRenderer()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->viewModel:Lcom/brakefield/painter/GLRendererViewModel;

    iget-object v0, v0, Lcom/brakefield/painter/GLRendererViewModel;->glRenderer:Landroidx/graphics/opengl/GLRenderer;

    invoke-virtual {v0}, Landroidx/graphics/opengl/GLRenderer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->viewModel:Lcom/brakefield/painter/GLRendererViewModel;

    iget-object v0, v0, Lcom/brakefield/painter/GLRendererViewModel;->glRenderer:Landroidx/graphics/opengl/GLRenderer;

    invoke-virtual {v0}, Landroidx/graphics/opengl/GLRenderer;->start()V

    .line 262
    :cond_0
    new-instance v0, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MainViewX;->callbacks:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;

    iget-object v2, p0, Lcom/brakefield/painter/ui/MainViewX;->viewModel:Lcom/brakefield/painter/GLRendererViewModel;

    iget-object v2, v2, Lcom/brakefield/painter/GLRendererViewModel;->glRenderer:Landroidx/graphics/opengl/GLRenderer;

    invoke-direct {v0, p0, v1, v2}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;-><init>(Landroid/view/SurfaceView;Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;Landroidx/graphics/opengl/GLRenderer;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->frontBufferRenderer:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;

    .line 263
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->viewModel:Lcom/brakefield/painter/GLRendererViewModel;

    iget-object v0, v0, Lcom/brakefield/painter/GLRendererViewModel;->glRenderer:Landroidx/graphics/opengl/GLRenderer;

    invoke-virtual {v0}, Landroidx/graphics/opengl/GLRenderer;->start()V

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isWaitingToRender:Z

    const/4 v1, 0x0

    .line 265
    iput-object v1, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedFrontBufferPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 266
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->renderWhenFinished:Z

    .line 267
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isDrawing:Z

    return-void
.end method

.method private setupGestureListeners()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setTopEdgePullListener()V

    .line 276
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setMouseScrollListener()V

    .line 277
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setFingerListener()V

    .line 278
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setStylusListener()V

    .line 279
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setStylusButtonListener()V

    .line 280
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setTwoFingerListener()V

    .line 281
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->setTwoFingerPinchListener()V

    .line 282
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setThreeFingerListener()V

    .line 283
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setThreeFingerSlideVerticalListener()V

    .line 284
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setThreeFingerSlideHorizontalListener()V

    .line 285
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setFourFingerListener()V

    .line 286
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setMultiTapListener()V

    .line 287
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setLongpressListener()V

    .line 288
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setLongpressDragListener()V

    .line 289
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setHoverListener()V

    return-void
.end method

.method private up(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1095
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    .line 1097
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 1099
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1124
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isDrawing:Z

    .line 1126
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->renderFrontBufferedLayer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 1127
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method


# virtual methods
.method public down(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 967
    iget-object v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->event:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainViewX;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 970
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->motionEventPredictor:Landroidx/input/motionprediction/MotionEventPredictor;

    iget-object v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->event:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroidx/input/motionprediction/MotionEventPredictor;->record(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 973
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isDrawing:Z

    .line 975
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    .line 977
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 979
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/MainViewX;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainViewX;->queueEvent(Ljava/lang/Runnable;)V

    .line 1008
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->frontBufferRenderer:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;

    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->renderFrontBufferedLayer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_0
    return-void
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 1223
    iget v0, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 1218
    iget v0, p0, Lcom/brakefield/painter/ui/MainViewX;->surfaceWidth:I

    return v0
.end method

.method getTouchMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1314
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleStylusButton(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 958
    invoke-static {v0, p1}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 959
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    goto :goto_0

    .line 954
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isErasing()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 955
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    goto :goto_0

    .line 950
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canRedo()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setRedo()V

    goto :goto_0

    .line 951
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canUndo()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setUndo()V

    goto :goto_0

    .line 947
    :cond_4
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->toggleInterface()V

    goto :goto_0

    .line 943
    :cond_5
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBlending()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 944
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    :cond_6
    :goto_0
    return-void
.end method

.method synthetic lambda$cancel$10$com-brakefield-painter-ui-MainViewX()V
    .locals 5

    .line 1151
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isStylus:Z

    if-nez v0, :cond_0

    .line 1153
    iget v0, p0, Lcom/brakefield/painter/ui/MainViewX;->downColor:I

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    .line 1157
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1158
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPreviousToolType()I

    move-result v3

    invoke-static {v3}, Lcom/brakefield/painter/PainterLib;->setTool(I)V

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 1159
    invoke-static {v1, v2, v0}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 1160
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    .line 1164
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->cancel()V

    .line 1165
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 1166
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method synthetic lambda$down$7$com-brakefield-painter-ui-MainViewX(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 13

    .line 0
    const/4 v0, 0x0

    .line 981
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 983
    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 984
    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 986
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 988
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/brakefield/painter/ui/MainViewX;->isStylus:Z

    .line 990
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 991
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v8

    .line 992
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v9

    .line 993
    iget v5, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {p0, p1, v4}, Lcom/brakefield/painter/ui/MainViewX;->getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F

    move-result v7

    iget-wide v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/brakefield/painter/PainterLib;->down(FFFFFJZ)V

    goto :goto_0

    .line 995
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 996
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v3

    iput v3, p0, Lcom/brakefield/painter/ui/MainViewX;->downColor:I

    .line 997
    invoke-static {v4, v0}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 999
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 1000
    iput v1, p0, Lcom/brakefield/painter/ui/MainViewX;->startX:F

    .line 1001
    iput v2, p0, Lcom/brakefield/painter/ui/MainViewX;->startY:F

    goto :goto_0

    .line 1003
    :cond_2
    iget v5, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v6, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {p0, p1, v4}, Lcom/brakefield/painter/ui/MainViewX;->getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v12, 0x1

    invoke-static/range {v5 .. v12}, Lcom/brakefield/painter/PainterLib;->down(FFFFFJZ)V

    :goto_0
    return-void
.end method

.method synthetic lambda$move$8$com-brakefield-painter-ui-MainViewX(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1027
    iget v3, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 1028
    iget v4, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 1030
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 1032
    invoke-virtual/range {p1 .. p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eqz v5, :cond_1

    .line 1033
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/MainViewX;->getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v11

    .line 1034
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/MainViewX;->getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v12

    .line 1035
    iget v8, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v9, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v0, v1, v6}, Lcom/brakefield/painter/ui/MainViewX;->getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F

    move-result v10

    iget-wide v13, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcom/brakefield/painter/PainterLib;->move(FFFFFJZ)V

    :cond_0
    :goto_0
    move/from16 v3, p2

    move/from16 v4, p3

    goto :goto_1

    .line 1037
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 1038
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1039
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1040
    iget v6, v0, Lcom/brakefield/painter/ui/MainViewX;->startX:F

    sub-float v6, v3, v6

    iget v8, v0, Lcom/brakefield/painter/ui/MainViewX;->startY:F

    sub-float v8, v4, v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1041
    sget-object v6, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1042
    iput v3, v0, Lcom/brakefield/painter/ui/MainViewX;->startX:F

    .line 1043
    iput v4, v0, Lcom/brakefield/painter/ui/MainViewX;->startY:F

    goto :goto_0

    .line 1046
    :cond_2
    iget v8, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v9, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v0, v1, v6}, Lcom/brakefield/painter/ui/MainViewX;->getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-wide v13, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v15, 0x1

    invoke-static/range {v8 .. v15}, Lcom/brakefield/painter/PainterLib;->move(FFFFFJZ)V

    goto :goto_0

    :goto_1
    if-ne v3, v4, :cond_5

    .line 1052
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPreviewSegmentsStyle()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    .line 1053
    iget-object v3, v0, Lcom/brakefield/painter/ui/MainViewX;->motionEventPredictor:Landroidx/input/motionprediction/MotionEventPredictor;

    invoke-interface {v3}, Landroidx/input/motionprediction/MotionEventPredictor;->predict()Landroid/view/MotionEvent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1057
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 1058
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 1059
    iget v3, v0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    iput v3, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    .line 1063
    iget v3, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 1064
    iget v4, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 1066
    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 1068
    invoke-virtual/range {p1 .. p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1069
    iget v2, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v3, v0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    invoke-static {v2, v1, v3}, Lcom/brakefield/painter/PainterLib;->predict(FFF)V

    goto :goto_2

    .line 1071
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 1072
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1073
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1074
    iget v2, v0, Lcom/brakefield/painter/ui/MainViewX;->startX:F

    sub-float v2, v3, v2

    iget v5, v0, Lcom/brakefield/painter/ui/MainViewX;->startY:F

    sub-float v5, v4, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1075
    sget-object v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1076
    iput v3, v0, Lcom/brakefield/painter/ui/MainViewX;->startX:F

    .line 1077
    iput v4, v0, Lcom/brakefield/painter/ui/MainViewX;->startY:F

    goto :goto_2

    .line 1080
    :cond_4
    iget v2, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v1, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v3, v0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    invoke-static {v2, v1, v3}, Lcom/brakefield/painter/PainterLib;->predict(FFF)V

    :cond_5
    :goto_2
    return-void
.end method

.method synthetic lambda$onAttachedToWindow$13$com-brakefield-painter-ui-MainViewX()V
    .locals 0

    .line 1348
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

.method synthetic lambda$onConfigurationChanged$14$com-brakefield-painter-ui-MainViewX()V
    .locals 0

    .line 1368
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

.method synthetic lambda$onResume$12$com-brakefield-painter-ui-MainViewX()V
    .locals 0

    .line 1331
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    return-void
.end method

.method synthetic lambda$requestRender$11$com-brakefield-painter-ui-MainViewX()V
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->startAnimation()V

    return-void
.end method

.method synthetic lambda$setLongpressListener$5$com-brakefield-painter-ui-MainViewX(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 811
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method synthetic lambda$setLongpressListener$6$com-brakefield-painter-ui-MainViewX(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z
    .locals 3

    .line 808
    sget v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->cancel()V

    .line 811
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->flip(FFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 812
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return v2
.end method

.method synthetic lambda$setMultiTapListener$2$com-brakefield-painter-ui-MainViewX(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 794
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method synthetic lambda$setMultiTapListener$3$com-brakefield-painter-ui-MainViewX(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 798
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method synthetic lambda$setMultiTapListener$4$com-brakefield-painter-ui-MainViewX(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 784
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 785
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 787
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v0}, Lcom/brakefield/painter/PainterLib;->doubleTap(FF)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 791
    :cond_1
    sget v0, Lcom/brakefield/painter/ui/MainView;->doubleTapMode:I

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    return v1

    .line 797
    :cond_2
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->cancel()V

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    new-instance v1, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-static {v0, p1, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->flip(FFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 799
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return v2

    .line 793
    :cond_3
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->cancel()V

    .line 794
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropLeft()I

    move-result p1

    int-to-float v3, p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropTop()I

    move-result p1

    int-to-float v4, p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropRight()I

    move-result p1

    int-to-float v5, p1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropBottom()I

    move-result p1

    int-to-float v6, p1

    const/4 v7, 0x0

    new-instance v8, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-static/range {v3 .. v8}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return v2
.end method

.method synthetic lambda$setTwoFingerPinchListener$0$com-brakefield-painter-ui-MainViewX(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 521
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method synthetic lambda$setTwoFingerPinchListener$1$com-brakefield-painter-ui-MainViewX()V
    .locals 7

    .line 521
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropTop()I

    move-result v0

    int-to-float v2, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropRight()I

    move-result v0

    int-to-float v3, v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCropBottom()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    new-instance v6, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-static/range {v1 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method synthetic lambda$up$9$com-brakefield-painter-ui-MainViewX(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 20

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/ui/MainViewX;->getTouchMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 1103
    invoke-virtual/range {p1 .. p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/MainViewX;->getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v6

    .line 1106
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/MainViewX;->getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v7

    .line 1108
    iget v3, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v4, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v5, v0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    iget-wide v8, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/brakefield/painter/PainterLib;->up(FFFFFJZ)V

    goto :goto_0

    .line 1111
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v2

    if-nez v2, :cond_1

    .line 1112
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 1113
    iget v4, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v5, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v6, v0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v9, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v11, 0x1

    invoke-static/range {v4 .. v11}, Lcom/brakefield/painter/PainterLib;->up(FFFFFJZ)V

    goto :goto_0

    .line 1116
    :cond_1
    iget v12, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v13, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v14, v0, Lcom/brakefield/painter/ui/MainViewX;->pressure:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-wide v1, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/16 v19, 0x1

    move-wide/from16 v17, v1

    invoke-static/range {v12 .. v19}, Lcom/brakefield/painter/PainterLib;->up(FFFFFJZ)V

    .line 1119
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/brakefield/painter/ui/MainViewX;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 1121
    iget-object v1, v0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1337
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    const-string v0, "MAINVIEWX - onAttachedToWindow"

    .line 1339
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 1342
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPreviewSegmentsStyle(I)V

    .line 1345
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setupFrontBufferRenderer()V

    .line 1347
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainViewX;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1364
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "MAINVIEWX - onConfigurationChanged"

    .line 1366
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 1368
    new-instance p1, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainViewX;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const-string v0, "MAINVIEWX - onDetachedToWindow"

    .line 1355
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 1357
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->releaseFrontBufferRenderer()V

    .line 1359
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 914
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    const-string v0, "MAINVIEWX - onPause"

    .line 1319
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 1321
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->releaseFrontBufferRenderer()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lorg/ejml/dense/block/decomposition/hessenberg/Ia/xeDaWsHfrd;->RqNeyHXGRQFKz:Ljava/lang/String;

    .line 1326
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 1328
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainViewX;->setupFrontBufferRenderer()V

    .line 1330
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainViewX;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 929
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 920
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 921
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerContentReceiver()V
    .locals 1

    const-string v0, "ADD SUPPORT FOR DRAG AND DROP"

    .line 1292
    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Todo;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public renderFrontBufferedLayer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 1240
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->useSingleBufferMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->renderMultiBufferedLayer()V

    goto :goto_0

    .line 1243
    :cond_0
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isWaitingToRender:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1244
    iput-boolean v1, p0, Lcom/brakefield/painter/ui/MainViewX;->renderWhenFinished:Z

    .line 1245
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedFrontBufferPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1247
    iput-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->queuedFrontBufferPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 1248
    iput-boolean v1, p0, Lcom/brakefield/painter/ui/MainViewX;->renderWhenFinished:Z

    const/4 v0, 0x1

    .line 1249
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isWaitingToRender:Z

    .line 1251
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->frontBufferRenderer:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;

    invoke-virtual {v0, p1}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->renderFrontBufferedLayer(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public renderMultiBufferedLayer()V
    .locals 3

    .line 1260
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->frontBufferRenderer:Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;

    if-eqz v0, :cond_1

    .line 1261
    iget-boolean v1, p0, Lcom/brakefield/painter/ui/MainViewX;->isWaitingToRender:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1262
    iput-boolean v2, p0, Lcom/brakefield/painter/ui/MainViewX;->renderWhenFinished:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1264
    iput-boolean v1, p0, Lcom/brakefield/painter/ui/MainViewX;->renderWhenFinished:Z

    .line 1265
    iput-boolean v2, p0, Lcom/brakefield/painter/ui/MainViewX;->isWaitingToRender:Z

    .line 1266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/graphics/lowlatency/GLFrontBufferedRenderer;->renderMultiBufferedLayer(Ljava/util/Collection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1227
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isDrawing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isWaitingToRender:Z

    if-nez v0, :cond_0

    .line 1228
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainViewX;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setOpacityControl(Lcom/brakefield/painter/OpacityControl;)V
    .locals 0

    .line 1282
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    return-void
.end method

.method public setScreenRotation(I)V
    .locals 0

    int-to-float p1, p1

    .line 1277
    iput p1, p0, Lcom/brakefield/painter/ui/MainViewX;->screenRotation:F

    return-void
.end method

.method public setSharedMessageHandler(Lcom/brakefield/painter/SharedMessageHandler;)V
    .locals 1

    .line 1286
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    .line 1287
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->setSharedMessageHandler(Lcom/brakefield/painter/SharedMessageHandler;)V

    return-void
.end method

.method public setTwoFingerPinchListener()V
    .locals 1

    .line 521
    new-instance v0, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainViewX$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/ui/MainViewX;)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->pinchListener:Lcom/brakefield/infinitestudio/sketchbook/tools/Hand$OnPinchListener;

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 1234
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/MainViewX;->isDrawing:Z

    if-nez v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainViewX;->renderMultiBufferedLayer()V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 0

    return-void
.end method

.class public Lcom/brakefield/painter/ui/MainView;
.super Landroid/opengl/GLSurfaceView;
.source "MainView.java"

# interfaces
.implements Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;,
        Lcom/brakefield/painter/ui/MainView$SingleBufferWindowSurfaceFactory;
    }
.end annotation


# static fields
.field public static doubleTapMode:I

.field public static expressKeysMode:I

.field public static longPressMode:I

.field public static stylusPrimaryButton:I

.field public static stylusSecondaryButton:I

.field public static volumeMode:I


# instance fields
.field private controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

.field private downColor:I

.field private fingerCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

.field private handler:Lcom/brakefield/painter/SharedMessageHandler;

.field private isStylus:Z

.field private mHasRotationSupport:Z

.field private opacityControl:Lcom/brakefield/painter/OpacityControl;

.field private overrideTwoFingerGesture:Z

.field private pressure:F

.field private final prevNewResetMatrix:Landroid/graphics/Matrix;

.field private final prevOldResetMatrix:Landroid/graphics/Matrix;

.field private renderMode:I

.field private renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

.field private screenRotation:F

.field private startX:F

.field private startY:F

.field private stylusCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

.field private usesStencil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainView;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/brakefield/painter/ui/MainView;->renderMode:I

    .line 91
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainView;->prevOldResetMatrix:Landroid/graphics/Matrix;

    .line 92
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainView;->prevNewResetMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainView;->usesStencil:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p2, Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-direct {p2, p0}, Lcom/brakefield/painter/PainterGraphicsRenderer;-><init>(Lcom/brakefield/painter/PainterGraphicsRenderer$RenderView;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/MainView;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    const/4 p2, 0x1

    .line 74
    iput p2, p0, Lcom/brakefield/painter/ui/MainView;->renderMode:I

    .line 91
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/brakefield/painter/ui/MainView;->prevOldResetMatrix:Landroid/graphics/Matrix;

    .line 92
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/brakefield/painter/ui/MainView;->prevNewResetMatrix:Landroid/graphics/Matrix;

    const/4 p2, 0x0

    .line 96
    iput-boolean p2, p0, Lcom/brakefield/painter/ui/MainView;->usesStencil:Z

    .line 112
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->move(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->up(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/brakefield/painter/ui/MainView;)Landroid/graphics/Matrix;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainView;->prevNewResetMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/brakefield/painter/ui/MainView;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/MainView;->usesStencil:Z

    return p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/MainView;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->cancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/MainView;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/MainView;->overrideTwoFingerGesture:Z

    return p0
.end method

.method static synthetic access$302(Lcom/brakefield/painter/ui/MainView;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/MainView;->overrideTwoFingerGesture:Z

    return p1
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/SharedMessageHandler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/MainView;)Lcom/brakefield/painter/OpacityControl;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainView;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->getNormalizedHoverDistanceFromScreen(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/brakefield/painter/ui/MainView;)Landroid/graphics/Matrix;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/brakefield/painter/ui/MainView;->prevOldResetMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private cancel()V
    .locals 1

    .line 998
    new-instance v0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getNormalizedHoverDistanceFromScreen(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 2

    .line 1044
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

    .line 981
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->stylusCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->getAdjustedPressure(F)F

    move-result v0

    iput v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    goto :goto_0

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->fingerCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;->getAdjustedPressure(F)F

    move-result v0

    iput v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    :goto_0
    if-eqz p2, :cond_1

    .line 988
    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    iput p1, p0, Lcom/brakefield/painter/ui/MainView;->pressure:F

    goto :goto_1

    .line 990
    :cond_1
    iget p2, p0, Lcom/brakefield/painter/ui/MainView;->pressure:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    iget v0, p0, Lcom/brakefield/painter/ui/MainView;->pressure:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/brakefield/painter/ui/MainView;->pressure:F

    .line 993
    :goto_1
    iget p1, p0, Lcom/brakefield/painter/ui/MainView;->pressure:F

    return p1
.end method

.method private getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F
    .locals 4

    .line 1036
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

    .line 1020
    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->rotation:F

    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v2

    double-to-float p1, v0

    .line 1023
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotation()F

    move-result v0

    .line 1025
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->isFlipped()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float p1, p1

    float-to-double v1, p1

    float-to-double v3, v0

    .line 1027
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    float-to-double v1, p1

    float-to-double v3, v0

    .line 1028
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    :goto_0
    sub-double/2addr v1, v3

    double-to-float p1, v1

    float-to-double v0, p1

    .line 1030
    iget p1, p0, Lcom/brakefield/painter/ui/MainView;->screenRotation:F

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
    .locals 8

    .line 117
    new-instance v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    .line 119
    invoke-static {p1}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasZeroLatencyWithRotationSupport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/brakefield/painter/ui/MainView;->mHasRotationSupport:Z

    .line 121
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    const-string v1, "STYLUS-COOKER"

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainView;->stylusCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    .line 122
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    const-string v1, "FINGER-COOKER"

    invoke-direct {v0, p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MainView;->fingerCooker:Lcom/brakefield/infinitestudio/sketchbook/PressureCooker;

    const/4 v0, 0x3

    .line 124
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainView;->setEGLContextClientVersion(I)V

    .line 126
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasZeroLatencySupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/MainView$MutableRenderBufferConfigChooser;-><init>(Lcom/brakefield/painter/ui/MainView;Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 132
    iget-boolean p1, p0, Lcom/brakefield/painter/ui/MainView;->usesStencil:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    move v7, p1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/brakefield/painter/ui/MainView;->setEGLConfigChooser(IIIIII)V

    .line 133
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/brakefield/painter/PainterZeroLatency;->setMode(Landroid/content/Context;I)V

    .line 136
    :goto_1
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 137
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x1

    .line 138
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainView;->setRenderMode(I)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainView;->setFocusable(Z)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainView;->setFocusableInTouchMode(Z)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainView;->setPreserveEGLContextOnPause(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    .line 146
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setupGestureListeners()V

    return-void
.end method

.method private move(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 1

    const/4 v0, 0x1

    .line 905
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    .line 907
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 909
    new-instance v0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 942
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    return-void
.end method

.method private setDoubleTapListener()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setOnDoubleTapListener(Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;)V

    return-void
.end method

.method private setFingerListener()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$3;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$3;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;)V

    return-void
.end method

.method private setFourFingerListener()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$10;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$10;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setFourFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;)V

    return-void
.end method

.method private setHoverListener()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$11;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$11;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setHoverListener(Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;)V

    return-void
.end method

.method private setLongpressDragListener()V
    .locals 2

    .line 708
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$12;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$12;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setOnLongpressDragListener(Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;)V

    return-void
.end method

.method private setLongpressListener()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setOnLongpressListener(Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;)V

    return-void
.end method

.method private setMouseScrollListener()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$2;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$2;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setMouseScrollListener(Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;)V

    return-void
.end method

.method private setStylusButtonListener()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$5;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$5;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setStylusButtonListener(Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;)V

    return-void
.end method

.method private setStylusListener()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$4;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$4;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setStylusListener(Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;)V

    return-void
.end method

.method private setThreeFingerListener()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$9;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$9;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setThreeFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;)V

    return-void
.end method

.method private setThreeFingerSlideHorizontalListener()V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$8;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$8;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setThreeFingerSlideHorizontalListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;)V

    return-void
.end method

.method private setThreeFingerSlideVerticalListener()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$7;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$7;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setThreeFingerSlideVerticalListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;)V

    return-void
.end method

.method private setTopEdgePullListener()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$1;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setTopEdgePullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V

    return-void
.end method

.method private setTwoFingerListener()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    new-instance v1, Lcom/brakefield/painter/ui/MainView$6;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$6;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setTwoFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;)V

    return-void
.end method

.method private setupGestureListeners()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setTopEdgePullListener()V

    .line 151
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setMouseScrollListener()V

    .line 152
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setFingerListener()V

    .line 153
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setStylusListener()V

    .line 154
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setStylusButtonListener()V

    .line 155
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setTwoFingerListener()V

    .line 156
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->setTwoFingerPinchListener()V

    .line 157
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setThreeFingerListener()V

    .line 158
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setThreeFingerSlideVerticalListener()V

    .line 159
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setThreeFingerSlideHorizontalListener()V

    .line 160
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setFourFingerListener()V

    .line 161
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setDoubleTapListener()V

    .line 162
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setLongpressListener()V

    .line 163
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setLongpressDragListener()V

    .line 164
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->setHoverListener()V

    return-void
.end method

.method private up(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 1

    const/4 v0, 0x1

    .line 947
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    .line 949
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 951
    new-instance v0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 976
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    return-void
.end method


# virtual methods
.method public down(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    const/4 v0, 0x1

    .line 856
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    .line 858
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    .line 860
    sget v0, Lcom/brakefield/painter/PainterZeroLatency;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 861
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->prepareSingleBufferMode()V

    .line 864
    :cond_0
    new-instance v0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/MainView;Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 900
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    return-void
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 1061
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
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

    .line 848
    invoke-static {v0, p1}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 849
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    goto :goto_0

    .line 844
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isErasing()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 845
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    goto :goto_0

    .line 840
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canRedo()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setRedo()V

    goto :goto_0

    .line 841
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->canUndo()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->setUndo()V

    goto :goto_0

    .line 837
    :cond_4
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->toggleInterface()V

    goto :goto_0

    .line 833
    :cond_5
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBlending()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 834
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    :cond_6
    :goto_0
    return-void
.end method

.method synthetic lambda$cancel$10$com-brakefield-painter-ui-MainView()V
    .locals 5

    .line 1000
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/MainView;->isStylus:Z

    if-nez v0, :cond_0

    .line 1002
    iget v0, p0, Lcom/brakefield/painter/ui/MainView;->downColor:I

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    .line 1006
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1007
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

    .line 1008
    invoke-static {v1, v2, v0}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 1009
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    .line 1013
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->cancel()V

    .line 1014
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 1015
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method synthetic lambda$down$7$com-brakefield-painter-ui-MainView(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 14

    .line 0
    const/4 v0, 0x0

    .line 866
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 868
    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 869
    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 871
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 873
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/brakefield/painter/ui/MainView;->isStylus:Z

    .line 875
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPreviewSegmentsStyle()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    .line 876
    invoke-static {}, Lcom/brakefield/painter/PainterZeroLatency;->getPredictor()Lcom/brakefield/painter/zeroLatency/InkPredictor;

    move-result-object v3

    .line 877
    invoke-interface {v3}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->reset()V

    .line 878
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 879
    new-instance v13, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget-wide v7, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    iget v9, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    const/4 v12, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/brakefield/painter/zeroLatency/InkPoint;-><init>(JFFFLjava/lang/Object;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    invoke-interface {v3, v4}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->addPoints(Ljava/util/List;)V

    .line 883
    :cond_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 884
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v9

    .line 885
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v10

    .line 886
    iget v6, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v7, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {p0, p1, v5}, Lcom/brakefield/painter/ui/MainView;->getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F

    move-result v8

    iget-wide v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lcom/brakefield/painter/PainterLib;->down(FFFFFJZ)V

    goto :goto_0

    .line 888
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 889
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v3

    iput v3, p0, Lcom/brakefield/painter/ui/MainView;->downColor:I

    .line 890
    invoke-static {v5, v0}, Lcom/brakefield/painter/PainterLib;->setEyedropper(ZI)V

    .line 892
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 893
    iput v1, p0, Lcom/brakefield/painter/ui/MainView;->startX:F

    .line 894
    iput v2, p0, Lcom/brakefield/painter/ui/MainView;->startY:F

    goto :goto_0

    .line 896
    :cond_3
    iget v6, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v7, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {p0, p1, v5}, Lcom/brakefield/painter/ui/MainView;->getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v13, 0x1

    invoke-static/range {v6 .. v13}, Lcom/brakefield/painter/PainterLib;->down(FFFFFJZ)V

    :goto_0
    return-void
.end method

.method synthetic lambda$move$8$com-brakefield-painter-ui-MainView(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 12

    .line 911
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 913
    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 914
    iget v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 916
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 918
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPreviewSegmentsStyle()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 920
    new-instance v3, Lcom/brakefield/painter/zeroLatency/InkPoint;

    iget-wide v5, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    iget v7, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v8, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v9, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/brakefield/painter/zeroLatency/InkPoint;-><init>(JFFFLjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-static {}, Lcom/brakefield/painter/PainterZeroLatency;->getPredictor()Lcom/brakefield/painter/zeroLatency/InkPredictor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->addPoints(Ljava/util/List;)V

    .line 924
    :cond_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 925
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v7

    .line 926
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/MainView;->getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v8

    .line 927
    iget v4, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v5, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {p0, p1, v3}, Lcom/brakefield/painter/ui/MainView;->getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F

    move-result v6

    iget-wide v9, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/brakefield/painter/PainterLib;->move(FFFFFJZ)V

    goto :goto_0

    .line 929
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 930
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result p1

    if-nez p1, :cond_3

    .line 931
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 932
    iget v0, p0, Lcom/brakefield/painter/ui/MainView;->startX:F

    sub-float v0, v1, v0

    iget v3, p0, Lcom/brakefield/painter/ui/MainView;->startY:F

    sub-float v3, v2, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 933
    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 934
    iput v1, p0, Lcom/brakefield/painter/ui/MainView;->startX:F

    .line 935
    iput v2, p0, Lcom/brakefield/painter/ui/MainView;->startY:F

    goto :goto_0

    .line 938
    :cond_2
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v4, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {p0, p1, v3}, Lcom/brakefield/painter/ui/MainView;->getPressure(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Z)F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v10, 0x1

    move v3, v0

    invoke-static/range {v3 .. v10}, Lcom/brakefield/painter/PainterLib;->move(FFFFFJZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$onConfigurationChanged$11$com-brakefield-painter-ui-MainView()V
    .locals 0

    .line 1283
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->requestRender()V

    return-void
.end method

.method synthetic lambda$setDoubleTapListener$2$com-brakefield-painter-ui-MainView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 682
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method synthetic lambda$setDoubleTapListener$3$com-brakefield-painter-ui-MainView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 686
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method synthetic lambda$setDoubleTapListener$4$com-brakefield-painter-ui-MainView(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 674
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 675
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/geometry/Point;->transform(Landroid/graphics/Matrix;)V

    .line 677
    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2, v0}, Lcom/brakefield/painter/PainterLib;->doubleTap(FF)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 679
    :cond_1
    sget v0, Lcom/brakefield/painter/ui/MainView;->doubleTapMode:I

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    return v1

    .line 685
    :cond_2
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->cancel()V

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    new-instance v1, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-static {v0, p1, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->flip(FFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 687
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return v2

    .line 681
    :cond_3
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->cancel()V

    .line 682
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

    new-instance v8, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-static/range {v3 .. v8}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return v2
.end method

.method synthetic lambda$setLongpressListener$5$com-brakefield-painter-ui-MainView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 699
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method synthetic lambda$setLongpressListener$6$com-brakefield-painter-ui-MainView(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z
    .locals 3

    .line 696
    sget v0, Lcom/brakefield/painter/ui/MainView;->longPressMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MainView;->cancel()V

    .line 699
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    new-instance v1, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->flip(FFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 700
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return v2
.end method

.method synthetic lambda$setTwoFingerPinchListener$0$com-brakefield-painter-ui-MainView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 394
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method synthetic lambda$setTwoFingerPinchListener$1$com-brakefield-painter-ui-MainView()V
    .locals 7

    .line 394
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

    new-instance v6, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-static/range {v1 .. v6}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->reset(FFFFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method synthetic lambda$up$9$com-brakefield-painter-ui-MainView(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 20

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 953
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getReverseMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->transform(Landroid/graphics/Matrix;)V

    .line 955
    invoke-virtual/range {p1 .. p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/MainView;->getTiltAngleFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v6

    .line 958
    invoke-direct/range {p0 .. p1}, Lcom/brakefield/painter/ui/MainView;->getTiltOrientationFromPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)F

    move-result v7

    .line 960
    iget v3, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v4, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v5, v0, Lcom/brakefield/painter/ui/MainView;->pressure:F

    iget-wide v8, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/brakefield/painter/PainterLib;->up(FFFFFJZ)V

    goto :goto_0

    .line 963
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v2

    if-nez v2, :cond_1

    .line 964
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getFingerMode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 965
    iget v4, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v5, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v6, v0, Lcom/brakefield/painter/ui/MainView;->pressure:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-wide v9, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/4 v11, 0x1

    invoke-static/range {v4 .. v11}, Lcom/brakefield/painter/PainterLib;->up(FFFFFJZ)V

    goto :goto_0

    .line 968
    :cond_1
    iget v12, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v13, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v14, v0, Lcom/brakefield/painter/ui/MainView;->pressure:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-wide v1, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    const/16 v19, 0x1

    move-wide/from16 v17, v1

    invoke-static/range {v12 .. v19}, Lcom/brakefield/painter/PainterLib;->up(FFFFFJZ)V

    .line 971
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/brakefield/painter/ui/MainView;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/brakefield/painter/PainterGraphicsRenderer;->needsUpdate:Z

    .line 973
    iget-object v1, v0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {v1}, Lcom/brakefield/painter/SharedMessageHandler;->updateUI()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1282
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1283
    new-instance p1, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 800
    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 815
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_1

    .line 816
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPreviewSegmentsStyle()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 817
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MainView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 820
    :cond_2
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 805
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowFocusChanged(Z)V

    .line 806
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->controller:Lcom/brakefield/infinitestudio/gestures/GestureViewController;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public registerContentReceiver()V
    .locals 0

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1071
    iget v0, p0, Lcom/brakefield/painter/ui/MainView;->renderMode:I

    if-nez v0, :cond_0

    .line 1072
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-virtual {v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->startAnimation()V

    return-void
.end method

.method public requestRenderFromSuper()V
    .locals 1

    .line 1089
    iget v0, p0, Lcom/brakefield/painter/ui/MainView;->renderMode:I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public setOpacityControl(Lcom/brakefield/painter/OpacityControl;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1094
    iget v0, p0, Lcom/brakefield/painter/ui/MainView;->renderMode:I

    if-eq v0, p1, :cond_0

    .line 1095
    iput p1, p0, Lcom/brakefield/painter/ui/MainView;->renderMode:I

    .line 1096
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public setScreenRotation(I)V
    .locals 0

    int-to-float p1, p1

    .line 1101
    iput p1, p0, Lcom/brakefield/painter/ui/MainView;->screenRotation:F

    return-void
.end method

.method public setSharedMessageHandler(Lcom/brakefield/painter/SharedMessageHandler;)V
    .locals 1

    .line 1256
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainView;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    .line 1257
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainView;->renderer:Lcom/brakefield/painter/PainterGraphicsRenderer;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->setSharedMessageHandler(Lcom/brakefield/painter/SharedMessageHandler;)V

    return-void
.end method

.method public setTwoFingerPinchListener()V
    .locals 1

    .line 393
    new-instance v0, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MainView$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/MainView;)V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/tools/Hand;->pinchListener:Lcom/brakefield/infinitestudio/sketchbook/tools/Hand$OnPinchListener;

    return-void
.end method

.method public startAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 1079
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainView;->setRenderMode(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->requestRenderFromSuper()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1085
    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/MainView;->setRenderMode(I)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9

    .line 1219
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/MainView;->mHasRotationSupport:Z

    if-eqz v0, :cond_5

    .line 1221
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/MainView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.os.SystemProperties"

    .line 1226
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "get"

    new-array v7, v3, [Ljava/lang/Class;

    .line 1227
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "ro.surface_flinger.primary_display_orientation"

    aput-object v7, v6, v4

    const-string v7, "ORIENTATION_0"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    .line 1228
    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ORIENTATION_90"

    .line 1230
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const-string v6, "ORIENTATION_180"

    .line 1231
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    const-string v6, "ORIENTATION_270"

    .line 1232
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_0

    :catch_0
    :cond_2
    move v5, v4

    :goto_0
    add-int/2addr v5, v0

    .line 1240
    rem-int/lit8 v5, v5, 0x4

    if-ne v5, v3, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    if-ne v5, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v5

    .line 1246
    :goto_1
    invoke-static {p0, v2}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->setBufferRotation(Landroid/view/SurfaceView;I)V

    .line 1248
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

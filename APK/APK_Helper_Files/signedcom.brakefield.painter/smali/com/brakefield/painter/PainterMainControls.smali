.class public Lcom/brakefield/painter/PainterMainControls;
.super Lcom/brakefield/infinitestudio/MainControls;
.source "PainterMainControls.java"


# static fields
.field public static final DOUBLE_TAP_FIT:I = 0x1

.field public static final DOUBLE_TAP_FLIP:I = 0x2

.field public static final DOUBLE_TAP_NONE:I = 0x0

.field public static final GESTURE_FIT:I = 0x1

.field public static final GESTURE_FLIP:I = 0x2

.field public static final GESTURE_NONE:I = 0x0

.field public static final LONGPRESS_EYEDROPPER:I = 0x1

.field public static final LONGPRESS_FIT:I = 0x2

.field public static final LONGPRESS_FLIP:I = 0x3

.field public static final LONGPRESS_NONE:I = 0x0

.field public static final STYLUS_1_BLEND:I = 0x1

.field public static final STYLUS_1_ERASER:I = 0x4

.field public static final STYLUS_1_EYEDROPPER:I = 0x5

.field public static final STYLUS_1_MENUS:I = 0x2

.field public static final STYLUS_1_NONE:I = 0x0

.field public static final STYLUS_1_UNDO:I = 0x3

.field public static final VOLUME_LAYERS:I = 0x2

.field public static final VOLUME_NONE:I = 0x0

.field public static final VOLUME_OPACITY:I = 0x4

.field public static final VOLUME_SIZE:I = 0x3

.field public static final VOLUME_UNDO:I = 0x1


# instance fields
.field private final handler:Lcom/brakefield/painter/SharedMessageHandler;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/SharedMessageHandler;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/MainControls;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    return-void
.end method

.method private setupVolumKeys(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getDefaultExpressFunction()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultFingerFunction()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultStylusButton1Function()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultStylusButton2Function()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultVolumeFunction()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleGestureEvent(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sget p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sget v2, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    new-instance v1, Lcom/brakefield/painter/PainterMainControls$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/PainterMainControls$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/PainterMainControls;)V

    invoke-static {p1, v2, v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->flip(FFZLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance p1, Lcom/brakefield/painter/PainterMainControls$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/PainterMainControls$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/PainterMainControls;)V

    invoke-static {p1}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->animateCenter(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void
.end method

.method public handleVolumeDown(I)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/brakefield/painter/PainterMainControls;->setupVolumKeys(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->decreaseOpacity()V

    goto :goto_0

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->decreaseSize()V

    goto :goto_0

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->selectLayerBelow()V

    goto :goto_0

    .line 48
    :cond_4
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->undoPressed()V

    :goto_0
    return-void
.end method

.method public handleVolumeUp(I)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/brakefield/painter/PainterMainControls;->setupVolumKeys(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->increaseOpacity()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->increaseSize()V

    goto :goto_0

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->selectLayerAbove()V

    goto :goto_0

    .line 69
    :cond_4
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->redoPressed()V

    :goto_0
    return-void
.end method

.method synthetic lambda$handleGestureEvent$0$com-brakefield-painter-PainterMainControls(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

.method synthetic lambda$handleGestureEvent$1$com-brakefield-painter-PainterMainControls(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/brakefield/painter/PainterMainControls;->handler:Lcom/brakefield/painter/SharedMessageHandler;

    invoke-interface {p1}, Lcom/brakefield/painter/SharedMessageHandler;->requestRender()V

    return-void
.end method

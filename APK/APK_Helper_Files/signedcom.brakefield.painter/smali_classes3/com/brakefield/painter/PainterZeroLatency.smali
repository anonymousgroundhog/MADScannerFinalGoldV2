.class public Lcom/brakefield/painter/PainterZeroLatency;
.super Ljava/lang/Object;
.source "PainterZeroLatency.java"


# static fields
.field public static final OFF:I = 0x0

.field public static final PREFS_USE_LOW_LATENCY_RENDERER:Ljava/lang/String; = "PREFS_USE_LOW_LATENCY_RENDERER_1"

.field public static final SINGLE_BUFFER:I = 0x2

.field public static mode:I = 0x2

.field private static predictionTarget:I = 0x19

.field private static predictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

.field public static sharedBufferModeAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;

    sget v1, Lcom/brakefield/painter/PainterZeroLatency;->predictionTarget:I

    invoke-direct {v0, v1}, Lcom/brakefield/painter/zeroLatency/KalmanInkPredictorModified;-><init>(I)V

    sput-object v0, Lcom/brakefield/painter/PainterZeroLatency;->predictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/brakefield/painter/PainterZeroLatency;->sharedBufferModeAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPredictionTarget()I
    .locals 1

    .line 53
    sget v0, Lcom/brakefield/painter/PainterZeroLatency;->predictionTarget:I

    return v0
.end method

.method public static getPredictor()Lcom/brakefield/painter/zeroLatency/InkPredictor;
    .locals 1

    .line 49
    sget-object v0, Lcom/brakefield/painter/PainterZeroLatency;->predictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    return-object v0
.end method

.method public static setMode(Landroid/content/Context;I)V
    .locals 0

    .line 36
    sput p1, Lcom/brakefield/painter/PainterZeroLatency;->mode:I

    .line 37
    invoke-static {p0}, Lcom/brakefield/painter/PainterZeroLatency;->update(Landroid/content/Context;)V

    return-void
.end method

.method public static setPredictionTarget(I)V
    .locals 1

    .line 57
    sput p0, Lcom/brakefield/painter/PainterZeroLatency;->predictionTarget:I

    .line 58
    sget-object v0, Lcom/brakefield/painter/PainterZeroLatency;->predictor:Lcom/brakefield/painter/zeroLatency/InkPredictor;

    invoke-interface {v0, p0}, Lcom/brakefield/painter/zeroLatency/InkPredictor;->setPredictionTarget(I)V

    return-void
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-static {p0}, Lcom/brakefield/painter/zeroLatency/ZeroLatencyCompat;->hasZeroLatencySupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 30
    sput v0, Lcom/brakefield/painter/PainterZeroLatency;->mode:I

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/brakefield/painter/PainterZeroLatency;->update(Landroid/content/Context;)V

    return-void
.end method

.method private static update(Landroid/content/Context;)V
    .locals 2

    .line 41
    sget v0, Lcom/brakefield/painter/PainterZeroLatency;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 42
    invoke-static {p0}, Lcom/brakefield/infinitestudio/ChromebookUtils;->isChromebook(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 43
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setPreviewSegmentsStyle(I)V

    :cond_0
    return-void
.end method

.class public final synthetic Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/graphics/MultiBufferedCanvasRenderer;

.field public final synthetic f$1:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

.field public final synthetic f$2:Landroidx/graphics/surface/SurfaceControlCompat;

.field public final synthetic f$3:Landroidx/graphics/surface/SurfaceControlCompat;

.field public final synthetic f$4:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/graphics/MultiBufferedCanvasRenderer;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$0:Landroidx/graphics/MultiBufferedCanvasRenderer;

    iput-object p2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$1:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    iput-object p3, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$2:Landroidx/graphics/surface/SurfaceControlCompat;

    iput-object p4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$3:Landroidx/graphics/surface/SurfaceControlCompat;

    iput-object p5, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$4:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    iput p6, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$0:Landroidx/graphics/MultiBufferedCanvasRenderer;

    iget-object v1, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$1:Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;

    iget-object v2, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$2:Landroidx/graphics/surface/SurfaceControlCompat;

    iget-object v3, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$3:Landroidx/graphics/surface/SurfaceControlCompat;

    iget-object v4, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$4:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    iget v5, p0, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer$$ExternalSyntheticLambda3;->f$5:I

    invoke-static/range {v0 .. v5}, Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;->$r8$lambda$XrpT-eFuxMi6vgh7QLWBPg8qVOI(Landroidx/graphics/MultiBufferedCanvasRenderer;Landroidx/graphics/lowlatency/CanvasFrontBufferedRenderer;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;I)V

    return-void
.end method

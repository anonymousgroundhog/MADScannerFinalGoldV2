.class Lcom/brakefield/painter/ui/MainViewX$3;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/MainViewX;->setMouseScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MainViewX;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$3;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPan(Lcom/brakefield/infinitestudio/sketchbook/Pointer;FF)V
    .locals 0

    return-void
.end method

.method public onScroll(Lcom/brakefield/infinitestudio/sketchbook/Pointer;FF)V
    .locals 2

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42800000    # 64.0f

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p2, p1

    .line 309
    sget-object p1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->matrix:Landroid/graphics/Matrix;

    sget p3, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_w:I

    int-to-float p3, p3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    sget v1, Lcom/brakefield/infinitestudio/sketchbook/Camera;->screen_h:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p1, p2, p2, p3, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 310
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$3;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->requestRender()V

    :cond_0
    const/4 p1, 0x1

    .line 313
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setPlaybackNeedsFrame(Z)V

    return-void
.end method

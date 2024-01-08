.class Lcom/brakefield/painter/ui/MainViewX$1;
.super Ljava/lang/Object;
.source "MainViewX.java"

# interfaces
.implements Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/MainViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/graphics/lowlatency/GLFrontBufferedRenderer$Callback<",
        "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/MainViewX;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/MainViewX;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateSurface(II)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$600(Lcom/brakefield/painter/ui/MainViewX;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0}, Lcom/brakefield/painter/ui/MainViewX;->access$700(Lcom/brakefield/painter/ui/MainViewX;)I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    .line 190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/MainViewX;->access$602(Lcom/brakefield/painter/ui/MainViewX;I)I

    .line 191
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/MainViewX;->access$702(Lcom/brakefield/painter/ui/MainViewX;I)I

    const/4 p1, 0x1

    .line 194
    :goto_1
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p2}, Lcom/brakefield/painter/ui/MainViewX;->access$800(Lcom/brakefield/painter/ui/MainViewX;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 195
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p2, v1}, Lcom/brakefield/painter/ui/MainViewX;->access$802(Lcom/brakefield/painter/ui/MainViewX;Z)Z

    .line 196
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p2}, Lcom/brakefield/painter/ui/MainViewX;->access$200(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/PainterGraphicsRenderer;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Lcom/brakefield/painter/PainterGraphicsRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 200
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$200(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/PainterGraphicsRenderer;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p2}, Lcom/brakefield/painter/ui/MainViewX;->access$600(Lcom/brakefield/painter/ui/MainViewX;)I

    move-result p2

    iget-object v1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {v1}, Lcom/brakefield/painter/ui/MainViewX;->access$700(Lcom/brakefield/painter/ui/MainViewX;)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onDrawFrontBufferedLayer(Landroidx/graphics/opengl/egl/EGLManager;IILandroidx/graphics/lowlatency/BufferInfo;[FLcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 1

    .line 117
    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getWidth()I

    move-result p1

    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/MainViewX$1;->updateSurface(II)V

    .line 119
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$000(Lcom/brakefield/painter/ui/MainViewX;)Ljava/util/ArrayList;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p3}, Lcom/brakefield/painter/ui/MainViewX;->access$002(Lcom/brakefield/painter/ui/MainViewX;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 123
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p2, p5}, Lcom/brakefield/painter/ui/MainViewX;->access$100(Lcom/brakefield/painter/ui/MainViewX;[F)Landroid/graphics/Matrix;

    move-result-object p2

    .line 124
    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 p5, 0x3f000000    # 0.5f

    mul-float/2addr p3, p5

    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getHeight()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p5

    const/high16 p5, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p5, v0, p3, p6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 125
    iget-object p3, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p3}, Lcom/brakefield/painter/ui/MainViewX;->access$200(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/PainterGraphicsRenderer;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/brakefield/painter/PainterGraphicsRenderer;->setTransformSurfaceMatrix(Landroid/graphics/Matrix;)V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 128
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getFrameBufferId()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setScreenFramebuffer(I)V

    .line 132
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$200(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/PainterGraphicsRenderer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/PainterGraphicsRenderer;->draw(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onDrawFrontBufferedLayer(Landroidx/graphics/opengl/egl/EGLManager;IILandroidx/graphics/lowlatency/BufferInfo;[FLjava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual/range {p0 .. p6}, Lcom/brakefield/painter/ui/MainViewX$1;->onDrawFrontBufferedLayer(Landroidx/graphics/opengl/egl/EGLManager;IILandroidx/graphics/lowlatency/BufferInfo;[FLcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

.method public onDrawMultiBufferedLayer(Landroidx/graphics/opengl/egl/EGLManager;IILandroidx/graphics/lowlatency/BufferInfo;[FLjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/opengl/egl/EGLManager;",
            "II",
            "Landroidx/graphics/lowlatency/BufferInfo;",
            "[F",
            "Ljava/util/Collection<",
            "+",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getWidth()I

    move-result p1

    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/MainViewX$1;->updateSurface(II)V

    .line 140
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$000(Lcom/brakefield/painter/ui/MainViewX;)Ljava/util/ArrayList;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p3}, Lcom/brakefield/painter/ui/MainViewX;->access$002(Lcom/brakefield/painter/ui/MainViewX;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 143
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p2, p5}, Lcom/brakefield/painter/ui/MainViewX;->access$100(Lcom/brakefield/painter/ui/MainViewX;[F)Landroid/graphics/Matrix;

    move-result-object p2

    .line 144
    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 p5, 0x3f000000    # 0.5f

    mul-float/2addr p3, p5

    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getHeight()I

    move-result p6

    int-to-float p6, p6

    mul-float/2addr p6, p5

    const/high16 p5, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p2, p5, v0, p3, p6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 145
    iget-object p3, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p3}, Lcom/brakefield/painter/ui/MainViewX;->access$200(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/PainterGraphicsRenderer;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/brakefield/painter/PainterGraphicsRenderer;->setTransformSurfaceMatrix(Landroid/graphics/Matrix;)V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    .line 148
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p4}, Landroidx/graphics/lowlatency/BufferInfo;->getFrameBufferId()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setScreenFramebuffer(I)V

    .line 152
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$200(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/PainterGraphicsRenderer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/PainterGraphicsRenderer;->draw(Z)V

    return-void
.end method

.method public onFrontBufferedLayerRenderComplete(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat$Transaction;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/MainViewX;->access$302(Lcom/brakefield/painter/ui/MainViewX;Z)Z

    .line 159
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$400(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/MainViewX;->renderFrontBufferedLayer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$500(Lcom/brakefield/painter/ui/MainViewX;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/MainViewX;->access$502(Lcom/brakefield/painter/ui/MainViewX;Z)Z

    .line 164
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->startAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMultiBufferedLayerRenderComplete(Landroidx/graphics/surface/SurfaceControlCompat;Landroidx/graphics/surface/SurfaceControlCompat$Transaction;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/MainViewX;->access$302(Lcom/brakefield/painter/ui/MainViewX;Z)Z

    .line 172
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$400(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p2, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/MainViewX;->renderFrontBufferedLayer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$500(Lcom/brakefield/painter/ui/MainViewX;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1, p2}, Lcom/brakefield/painter/ui/MainViewX;->access$502(Lcom/brakefield/painter/ui/MainViewX;Z)Z

    .line 177
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->startAnimation()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-static {p1}, Lcom/brakefield/painter/ui/MainViewX;->access$200(Lcom/brakefield/painter/ui/MainViewX;)Lcom/brakefield/painter/PainterGraphicsRenderer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/PainterGraphicsRenderer;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/brakefield/painter/ui/MainViewX$1;->this$0:Lcom/brakefield/painter/ui/MainViewX;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MainViewX;->startAnimation()V

    :cond_2
    :goto_0
    return-void
.end method

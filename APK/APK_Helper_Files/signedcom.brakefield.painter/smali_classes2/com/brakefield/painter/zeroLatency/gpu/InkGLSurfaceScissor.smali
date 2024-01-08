.class public Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;
.super Ljava/lang/Object;
.source "InkGLSurfaceScissor.java"


# static fields
.field private static final RENDER_BOX_OFFSET:I = 0x2


# instance fields
.field private mEmpty:Z

.field private mScissorBox:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->reset()V

    return-void
.end method


# virtual methods
.method public addPoint(FF)V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mEmpty:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mEmpty:Z

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->union(II)V

    :goto_0
    return-void
.end method

.method public apply()V
    .locals 5

    const/16 v0, 0xc11

    .line 34
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 35
    iget-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    return-void
.end method

.method public disable()V
    .locals 1

    const/16 v0, 0xc11

    .line 42
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mEmpty:Z

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/zeroLatency/gpu/InkGLSurfaceScissor;->mScissorBox:Landroid/graphics/Rect;

    return-void
.end method

.class public final Landroidx/graphics/lowlatency/BufferTransformer;
.super Ljava/lang/Object;
.source "BufferTransformer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u001e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u001e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/BufferTransformer;",
        "",
        "()V",
        "<set-?>",
        "",
        "computedTransform",
        "getComputedTransform",
        "()I",
        "glHeight",
        "getGlHeight",
        "glWidth",
        "getGlWidth",
        "logicalHeight",
        "getLogicalHeight",
        "logicalWidth",
        "getLogicalWidth",
        "mViewTransform",
        "",
        "transform",
        "getTransform",
        "()[F",
        "computeTransform",
        "",
        "width",
        "height",
        "transformHint",
        "invertBufferTransform",
        "graphics-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private computedTransform:I

.field private glHeight:I

.field private glWidth:I

.field private logicalHeight:I

.field private logicalWidth:I

.field private final mViewTransform:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 32
    iput-object v0, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Landroidx/graphics/lowlatency/BufferTransformer;->computedTransform:I

    return-void
.end method


# virtual methods
.method public final computeTransform(III)V
    .locals 11

    int-to-float v0, p1

    int-to-float v1, p2

    .line 74
    iput p1, p0, Landroidx/graphics/lowlatency/BufferTransformer;->logicalWidth:I

    .line 75
    iput p2, p0, Landroidx/graphics/lowlatency/BufferTransformer;->logicalHeight:I

    .line 76
    iput p1, p0, Landroidx/graphics/lowlatency/BufferTransformer;->glWidth:I

    .line 77
    iput p2, p0, Landroidx/graphics/lowlatency/BufferTransformer;->glHeight:I

    .line 78
    iput p3, p0, Landroidx/graphics/lowlatency/BufferTransformer;->computedTransform:I

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-eq p3, v3, :cond_2

    const/4 v3, 0x3

    if-eq p3, v3, :cond_1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    const/4 p1, -0x1

    .line 101
    iput p1, p0, Landroidx/graphics/lowlatency/BufferTransformer;->computedTransform:I

    .line 102
    iget-object p1, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    invoke-static {p1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v5, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    const/4 v6, 0x0

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 82
    iget-object p3, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    neg-float v0, v0

    invoke-static {p3, v2, v0, v4, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 83
    iput p2, p0, Landroidx/graphics/lowlatency/BufferTransformer;->glWidth:I

    .line 84
    iput p1, p0, Landroidx/graphics/lowlatency/BufferTransformer;->glHeight:I

    goto :goto_0

    .line 87
    :cond_1
    iget-object v5, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    const/4 v6, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 88
    iget-object p1, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    neg-float p2, v0

    neg-float p3, v1

    invoke-static {p1, v2, p2, p3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v5, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 92
    iget-object p3, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    neg-float v0, v1

    invoke-static {p3, v2, v4, v0, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 93
    iput p2, p0, Landroidx/graphics/lowlatency/BufferTransformer;->glWidth:I

    .line 94
    iput p1, p0, Landroidx/graphics/lowlatency/BufferTransformer;->glHeight:I

    goto :goto_0

    .line 97
    :cond_3
    iget-object p1, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    invoke-static {p1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_0
    return-void
.end method

.method public final getComputedTransform()I
    .locals 1

    .line 48
    iget v0, p0, Landroidx/graphics/lowlatency/BufferTransformer;->computedTransform:I

    return v0
.end method

.method public final getGlHeight()I
    .locals 1

    .line 45
    iget v0, p0, Landroidx/graphics/lowlatency/BufferTransformer;->glHeight:I

    return v0
.end method

.method public final getGlWidth()I
    .locals 1

    .line 42
    iget v0, p0, Landroidx/graphics/lowlatency/BufferTransformer;->glWidth:I

    return v0
.end method

.method public final getLogicalHeight()I
    .locals 1

    .line 40
    iget v0, p0, Landroidx/graphics/lowlatency/BufferTransformer;->logicalHeight:I

    return v0
.end method

.method public final getLogicalWidth()I
    .locals 1

    .line 37
    iget v0, p0, Landroidx/graphics/lowlatency/BufferTransformer;->logicalWidth:I

    return v0
.end method

.method public final getTransform()[F
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/graphics/lowlatency/BufferTransformer;->mViewTransform:[F

    return-object v0
.end method

.method public final invertBufferTransform(I)I
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

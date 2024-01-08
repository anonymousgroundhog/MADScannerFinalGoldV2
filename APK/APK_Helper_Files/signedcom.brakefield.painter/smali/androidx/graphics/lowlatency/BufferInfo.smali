.class public final Landroidx/graphics/lowlatency/BufferInfo;
.super Ljava/lang/Object;
.source "BufferInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0018\u00002\u00020\u0001B%\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006R$\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/BufferInfo;",
        "",
        "width",
        "",
        "height",
        "frameBufferId",
        "(III)V",
        "<set-?>",
        "getFrameBufferId",
        "()I",
        "setFrameBufferId$graphics_core_release",
        "(I)V",
        "getHeight",
        "setHeight$graphics_core_release",
        "getWidth",
        "setWidth$graphics_core_release",
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
.field private frameBufferId:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/graphics/lowlatency/BufferInfo;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroidx/graphics/lowlatency/BufferInfo;->width:I

    .line 50
    iput p2, p0, Landroidx/graphics/lowlatency/BufferInfo;->height:I

    .line 58
    iput p3, p0, Landroidx/graphics/lowlatency/BufferInfo;->frameBufferId:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, -0x1

    .line 29
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/graphics/lowlatency/BufferInfo;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final getFrameBufferId()I
    .locals 1

    .line 58
    iget v0, p0, Landroidx/graphics/lowlatency/BufferInfo;->frameBufferId:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 50
    iget v0, p0, Landroidx/graphics/lowlatency/BufferInfo;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 41
    iget v0, p0, Landroidx/graphics/lowlatency/BufferInfo;->width:I

    return v0
.end method

.method public final setFrameBufferId$graphics_core_release(I)V
    .locals 0

    .line 59
    iput p1, p0, Landroidx/graphics/lowlatency/BufferInfo;->frameBufferId:I

    return-void
.end method

.method public final setHeight$graphics_core_release(I)V
    .locals 0

    .line 51
    iput p1, p0, Landroidx/graphics/lowlatency/BufferInfo;->height:I

    return-void
.end method

.method public final setWidth$graphics_core_release(I)V
    .locals 0

    .line 42
    iput p1, p0, Landroidx/graphics/lowlatency/BufferInfo;->width:I

    return-void
.end method

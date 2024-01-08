.class final Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;
.super Ljava/lang/Object;
.source "FrameBufferPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/opengl/FrameBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameBufferEntry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00072\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;",
        "",
        "frameBuffer",
        "Landroidx/graphics/opengl/FrameBuffer;",
        "fence",
        "Landroidx/hardware/SyncFenceCompat;",
        "isAvailable",
        "",
        "(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;Z)V",
        "getFence",
        "()Landroidx/hardware/SyncFenceCompat;",
        "setFence",
        "(Landroidx/hardware/SyncFenceCompat;)V",
        "getFrameBuffer",
        "()Landroidx/graphics/opengl/FrameBuffer;",
        "setFrameBuffer",
        "(Landroidx/graphics/opengl/FrameBuffer;)V",
        "()Z",
        "setAvailable",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private fence:Landroidx/hardware/SyncFenceCompat;

.field private frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

.field private isAvailable:Z


# direct methods
.method public constructor <init>(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;Z)V
    .locals 1

    const-string v0, "frameBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    .line 63
    iput-object p2, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    .line 64
    iput-boolean p3, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    return-void
.end method

.method public static synthetic copy$default(Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;ZILjava/lang/Object;)Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->copy(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;Z)Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/graphics/opengl/FrameBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    return-object v0
.end method

.method public final component2()Landroidx/hardware/SyncFenceCompat;
    .locals 1

    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    return v0
.end method

.method public final copy(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;Z)Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;
    .locals 1

    const-string v0, "frameBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    invoke-direct {v0, p1, p2, p3}, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;-><init>(Landroidx/graphics/opengl/FrameBuffer;Landroidx/hardware/SyncFenceCompat;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;

    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    iget-object v3, p1, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    iget-object v3, p1, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    iget-boolean p1, p1, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFence()Landroidx/hardware/SyncFenceCompat;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    return-object v0
.end method

.method public final getFrameBuffer()Landroidx/graphics/opengl/FrameBuffer;
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    invoke-virtual {v0}, Landroidx/graphics/opengl/FrameBuffer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/hardware/SyncFenceCompat;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    return v0
.end method

.method public final setAvailable(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    return-void
.end method

.method public final setFence(Landroidx/hardware/SyncFenceCompat;)V
    .locals 0

    .line 63
    iput-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    return-void
.end method

.method public final setFrameBuffer(Landroidx/graphics/opengl/FrameBuffer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FrameBufferEntry(frameBuffer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->frameBuffer:Landroidx/graphics/opengl/FrameBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->fence:Landroidx/hardware/SyncFenceCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/graphics/opengl/FrameBufferPool$FrameBufferEntry;->isAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

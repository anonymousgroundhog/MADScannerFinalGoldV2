.class final Landroidx/graphics/RenderQueue$executeRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RenderQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/RenderQueue;->executeRequest(Landroidx/graphics/RenderQueue$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/hardware/HardwareBuffer;",
        "Landroidx/hardware/SyncFenceCompat;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "hardwareBuffer",
        "Landroid/hardware/HardwareBuffer;",
        "syncFenceCompat",
        "Landroidx/hardware/SyncFenceCompat;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/graphics/RenderQueue;


# direct methods
.method constructor <init>(Landroidx/graphics/RenderQueue;)V
    .locals 0

    iput-object p1, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    check-cast p1, Landroid/hardware/HardwareBuffer;

    check-cast p2, Landroidx/hardware/SyncFenceCompat;

    invoke-virtual {p0, p1, p2}, Landroidx/graphics/RenderQueue$executeRequest$1;->invoke(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 2

    const-string v0, "hardwareBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/graphics/RenderQueue;->access$setMRequestPending$p(Landroidx/graphics/RenderQueue;Z)V

    .line 177
    iget-object v0, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    invoke-static {v0}, Landroidx/graphics/RenderQueue;->access$getMIsCancelling$p(Landroidx/graphics/RenderQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    invoke-static {v0}, Landroidx/graphics/RenderQueue;->access$getFrameCallback$p(Landroidx/graphics/RenderQueue;)Landroidx/graphics/RenderQueue$FrameCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/graphics/RenderQueue$FrameCallback;->onFrameComplete(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    invoke-static {v0}, Landroidx/graphics/RenderQueue;->access$getFrameCallback$p(Landroidx/graphics/RenderQueue;)Landroidx/graphics/RenderQueue$FrameCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/graphics/RenderQueue$FrameCallback;->onFrameCancelled(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    .line 183
    :goto_0
    iget-object p1, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    invoke-static {p1}, Landroidx/graphics/RenderQueue;->access$getMRequests$p(Landroidx/graphics/RenderQueue;)Lkotlin/collections/ArrayDeque;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    invoke-static {p1}, Landroidx/graphics/RenderQueue;->access$getMRequests$p(Landroidx/graphics/RenderQueue;)Lkotlin/collections/ArrayDeque;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/graphics/RenderQueue$Request;

    invoke-static {p1, p2}, Landroidx/graphics/RenderQueue;->access$executeRequest(Landroidx/graphics/RenderQueue;Landroidx/graphics/RenderQueue$Request;)V

    goto :goto_1

    .line 187
    :cond_1
    iget-object p1, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    invoke-static {p1}, Landroidx/graphics/RenderQueue;->access$getMIsReleasing$p(Landroidx/graphics/RenderQueue;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    iget-object p1, p0, Landroidx/graphics/RenderQueue$executeRequest$1;->this$0:Landroidx/graphics/RenderQueue;

    invoke-static {p1}, Landroidx/graphics/RenderQueue;->access$executeReleaseCallback(Landroidx/graphics/RenderQueue;)V

    :cond_2
    :goto_1
    return-void
.end method

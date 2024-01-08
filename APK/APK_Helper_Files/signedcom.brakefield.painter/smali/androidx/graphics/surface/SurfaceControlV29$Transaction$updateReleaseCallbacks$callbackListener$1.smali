.class public final Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1;
.super Ljava/lang/Object;
.source "SurfaceControlV29.kt"

# interfaces
.implements Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/surface/SurfaceControlV29$Transaction;->updateReleaseCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSurfaceControlV29.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SurfaceControlV29.kt\nandroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,466:1\n1855#2,2:467\n*S KotlinDebug\n*F\n+ 1 SurfaceControlV29.kt\nandroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1\n*L\n142#1:467,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCompletedListener;",
        "onTransactionCompleted",
        "",
        "transactionStats",
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
.field final synthetic $callbackInvokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$CallbackEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1;->$callbackInvokeList:Ljava/util/List;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactionCompleted(J)V
    .locals 6

    .line 142
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1;->$callbackInvokeList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 467
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$CallbackEntry;

    .line 143
    invoke-static {}, Landroidx/graphics/surface/SurfaceControlV29;->access$getCompanion$p()Landroidx/graphics/surface/SurfaceControlV29$Companion;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$CallbackEntry;->getSurfaceControl()Landroidx/graphics/surface/SurfaceControlV29;

    move-result-object v3

    check-cast v3, Landroidx/graphics/surface/SurfaceControlImpl;

    invoke-virtual {v2, v3}, Landroidx/graphics/surface/SurfaceControlV29$Companion;->asWrapperSurfaceControl(Landroidx/graphics/surface/SurfaceControlImpl;)Landroidx/graphics/surface/SurfaceControlWrapper;

    move-result-object v2

    .line 144
    sget-object v3, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    .line 145
    invoke-virtual {v2}, Landroidx/graphics/surface/SurfaceControlWrapper;->getMNativeSurfaceControl$graphics_core_release()J

    move-result-wide v4

    .line 144
    invoke-virtual {v3, v4, v5, p1, p2}, Landroidx/graphics/surface/JniBindings$Companion;->nGetPreviousReleaseFenceFd(JJ)I

    move-result v2

    .line 148
    invoke-virtual {v1}, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$CallbackEntry;->getCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    new-instance v3, Landroidx/hardware/SyncFenceCompat;

    new-instance v4, Landroidx/hardware/SyncFenceV19;

    invoke-direct {v4, v2}, Landroidx/hardware/SyncFenceV19;-><init>(I)V

    invoke-direct {v3, v4}, Landroidx/hardware/SyncFenceCompat;-><init>(Landroidx/hardware/SyncFenceV19;)V

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Landroidx/graphics/surface/SurfaceControlV29$Transaction$updateReleaseCallbacks$callbackListener$1;->$callbackInvokeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

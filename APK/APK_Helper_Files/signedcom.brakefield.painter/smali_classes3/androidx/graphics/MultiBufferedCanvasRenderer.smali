.class public final Landroidx/graphics/MultiBufferedCanvasRenderer;
.super Ljava/lang/Object;
.source "MultiBufferedCanvasRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/MultiBufferedCanvasRenderer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiBufferedCanvasRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiBufferedCanvasRenderer.kt\nandroidx/graphics/MultiBufferedCanvasRenderer\n*L\n1#1,238:1\n124#1,29:239\n*S KotlinDebug\n*F\n+ 1 MultiBufferedCanvasRenderer.kt\nandroidx/graphics/MultiBufferedCanvasRenderer\n*L\n104#1:239,29\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 82\u00020\u0001:\u00018B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bJ%\u0010\"\u001a\u00020#2\u001a\u0010$\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020#0%H\u0082\u0008J\u0008\u0010\'\u001a\u00020#H\u0002J/\u0010(\u001a\u00020#2!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110*\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008,\u0012\u0004\u0008\u0008(-\u0012\u0004\u0012\u00020#0)H\u0086\u0008\u00f8\u0001\u0000J\u0006\u0010.\u001a\u00020#J\u0018\u0010/\u001a\u00020#2\u0006\u00100\u001a\u00020\u000e2\u0008\u00101\u001a\u0004\u0018\u00010&J*\u00102\u001a\u00020#2\u0006\u00103\u001a\u0002042\u001a\u00105\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020#0%J\u000e\u00106\u001a\u0004\u0018\u00010&*\u00020\u000fH\u0002J\u000c\u00107\u001a\u00020#*\u00020\u000fH\u0002R*\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n \u0015*\u0004\u0018\u00010\u00140\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u00198\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u00069"
    }
    d2 = {
        "Landroidx/graphics/MultiBufferedCanvasRenderer;",
        "",
        "renderNode",
        "Landroid/graphics/RenderNode;",
        "width",
        "",
        "height",
        "format",
        "usage",
        "",
        "maxImages",
        "(Landroid/graphics/RenderNode;IIIJI)V",
        "mAllocatedBuffers",
        "Ljava/util/HashMap;",
        "Landroid/hardware/HardwareBuffer;",
        "Landroid/media/Image;",
        "Lkotlin/collections/HashMap;",
        "mBufferLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "mBufferSignal",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "mHardwareRenderer",
        "Landroid/graphics/HardwareRenderer;",
        "mImageReader",
        "Landroid/media/ImageReader;",
        "mIsReleased",
        "",
        "value",
        "preserveContents",
        "getPreserveContents",
        "()Z",
        "setPreserveContents",
        "(Z)V",
        "acquireBuffer",
        "",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/hardware/SyncFenceCompat;",
        "closeBuffers",
        "record",
        "Lkotlin/Function1;",
        "Landroid/graphics/Canvas;",
        "Lkotlin/ParameterName;",
        "name",
        "canvas",
        "release",
        "releaseBuffer",
        "hardwareBuffer",
        "fence",
        "renderFrame",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "bufferAvailable",
        "getFenceCompat",
        "waitAndClose",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/graphics/MultiBufferedCanvasRenderer$Companion;

.field public static final TAG:Ljava/lang/String; = "MultiBufferRenderer"


# instance fields
.field private final mAllocatedBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/HardwareBuffer;",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mBufferSignal:Ljava/util/concurrent/locks/Condition;

.field private mHardwareRenderer:Landroid/graphics/HardwareRenderer;

.field private final mImageReader:Landroid/media/ImageReader;

.field private mIsReleased:Z

.field private preserveContents:Z

.field private final renderNode:Landroid/graphics/RenderNode;


# direct methods
.method public static synthetic $r8$lambda$WbCWpzKBeBENaVFK8jZq4mYsbbY(Lkotlin/jvm/functions/Function2;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/graphics/MultiBufferedCanvasRenderer;->renderFrame$lambda$4$lambda$3$lambda$2$lambda$1(Lkotlin/jvm/functions/Function2;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3zOOTo_GYOchl8UngPuAvBii20(Landroidx/graphics/MultiBufferedCanvasRenderer;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/graphics/MultiBufferedCanvasRenderer;->renderFrame$lambda$4$lambda$3(Landroidx/graphics/MultiBufferedCanvasRenderer;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/MultiBufferedCanvasRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/MultiBufferedCanvasRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/MultiBufferedCanvasRenderer;->Companion:Landroidx/graphics/MultiBufferedCanvasRenderer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RenderNode;IIIJI)V
    .locals 6

    const-string v0, "renderNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->renderNode:Landroid/graphics/RenderNode;

    move v0, p2

    move v1, p3

    move v2, p4

    move v3, p7

    move-wide v4, p5

    .line 51
    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p2

    const-string p3, "newInstance(width, heigh\u2026format, maxImages, usage)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mImageReader:Landroid/media/ImageReader;

    .line 52
    new-instance p3, Landroid/graphics/HardwareRenderer;

    invoke-direct {p3}, Landroid/graphics/HardwareRenderer;-><init>()V

    const/4 p4, 0x1

    .line 55
    invoke-virtual {p3, p4}, Landroid/graphics/HardwareRenderer;->setOpaque(Z)V

    .line 56
    invoke-virtual {p3, p1}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 57
    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 58
    invoke-virtual {p3}, Landroid/graphics/HardwareRenderer;->start()V

    .line 52
    iput-object p3, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    .line 65
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 70
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferSignal:Ljava/util/concurrent/locks/Condition;

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mAllocatedBuffers:Ljava/util/HashMap;

    .line 81
    iput-boolean p4, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->preserveContents:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/RenderNode;IIIJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x300

    move-wide v6, v0

    goto :goto_1

    :cond_1
    move-wide v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    move v8, v0

    goto :goto_2

    :cond_2
    move/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 41
    invoke-direct/range {v1 .. v8}, Landroidx/graphics/MultiBufferedCanvasRenderer;-><init>(Landroid/graphics/RenderNode;IIIJI)V

    return-void
.end method

.method public static final synthetic access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->renderNode:Landroid/graphics/RenderNode;

    return-object p0
.end method

.method private final acquireBuffer(Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/hardware/HardwareBuffer;",
            "-",
            "Landroidx/hardware/SyncFenceCompat;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    const/4 v1, 0x1

    .line 126
    :try_start_0
    iget-object v2, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mAllocatedBuffers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v2, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 134
    invoke-virtual {v2}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v4, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mAllocatedBuffers:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    if-eqz v4, :cond_1

    const-string v5, "put(buffer, image)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Landroidx/graphics/MultiBufferedCanvasRenderer;->waitAndClose(Landroid/media/Image;)V

    .line 139
    :cond_1
    invoke-direct {p0, v2}, Landroidx/graphics/MultiBufferedCanvasRenderer;->getFenceCompat(Landroid/media/Image;)Landroidx/hardware/SyncFenceCompat;

    move-result-object v2

    .line 140
    invoke-interface {p1, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 143
    invoke-virtual {p0, v3, v2}, Landroidx/graphics/MultiBufferedCanvasRenderer;->releaseBuffer(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    goto :goto_1

    .line 148
    :cond_2
    invoke-direct {p0, v2}, Landroidx/graphics/MultiBufferedCanvasRenderer;->waitAndClose(Landroid/media/Image;)V

    .line 151
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method

.method private final closeBuffers()V
    .locals 4

    .line 190
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 191
    :try_start_0
    iget-object v1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mAllocatedBuffers:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V

    .line 193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    invoke-direct {p0, v2}, Landroidx/graphics/MultiBufferedCanvasRenderer;->waitAndClose(Landroid/media/Image;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mAllocatedBuffers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 196
    iget-object v1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 197
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private final getFenceCompat(Landroid/media/Image;)Landroidx/hardware/SyncFenceCompat;
    .locals 2

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 156
    sget-object v0, Landroidx/graphics/ImageVerificationHelper;->Companion:Landroidx/graphics/ImageVerificationHelper$Companion;

    invoke-virtual {v0, p1}, Landroidx/graphics/ImageVerificationHelper$Companion;->getFence(Landroid/media/Image;)Landroidx/hardware/SyncFenceCompat;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static final renderFrame$lambda$4$lambda$3(Landroidx/graphics/MultiBufferedCanvasRenderer;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V
    .locals 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bufferAvailable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 241
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mAllocatedBuffers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 242
    iget-object v1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 249
    invoke-virtual {v1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v3, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mAllocatedBuffers:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    if-eqz v3, :cond_1

    const-string v4, "put(buffer, image)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroidx/graphics/MultiBufferedCanvasRenderer;->waitAndClose(Landroid/media/Image;)V

    .line 254
    :cond_1
    invoke-direct {p0, v1}, Landroidx/graphics/MultiBufferedCanvasRenderer;->getFenceCompat(Landroid/media/Image;)Landroidx/hardware/SyncFenceCompat;

    move-result-object v1

    .line 105
    new-instance v3, Landroidx/graphics/MultiBufferedCanvasRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v2, v1}, Landroidx/graphics/MultiBufferedCanvasRenderer$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 257
    iget-object p1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getMaxImages()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 258
    invoke-virtual {p0, v2, v1}, Landroidx/graphics/MultiBufferedCanvasRenderer;->releaseBuffer(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V

    goto :goto_1

    .line 263
    :cond_2
    invoke-direct {p0, v1}, Landroidx/graphics/MultiBufferedCanvasRenderer;->waitAndClose(Landroid/media/Image;)V

    .line 266
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method private static final renderFrame$lambda$4$lambda$3$lambda$2$lambda$1(Lkotlin/jvm/functions/Function2;Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 1

    const-string v0, "$bufferAvailable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final waitAndClose(Landroid/media/Image;)V
    .locals 1

    .line 162
    invoke-direct {p0, p1}, Landroidx/graphics/MultiBufferedCanvasRenderer;->getFenceCompat(Landroid/media/Image;)Landroidx/hardware/SyncFenceCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroidx/hardware/SyncFenceCompat;->awaitForever()Z

    .line 164
    invoke-virtual {v0}, Landroidx/hardware/SyncFenceCompat;->close()V

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method


# virtual methods
.method public final getPreserveContents()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->preserveContents:Z

    return v0
.end method

.method public final record(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Canvas;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    const-string v1, "renderNode.beginRecording()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->access$getRenderNode$p(Landroidx/graphics/MultiBufferedCanvasRenderer;)Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method

.method public final release()V
    .locals 1

    .line 200
    iget-boolean v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mIsReleased:Z

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    .line 202
    invoke-direct {p0}, Landroidx/graphics/MultiBufferedCanvasRenderer;->closeBuffers()V

    .line 203
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 204
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->stop()V

    .line 206
    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mIsReleased:Z

    :cond_1
    return-void
.end method

.method public final releaseBuffer(Landroid/hardware/HardwareBuffer;Landroidx/hardware/SyncFenceCompat;)V
    .locals 3

    const-string v0, "hardwareBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    :try_start_0
    iget-object v1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mAllocatedBuffers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/Image;

    if-eqz p1, :cond_1

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 180
    sget-object v1, Landroidx/graphics/ImageVerificationHelper;->Companion:Landroidx/graphics/ImageVerificationHelper$Companion;

    invoke-virtual {v1, p1, p2}, Landroidx/graphics/ImageVerificationHelper$Companion;->setFence(Landroid/media/Image;Landroidx/hardware/SyncFenceCompat;)V

    .line 181
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Landroidx/graphics/MultiBufferedCanvasRenderer;->waitAndClose(Landroid/media/Image;)V

    .line 186
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mBufferSignal:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 187
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final renderFrame(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/hardware/HardwareBuffer;",
            "-",
            "Landroidx/hardware/SyncFenceCompat;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferAvailable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 100
    iget-boolean v1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mIsReleased:Z

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    .line 103
    new-instance v1, Landroidx/graphics/MultiBufferedCanvasRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/graphics/MultiBufferedCanvasRenderer$$ExternalSyntheticLambda1;-><init>(Landroidx/graphics/MultiBufferedCanvasRenderer;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p1, v1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setFrameCommitCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    goto :goto_0

    :cond_0
    const-string p1, "MultiBufferRenderer"

    const-string p2, "mHardwareRenderer is null"

    .line 113
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setPreserveContents(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->mHardwareRenderer:Landroid/graphics/HardwareRenderer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/HardwareRenderer;->setOpaque(Z)V

    .line 84
    :goto_0
    iput-boolean p1, p0, Landroidx/graphics/MultiBufferedCanvasRenderer;->preserveContents:Z

    return-void
.end method

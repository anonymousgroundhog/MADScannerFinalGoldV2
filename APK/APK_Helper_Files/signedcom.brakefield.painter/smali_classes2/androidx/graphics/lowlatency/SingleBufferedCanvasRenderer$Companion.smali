.class public final Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;",
        "",
        "()V",
        "create",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;",
        "T",
        "width",
        "",
        "height",
        "bufferTransformer",
        "Landroidx/graphics/lowlatency/BufferTransformer;",
        "executor",
        "Landroidx/graphics/utils/HandlerThreadExecutor;",
        "bufferReadyListener",
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;",
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
.field static final synthetic $$INSTANCE:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;

    invoke-direct {v0}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;-><init>()V

    sput-object v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;->$$INSTANCE:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Landroidx/graphics/lowlatency/BufferTransformer;",
            "Landroidx/graphics/utils/HandlerThreadExecutor;",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks<",
            "TT;>;)",
            "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferTransformer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferReadyListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV34;-><init>(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V

    check-cast v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRendererV29;-><init>(IILandroidx/graphics/lowlatency/BufferTransformer;Landroidx/graphics/utils/HandlerThreadExecutor;Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;)V

    check-cast v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;

    :goto_0
    return-object v0
.end method

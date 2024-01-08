.class public final Lcom/homesoft/encoder/Muxer;
.super Ljava/lang/Object;
.source "Muxer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/homesoft/encoder/Muxer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\r\u001a\u00020\u0005J%\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00112\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014J+\u0010\u0015\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00112\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/homesoft/encoder/Muxer;",
        "",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lcom/homesoft/encoder/MuxerConfig;",
        "(Landroid/content/Context;Lcom/homesoft/encoder/MuxerConfig;)V",
        "file",
        "Ljava/io/File;",
        "(Landroid/content/Context;Ljava/io/File;)V",
        "muxerConfig",
        "muxingCompletionListener",
        "Lcom/homesoft/encoder/MuxingCompletionListener;",
        "getMuxerConfig",
        "mux",
        "Lcom/homesoft/encoder/MuxingResult;",
        "imageList",
        "",
        "audioTrack",
        "",
        "(Ljava/util/List;Ljava/lang/Integer;)Lcom/homesoft/encoder/MuxingResult;",
        "muxAsync",
        "(Ljava/util/List;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setMuxerConfig",
        "",
        "setOnMuxingCompletedListener",
        "Companion",
        "painter_release"
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
.field public static final Companion:Lcom/homesoft/encoder/Muxer$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final file:Ljava/io/File;

.field private muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

.field private muxingCompletionListener:Lcom/homesoft/encoder/MuxingCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/homesoft/encoder/Muxer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/homesoft/encoder/Muxer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/homesoft/encoder/Muxer;->Companion:Lcom/homesoft/encoder/Muxer$Companion;

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->dgOvgZi:Ljava/lang/String;

    .line 37
    sput-object v0, Lcom/homesoft/encoder/Muxer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/homesoft/encoder/MuxerConfig;)V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Landroidx/core/view/contentcapture/cO/WfeUtUoIBm;->gEZfTx:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/homesoft/encoder/MuxerConfig;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/homesoft/encoder/Muxer;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 33
    iput-object p2, p0, Lcom/homesoft/encoder/Muxer;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "file"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/homesoft/encoder/Muxer;->context:Landroid/content/Context;

    iput-object v2, v0, Lcom/homesoft/encoder/Muxer;->file:Ljava/io/File;

    .line 41
    new-instance v14, Lcom/homesoft/encoder/MuxerConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3fe

    const/4 v13, 0x0

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/homesoft/encoder/MuxerConfig;-><init>(Ljava/io/File;IILjava/lang/String;IFILcom/homesoft/encoder/FrameMuxer;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v14, v0, Lcom/homesoft/encoder/Muxer;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    return-void
.end method

.method public static synthetic mux$default(Lcom/homesoft/encoder/Muxer;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/homesoft/encoder/MuxingResult;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/homesoft/encoder/Muxer;->mux(Ljava/util/List;Ljava/lang/Integer;)Lcom/homesoft/encoder/MuxingResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic muxAsync$default(Lcom/homesoft/encoder/Muxer;Ljava/util/List;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/homesoft/encoder/Muxer;->muxAsync(Ljava/util/List;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMuxerConfig()Lcom/homesoft/encoder/MuxerConfig;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/homesoft/encoder/Muxer;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    return-object v0
.end method

.method public final mux(Ljava/util/List;Ljava/lang/Integer;)Lcom/homesoft/encoder/MuxingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/homesoft/encoder/MuxingResult;"
        }
    .end annotation

    const-string v0, "imageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/homesoft/encoder/Muxer;->TAG:Ljava/lang/String;

    const-string v1, "Generating video"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/homesoft/encoder/FrameBuilder;

    iget-object v1, p0, Lcom/homesoft/encoder/Muxer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/homesoft/encoder/Muxer;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-direct {v0, v1, v2, p2}, Lcom/homesoft/encoder/FrameBuilder;-><init>(Landroid/content/Context;Lcom/homesoft/encoder/MuxerConfig;Ljava/lang/Integer;)V

    .line 66
    :try_start_0
    invoke-virtual {v0}, Lcom/homesoft/encoder/FrameBuilder;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 75
    invoke-virtual {v0, p2}, Lcom/homesoft/encoder/FrameBuilder;->createFrame(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/homesoft/encoder/FrameBuilder;->releaseVideoCodec()V

    .line 82
    invoke-virtual {v0}, Lcom/homesoft/encoder/FrameBuilder;->muxAudioFrames()V

    .line 85
    invoke-virtual {v0}, Lcom/homesoft/encoder/FrameBuilder;->releaseAudioExtractor()V

    .line 86
    invoke-virtual {v0}, Lcom/homesoft/encoder/FrameBuilder;->releaseMuxer()V

    .line 88
    iget-object p1, p0, Lcom/homesoft/encoder/Muxer;->muxingCompletionListener:Lcom/homesoft/encoder/MuxingCompletionListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/homesoft/encoder/Muxer;->file:Ljava/io/File;

    invoke-interface {p1, p2}, Lcom/homesoft/encoder/MuxingCompletionListener;->onVideoSuccessful(Ljava/io/File;)V

    .line 89
    :cond_1
    new-instance p1, Lcom/homesoft/encoder/MuxingSuccess;

    iget-object p2, p0, Lcom/homesoft/encoder/Muxer;->file:Ljava/io/File;

    invoke-direct {p1, p2}, Lcom/homesoft/encoder/MuxingSuccess;-><init>(Ljava/io/File;)V

    check-cast p1, Lcom/homesoft/encoder/MuxingResult;

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    sget-object p2, Lcom/homesoft/encoder/Muxer;->TAG:Ljava/lang/String;

    const-string v0, "Start Encoder Failed"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    iget-object p2, p0, Lcom/homesoft/encoder/Muxer;->muxingCompletionListener:Lcom/homesoft/encoder/MuxingCompletionListener;

    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p2, v0}, Lcom/homesoft/encoder/MuxingCompletionListener;->onVideoError(Ljava/lang/Throwable;)V

    .line 71
    :cond_2
    new-instance p2, Lcom/homesoft/encoder/MuxingError;

    const-string v0, "Start encoder failed"

    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p2, v0, p1}, Lcom/homesoft/encoder/MuxingError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    check-cast p2, Lcom/homesoft/encoder/MuxingResult;

    return-object p2
.end method

.method public final muxAsync(Ljava/util/List;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/homesoft/encoder/MuxingResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/homesoft/encoder/Muxer;->mux(Ljava/util/List;Ljava/lang/Integer;)Lcom/homesoft/encoder/MuxingResult;

    move-result-object p1

    return-object p1
.end method

.method public final setMuxerConfig(Lcom/homesoft/encoder/MuxerConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/homesoft/encoder/Muxer;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    return-void
.end method

.method public final setOnMuxingCompletedListener(Lcom/homesoft/encoder/MuxingCompletionListener;)V
    .locals 1

    const-string v0, "muxingCompletionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/homesoft/encoder/Muxer;->muxingCompletionListener:Lcom/homesoft/encoder/MuxingCompletionListener;

    return-void
.end method

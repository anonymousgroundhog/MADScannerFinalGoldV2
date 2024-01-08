.class public final Lcom/homesoft/encoder/FrameBuilder;
.super Ljava/lang/Object;
.source "FrameBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001a\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0019H\u0002J\u0008\u0010$\u001a\u00020\u001bH\u0007J\u0012\u0010%\u001a\u00020\u001b2\u0008\u0010#\u001a\u0004\u0018\u00010\u0019H\u0002J\u0006\u0010&\u001a\u00020\u001bJ\u0006\u0010\'\u001a\u00020\u001bJ\u0006\u0010(\u001a\u00020\u001bJ\u0006\u0010)\u001a\u00020\u001bR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/homesoft/encoder/FrameBuilder;",
        "",
        "context",
        "Landroid/content/Context;",
        "muxerConfig",
        "Lcom/homesoft/encoder/MuxerConfig;",
        "audioTrackResource",
        "",
        "(Landroid/content/Context;Lcom/homesoft/encoder/MuxerConfig;Ljava/lang/Integer;)V",
        "audioExtractor",
        "Landroid/media/MediaExtractor;",
        "Ljava/lang/Integer;",
        "bufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "frameMuxer",
        "Lcom/homesoft/encoder/FrameMuxer;",
        "mediaCodec",
        "Landroid/media/MediaCodec;",
        "mediaFormat",
        "Landroid/media/MediaFormat;",
        "rect",
        "Landroid/graphics/Rect;",
        "surface",
        "Landroid/view/Surface;",
        "createCanvas",
        "Landroid/graphics/Canvas;",
        "createFrame",
        "",
        "image",
        "drainCodec",
        "endOfStream",
        "",
        "drawBitmapAndPostCanvas",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "canvas",
        "muxAudioFrames",
        "postCanvasFrame",
        "releaseAudioExtractor",
        "releaseMuxer",
        "releaseVideoCodec",
        "start",
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


# instance fields
.field private audioExtractor:Landroid/media/MediaExtractor;

.field private final audioTrackResource:Ljava/lang/Integer;

.field private final bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final context:Landroid/content/Context;

.field private frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

.field private final mediaCodec:Landroid/media/MediaCodec;

.field private final mediaFormat:Landroid/media/MediaFormat;

.field private final muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

.field private rect:Landroid/graphics/Rect;

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/homesoft/encoder/MuxerConfig;Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "muxerConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    .line 43
    iput-object p3, p0, Lcom/homesoft/encoder/FrameBuilder;->audioTrackResource:Ljava/lang/Integer;

    .line 46
    move-object p1, p0

    check-cast p1, Lcom/homesoft/encoder/FrameBuilder;

    .line 47
    iget-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {p1}, Lcom/homesoft/encoder/MuxerConfig;->getMimeType()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {p3}, Lcom/homesoft/encoder/MuxerConfig;->getVideoWidth()I

    move-result p3

    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {v0}, Lcom/homesoft/encoder/MuxerConfig;->getVideoHeight()I

    move-result v0

    invoke-static {p1, p3, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p3, "createVideoFormat(muxerC\u2026 muxerConfig.videoHeight)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "color-format"

    const v0, 0x7f000789

    .line 51
    invoke-virtual {p1, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 52
    iget-object p3, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {p3}, Lcom/homesoft/encoder/MuxerConfig;->getBitrate()I

    move-result p3

    const-string v0, "bitrate"

    invoke-virtual {p1, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 53
    iget-object p3, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {p3}, Lcom/homesoft/encoder/MuxerConfig;->getFramesPerSecond()F

    move-result p3

    const-string v0, "frame-rate"

    invoke-virtual {p1, v0, p3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 54
    iget-object p3, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {p3}, Lcom/homesoft/encoder/MuxerConfig;->getIFrameInterval()I

    move-result p3

    const-string v0, "i-frame-interval"

    invoke-virtual {p1, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 46
    iput-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaFormat:Landroid/media/MediaFormat;

    .line 59
    iget-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {p1}, Lcom/homesoft/encoder/MuxerConfig;->getCodecName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {p1}, Lcom/homesoft/encoder/MuxerConfig;->getCodecName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    goto :goto_1

    .line 62
    :cond_1
    new-instance p1, Landroid/media/MediaCodecList;

    invoke-direct {p1, p3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 63
    iget-object p3, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, p3}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    :goto_1
    const-string p3, "run {\n        if (!muxer\u2026aFormat))\n        }\n    }"

    .line 58
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    .line 67
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 68
    invoke-virtual {p2}, Lcom/homesoft/encoder/MuxerConfig;->getFrameMuxer()Lcom/homesoft/encoder/FrameMuxer;

    move-result-object p1

    iput-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

    .line 74
    iget-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->audioTrackResource:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/homesoft/encoder/FrameBuilder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/homesoft/encoder/FrameBuilder;->audioTrackResource:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    const-string p2, "context.resources.openRa\u2026rceFd(audioTrackResource)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance p2, Landroid/media/MediaExtractor;

    invoke-direct {p2}, Landroid/media/MediaExtractor;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 80
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 73
    :goto_2
    iput-object p2, p0, Lcom/homesoft/encoder/FrameBuilder;->audioExtractor:Landroid/media/MediaExtractor;

    return-void
.end method

.method private final createCanvas()Landroid/graphics/Canvas;
    .locals 2

    const/4 v0, 0x0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/homesoft/encoder/FrameBuilder;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private final drainCodec(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 165
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/homesoft/encoder/FrameBuilder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

    invoke-interface {v0}, Lcom/homesoft/encoder/FrameMuxer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "mediaCodec.outputFormat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/homesoft/encoder/FrameBuilder;->frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

    iget-object v2, p0, Lcom/homesoft/encoder/FrameBuilder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-interface {v1, v0, v2}, Lcom/homesoft/encoder/FrameMuxer;->start(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;)V

    goto :goto_0

    .line 171
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "format changed twice"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-ltz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 180
    iget-object v2, p0, Lcom/homesoft/encoder/FrameBuilder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lcom/homesoft/encoder/FrameBuilder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/homesoft/encoder/FrameBuilder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_6

    .line 186
    iget-object v2, p0, Lcom/homesoft/encoder/FrameBuilder;->frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

    invoke-interface {v2}, Lcom/homesoft/encoder/FrameMuxer;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    iget-object v2, p0, Lcom/homesoft/encoder/FrameBuilder;->frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

    iget-object v4, p0, Lcom/homesoft/encoder/FrameBuilder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v2, v1, v4}, Lcom/homesoft/encoder/FrameMuxer;->muxVideoFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 186
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "muxer hasn\'t started"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 190
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_2

    .line 179
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method private final drawBitmapAndPostCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p2, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 139
    :cond_0
    invoke-direct {p0, p2}, Lcom/homesoft/encoder/FrameBuilder;->postCanvasFrame(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private final postCanvasFrame(Landroid/graphics/Canvas;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/homesoft/encoder/FrameBuilder;->drainCodec(Z)V

    return-void
.end method


# virtual methods
.method public final createFrame(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {v0}, Lcom/homesoft/encoder/MuxerConfig;->getFramesPerImage()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 100
    invoke-direct {p0}, Lcom/homesoft/encoder/FrameBuilder;->createCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 103
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/homesoft/encoder/FrameBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "bitmap"

    .line 105
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lcom/homesoft/encoder/FrameBuilder;->drawBitmapAndPostCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 107
    :cond_0
    instance-of v3, p1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3, v2}, Lcom/homesoft/encoder/FrameBuilder;->drawBitmapAndPostCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 108
    :cond_1
    instance-of v3, p1, Landroid/graphics/Canvas;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Lcom/homesoft/encoder/FrameBuilder;->postCanvasFrame(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 109
    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 110
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 111
    invoke-direct {p0, v3, v2}, Lcom/homesoft/encoder/FrameBuilder;->drawBitmapAndPostCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 112
    :cond_3
    invoke-direct {p0, v2}, Lcom/homesoft/encoder/FrameBuilder;->postCanvasFrame(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final muxAudioFrames()V
    .locals 12

    .line 200
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->audioTrackResource:Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40000

    .line 203
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 206
    iget-object v2, p0, Lcom/homesoft/encoder/FrameBuilder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 208
    iget-object v2, p0, Lcom/homesoft/encoder/FrameBuilder;->frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

    invoke-interface {v2}, Lcom/homesoft/encoder/FrameMuxer;->getVideoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    if-nez v5, :cond_3

    const/16 v6, 0x64

    .line 211
    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 212
    iget-object v7, p0, Lcom/homesoft/encoder/FrameBuilder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 213
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v7, 0x1

    if-gez v6, :cond_2

    .line 214
    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_1
    move v5, v7

    goto :goto_0

    .line 217
    :cond_2
    iget-object v6, p0, Lcom/homesoft/encoder/FrameBuilder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 218
    iput-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 219
    iget-object v6, p0, Lcom/homesoft/encoder/FrameBuilder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    iput v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 220
    iget-object v6, p0, Lcom/homesoft/encoder/FrameBuilder;->frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

    const-string v10, "audioBuffer"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v0, v1}, Lcom/homesoft/encoder/FrameMuxer;->muxAudioFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 221
    iget-object v6, p0, Lcom/homesoft/encoder/FrameBuilder;->audioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    cmp-long v6, v8, v2

    if-lez v6, :cond_1

    .line 225
    rem-long/2addr v8, v2

    iget-object v6, p0, Lcom/homesoft/encoder/FrameBuilder;->muxerConfig:Lcom/homesoft/encoder/MuxerConfig;

    invoke-virtual {v6}, Lcom/homesoft/encoder/MuxerConfig;->getFramesPerImage()I

    move-result v6

    const v10, 0xf4240

    mul-int/2addr v6, v10

    int-to-long v10, v6

    cmp-long v6, v8, v10

    if-lez v6, :cond_1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final releaseAudioExtractor()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->audioExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_0
    return-void
.end method

.method public final releaseMuxer()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->frameMuxer:Lcom/homesoft/encoder/FrameMuxer;

    invoke-interface {v0}, Lcom/homesoft/encoder/FrameMuxer;->release()V

    return-void
.end method

.method public final releaseVideoCodec()V
    .locals 1

    const/4 v0, 0x1

    .line 236
    invoke-direct {p0, v0}, Lcom/homesoft/encoder/FrameBuilder;->drainCodec(Z)V

    .line 237
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 238
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 239
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 93
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->surface:Landroid/view/Surface;

    .line 94
    iget-object v0, p0, Lcom/homesoft/encoder/FrameBuilder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/homesoft/encoder/FrameBuilder;->drainCodec(Z)V

    return-void
.end method

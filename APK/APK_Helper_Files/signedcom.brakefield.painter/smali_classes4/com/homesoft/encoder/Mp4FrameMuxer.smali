.class public final Lcom/homesoft/encoder/Mp4FrameMuxer;
.super Ljava/lang/Object;
.source "Mp4FrameMuxer.kt"

# interfaces
.implements Lcom/homesoft/encoder/FrameMuxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/homesoft/encoder/Mp4FrameMuxer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0012\u001a\u00020\nH\u0016J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\u0015H\u0016J\u001a\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/homesoft/encoder/Mp4FrameMuxer;",
        "Lcom/homesoft/encoder/FrameMuxer;",
        "path",
        "",
        "fps",
        "",
        "(Ljava/lang/String;F)V",
        "audioTrackIndex",
        "",
        "finalVideoTime",
        "",
        "frameUsec",
        "muxer",
        "Landroid/media/MediaMuxer;",
        "started",
        "",
        "videoFrames",
        "videoTrackIndex",
        "getVideoTime",
        "isStarted",
        "muxAudioFrame",
        "",
        "encodedData",
        "Ljava/nio/ByteBuffer;",
        "audioBufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "muxVideoFrame",
        "bufferInfo",
        "release",
        "start",
        "videoFormat",
        "Landroid/media/MediaFormat;",
        "audioExtractor",
        "Landroid/media/MediaExtractor;",
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
.field public static final Companion:Lcom/homesoft/encoder/Mp4FrameMuxer$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioTrackIndex:I

.field private finalVideoTime:J

.field private final fps:F

.field private final frameUsec:J

.field private final muxer:Landroid/media/MediaMuxer;

.field private started:Z

.field private videoFrames:I

.field private videoTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/homesoft/encoder/Mp4FrameMuxer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/homesoft/encoder/Mp4FrameMuxer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/homesoft/encoder/Mp4FrameMuxer;->Companion:Lcom/homesoft/encoder/Mp4FrameMuxer$Companion;

    const-string v0, "Mp4FrameMuxer::class.java.simpleName"

    const-string v1, "Mp4FrameMuxer"

    .line 29
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/homesoft/encoder/Mp4FrameMuxer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->fps:F

    .line 32
    move-object p2, p0

    check-cast p2, Lcom/homesoft/encoder/Mp4FrameMuxer;

    .line 33
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-float p2, v0

    iget v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->fps:F

    div-float/2addr p2, v0

    float-to-long v0, p2

    .line 32
    iput-wide v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->frameUsec:J

    .line 36
    new-instance p2, Landroid/media/MediaMuxer;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->muxer:Landroid/media/MediaMuxer;

    return-void
.end method


# virtual methods
.method public getVideoTime()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->finalVideoTime:J

    return-wide v0
.end method

.method public isStarted()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->started:Z

    return v0
.end method

.method public muxAudioFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    const-string v0, "encodedData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioBufferInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->muxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->audioTrackIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public muxVideoFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    const-string v0, "encodedData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-wide v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->frameUsec:J

    iget v2, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->videoFrames:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->videoFrames:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->finalVideoTime:J

    .line 67
    iput-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 69
    iget-object v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->muxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->videoTrackIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 78
    iget-object v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    return-void
.end method

.method public start(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;)V
    .locals 1

    const-string v0, "videoFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->videoTrackIndex:I

    if-eqz p2, :cond_2

    .line 54
    iget-object v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->audioTrackIndex:I

    const-string v0, "Audio format: %s"

    .line 55
    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p2, "Video format: %s"

    .line 57
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p1, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/homesoft/encoder/Mp4FrameMuxer;->started:Z

    return-void
.end method

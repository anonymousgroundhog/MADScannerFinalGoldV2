.class public interface abstract Lcom/homesoft/encoder/FrameMuxer;
.super Ljava/lang/Object;
.source "FrameMuxer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/homesoft/encoder/FrameMuxer$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000bH&J\u0008\u0010\u000f\u001a\u00020\u0007H&J\u001c\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/homesoft/encoder/FrameMuxer;",
        "",
        "getVideoTime",
        "",
        "isStarted",
        "",
        "muxAudioFrame",
        "",
        "encodedData",
        "Ljava/nio/ByteBuffer;",
        "audioBufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "muxVideoFrame",
        "byteBuffer",
        "bufferInfo",
        "release",
        "start",
        "videoFormat",
        "Landroid/media/MediaFormat;",
        "audioExtractor",
        "Landroid/media/MediaExtractor;",
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


# virtual methods
.method public abstract getVideoTime()J
.end method

.method public abstract isStarted()Z
.end method

.method public abstract muxAudioFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract muxVideoFrame(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract release()V
.end method

.method public abstract start(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;)V
.end method

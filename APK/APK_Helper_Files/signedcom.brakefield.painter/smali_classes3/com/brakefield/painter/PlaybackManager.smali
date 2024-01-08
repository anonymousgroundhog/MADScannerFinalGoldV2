.class public Lcom/brakefield/painter/PlaybackManager;
.super Ljava/lang/Object;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;
    }
.end annotation


# static fields
.field private static final FILE_LIST:Ljava/lang/String; = "fileList.txt"

.field private static final LAST_FRAME:Ljava/lang/String; = "last_frame"

.field private static final QUEUED_NAME:Ljava/lang/String; = "queued"

.field private static final VIDEO_EXTENSION:Ljava/lang/String; = "mp4"


# instance fields
.field private final videoCodecs:Lcom/brakefield/painter/video/VideoCodecs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/brakefield/painter/video/VideoCodecs;

    invoke-direct {v0}, Lcom/brakefield/painter/video/VideoCodecs;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager;->videoCodecs:Lcom/brakefield/painter/video/VideoCodecs;

    return-void
.end method

.method private createQueuedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackFramerate()I

    move-result v0

    .line 72
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackWidth()I

    move-result v1

    .line 73
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackHeight()I

    move-result v2

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/brakefield/painter/PlaybackManager;->getBestCodecsFor(II)Ljava/util/List;

    move-result-object v3

    .line 76
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 78
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/painter/video/VideoCodec;

    .line 81
    :try_start_0
    invoke-virtual {v5, v1}, Lcom/brakefield/painter/video/VideoCodec;->alignWidth(I)I

    move-result v1

    .line 82
    invoke-virtual {v5, v2}, Lcom/brakefield/painter/video/VideoCodec;->alignHeight(I)I

    move-result v2

    .line 84
    iget-object v6, v5, Lcom/brakefield/painter/video/VideoCodec;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/brakefield/painter/PlaybackManager;->getTargetBitrate(Ljava/lang/String;I)I

    move-result v6

    .line 85
    iget-object v7, v5, Lcom/brakefield/painter/video/VideoCodec;->supportedBitrate:Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 87
    new-instance v7, Lcom/homesoft/encoder/Muxer;

    new-instance v8, Ljava/io/File;

    invoke-static {p2, p3}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, p1, v8}, Lcom/homesoft/encoder/Muxer;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 89
    invoke-virtual {v7}, Lcom/homesoft/encoder/Muxer;->getMuxerConfig()Lcom/homesoft/encoder/MuxerConfig;

    move-result-object v8

    .line 90
    iget-object v9, v5, Lcom/brakefield/painter/video/VideoCodec;->mimeType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/homesoft/encoder/MuxerConfig;->setMimeType(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 91
    invoke-virtual {v8, v9}, Lcom/homesoft/encoder/MuxerConfig;->setFramesPerImage(I)V

    int-to-float v9, v0

    .line 92
    invoke-virtual {v8, v9}, Lcom/homesoft/encoder/MuxerConfig;->setFramesPerSecond(F)V

    .line 93
    invoke-virtual {v8, v1}, Lcom/homesoft/encoder/MuxerConfig;->setVideoWidth(I)V

    .line 94
    invoke-virtual {v8, v2}, Lcom/homesoft/encoder/MuxerConfig;->setVideoHeight(I)V

    .line 95
    invoke-virtual {v8, v6}, Lcom/homesoft/encoder/MuxerConfig;->setBitrate(I)V

    .line 96
    iget-object v5, v5, Lcom/brakefield/painter/video/VideoCodec;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Lcom/homesoft/encoder/MuxerConfig;->setCodecName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v7, v8}, Lcom/homesoft/encoder/Muxer;->setMuxerConfig(Lcom/homesoft/encoder/MuxerConfig;)V

    const/4 v5, 0x0

    .line 100
    invoke-virtual {v7, p4, v5}, Lcom/homesoft/encoder/Muxer;->mux(Ljava/util/List;Ljava/lang/Integer;)Lcom/homesoft/encoder/MuxingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_1
    return-void
.end method

.method public static getPlaybackFolder()Ljava/lang/String;
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->removeStorageDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTargetBitrate(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x40d5754851eb851fL    # 21973.13

    div-double/2addr v0, v2

    const-wide v2, 0x3ffa07192ea52ef9L    # 1.626733

    .line 312
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, -0x3f7695b6fd6921d8L    # -813.28564947

    div-double/2addr v2, v0

    const-wide v0, 0x40896a6353f7ced9L    # 813.2985

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method private getTargetBitrate(Ljava/lang/String;I)I
    .locals 1

    .line 298
    invoke-direct {p0, p2}, Lcom/brakefield/painter/PlaybackManager;->getTargetBitrate(I)I

    move-result p2

    const-string/jumbo v0, "video/hevc"

    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p2

    const p2, 0x3f19999a    # 0.6f

    :goto_0
    mul-float/2addr p1, p2

    float-to-int p2, p1

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "video/av01"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    int-to-float p1, p2

    const p2, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method static synthetic lambda$getVideoList$0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "queued"

    const-string v1, ""

    .line 237
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    .line 240
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".mp4"

    .line 243
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 251
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p0, v1

    .line 253
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 255
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    sub-int/2addr p0, v1

    return p0
.end method

.method private testTargetBitrate()V
    .locals 3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size 0 is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/brakefield/painter/PlaybackManager;->getTargetBitrate(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Mbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Size 1280 is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x500

    invoke-direct {p0, v2}, Lcom/brakefield/painter/PlaybackManager;->getTargetBitrate(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Size 1920 is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x780

    invoke-direct {p0, v2}, Lcom/brakefield/painter/PlaybackManager;->getTargetBitrate(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Size 2560 is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa00

    invoke-direct {p0, v2}, Lcom/brakefield/painter/PlaybackManager;->getTargetBitrate(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Size 3840 is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xf00

    invoke-direct {p0, v2}, Lcom/brakefield/painter/PlaybackManager;->getTargetBitrate(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPlayback(Ljava/util/List;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;",
            ">;I)V"
        }
    .end annotation

    move/from16 v0, p2

    .line 112
    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object v1

    .line 113
    new-instance v2, Lprocessing/ffmpeg/videokit/VideoKit;

    invoke-direct {v2}, Lprocessing/ffmpeg/videokit/VideoKit;-><init>()V

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    .line 119
    iget-boolean v6, v5, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->ignore:Z

    if-nez v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 124
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v5, v0

    int-to-float v4, v4

    div-float/2addr v5, v4

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_2
    const-string v0, "last_frame"

    .line 129
    invoke-static {v1, v0}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectLocation()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPlaybackFramerate()I

    move-result v7

    const-string v8, "ffmpeg"

    const-string v9, "-y"

    const-string v10, "-loop"

    const-string v11, "1"

    const-string v12, "-r"

    .line 132
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "-vb"

    const-string v16, "20M"

    move-object v6, v15

    move-object/from16 v15, v16

    const-string v16, "-i"

    move/from16 p2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v27, v1

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "-c:v"

    const-string v19, "mpeg4"

    const-string v20, "-t"

    const-string v21, "5"

    const-string v22, "-vb"

    const-string v23, "20M"

    const-string v24, "-r"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_frame.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    filled-new-array/range {v8 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lprocessing/ffmpeg/videokit/VideoKit;->process([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 154
    new-instance v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    invoke-direct {v0, v1}, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v27, v1

    move/from16 p2, v5

    :cond_4
    :goto_1
    const-string v1, "playback.mp4"

    move-object/from16 v4, v27

    .line 157
    invoke-static {v4, v1}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 158
    invoke-static {v4, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-gt v5, v8, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    .line 215
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    iget-object v0, v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->fileName:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    :goto_2
    const-string v5, "fileList.txt"

    .line 162
    invoke-static {v4, v5}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v10, "line.separator"

    .line 165
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 166
    :try_start_0
    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 167
    :goto_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_8

    .line 168
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    iget-object v12, v12, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->fileName:Ljava/lang/String;

    .line 169
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 170
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v8

    if-ge v0, v12, :cond_7

    invoke-virtual {v11, v10}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 172
    :cond_8
    invoke-virtual {v11}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 166
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_4
    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "ffmpeg"

    .line 178
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "-y"

    .line 179
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "-f"

    .line 180
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "concat"

    .line 181
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "-i"

    .line 182
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "-c"

    .line 184
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "copy"

    .line 185
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v8, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    invoke-direct {v8, v5}, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v8, v3, [Ljava/lang/String;

    :goto_6
    if-ge v6, v3, :cond_9

    .line 191
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 193
    :cond_9
    invoke-virtual {v2, v8}, Lprocessing/ffmpeg/videokit/VideoKit;->process([Ljava/lang/String;)I

    .line 195
    invoke-static {v4, v5}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v3

    if-gez v0, :cond_a

    const-string/jumbo v0, "temp.mp4"

    .line 199
    invoke-static {v4, v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "ffmpeg"

    const-string v6, "-i"

    const-string v8, "-vb"

    const-string v9, "20M"

    const-string v10, "-filter:v"

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setpts="

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v11, p2

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, "*PTS"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lprocessing/ffmpeg/videokit/VideoKit;->process([Ljava/lang/String;)I

    .line 211
    invoke-static {v4, v1}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {v4, v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_7
    return-void
.end method

.method public createPlaybackSegments(Landroid/content/Context;)V
    .locals 8

    .line 41
    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/brakefield/infinitestudio/FileManager;->getFiles(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 47
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    const-string v7, "jpg"

    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 49
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v0, v6}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    const-string v3, ".mp4"

    const-string v5, "_"

    const-string v6, "queued"

    .line 58
    invoke-static {v0, v6, v3, v5}, Lcom/brakefield/infinitestudio/FileManager;->getNewFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/brakefield/painter/PlaybackManager;->createQueuedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "last_frame"

    .line 63
    invoke-static {v0, p1, v2}, Lcom/brakefield/infinitestudio/FileManager;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public deletePlayback()V
    .locals 2

    .line 401
    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBestCodecsFor(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/video/VideoCodec;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v2, p0, Lcom/brakefield/painter/PlaybackManager;->videoCodecs:Lcom/brakefield/painter/video/VideoCodecs;

    const-string/jumbo v3, "video/3gpp"

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/video/VideoCodecs;->getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    iget-object v2, p0, Lcom/brakefield/painter/PlaybackManager;->videoCodecs:Lcom/brakefield/painter/video/VideoCodecs;

    const-string/jumbo v3, "video/avc"

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/video/VideoCodecs;->getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v2, p0, Lcom/brakefield/painter/PlaybackManager;->videoCodecs:Lcom/brakefield/painter/video/VideoCodecs;

    const-string/jumbo v3, "video/hevc"

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/video/VideoCodecs;->getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    iget-object v2, p0, Lcom/brakefield/painter/PlaybackManager;->videoCodecs:Lcom/brakefield/painter/video/VideoCodecs;

    const-string/jumbo v3, "video/av01"

    invoke-virtual {v2, v3}, Lcom/brakefield/painter/video/VideoCodecs;->getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v2, p0, Lcom/brakefield/painter/PlaybackManager;->videoCodecs:Lcom/brakefield/painter/video/VideoCodecs;

    invoke-virtual {v2, v1}, Lcom/brakefield/painter/video/VideoCodecs;->getEncoders(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 284
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/brakefield/painter/video/VideoCodec;

    .line 285
    invoke-virtual {v4, p1, p2}, Lcom/brakefield/painter/video/VideoCodec;->getFitDimensions(II)Lcom/brakefield/painter/video/Dimensions;

    move-result-object v5

    .line 286
    invoke-virtual {v5, p1, p2}, Lcom/brakefield/painter/video/Dimensions;->getFitScale(II)F

    move-result v5

    if-eqz v3, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-gez v6, :cond_1

    cmpl-float v6, v5, v2

    if-ltz v6, :cond_0

    :cond_1
    const/4 v2, 0x0

    .line 290
    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v3, v4

    move v2, v5

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDimensionsFor(FFF)Lcom/brakefield/painter/video/Dimensions;
    .locals 1

    div-float v0, p3, p1

    div-float/2addr p3, p2

    .line 326
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    mul-float/2addr p1, p3

    mul-float/2addr p2, p3

    .line 331
    :cond_0
    new-instance p3, Lcom/brakefield/painter/video/Dimensions;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p3, p1, p2}, Lcom/brakefield/painter/video/Dimensions;-><init>(II)V

    return-object p3
.end method

.method public getVideoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/FileManager;->getFiles(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 227
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "mp4"

    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "playback.mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "last_frame"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 229
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 235
    new-instance v1, Lcom/brakefield/painter/PlaybackManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/brakefield/painter/PlaybackManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

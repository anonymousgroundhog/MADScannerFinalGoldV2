.class Lprocessing/ffmpeg/videokit/VideoCommandBuilder;
.super Ljava/lang/Object;
.source "VideoCommandBuilder.java"

# interfaces
.implements Lprocessing/ffmpeg/videokit/CommandBuilder;


# static fields
.field private static final COPY_FLAG:Ljava/lang/String; = "copy"

.field private static final DURATION_FLAG:Ljava/lang/String; = "-t"

.field private static final EXPERIMENTAL_FLAG:Ljava/lang/String; = "-2"

.field private static final FAST_DECODE:Ljava/lang/String; = "fastdecode"

.field private static final FRAME_RATE_FLAG:Ljava/lang/String; = "-framerate"

.field private static final INPUT_FILE_FLAG:Ljava/lang/String; = "-i"

.field private static final OVERWRITE_FLAG:Ljava/lang/String; = "-y"

.field private static final REMOVE_AUDIO_STREAM_FLAG:Ljava/lang/String; = "-an"

.field private static final STRICT_FLAG:Ljava/lang/String; = "-strict"

.field private static final TRIM_FLAG:Ljava/lang/String; = "-ss"

.field private static final TUNE_FLAG:Ljava/lang/String; = "-tune"

.field private static final VIDEO_BITRATE_FLAG:Ljava/lang/String; = "-b:v"

.field private static final VIDEO_CODEC_FLAG:Ljava/lang/String; = "-vcodec"

.field private static final VIDEO_FILTER_FLAG:Ljava/lang/String; = "-vf"

.field private static final ZERO_LATENCY:Ljava/lang/String; = "zerolatency"


# instance fields
.field private experimentalFlagSet:Z

.field private final flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inputPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outputPath:Ljava/lang/String;

.field private final videoKit:Lprocessing/ffmpeg/videokit/VideoKit;


# direct methods
.method constructor <init>(Lprocessing/ffmpeg/videokit/VideoKit;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->inputPaths:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->videoKit:Lprocessing/ffmpeg/videokit/VideoKit;

    return-void
.end method

.method private addExperimentalFlagIfNecessary(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-boolean v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->experimentalFlagSet:Z

    if-eqz v0, :cond_0

    const-string v0, "-strict"

    .line 187
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "-2"

    .line 188
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addInputPathsToFlags(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->inputPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-i"

    .line 174
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkInputPathsAndThrowIfEmpty()V
    .locals 2

    .line 161
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->inputPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify at least one input path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOutputPathAndThrowIfEmpty()V
    .locals 2

    .line 167
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->outputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify output path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyFlagsToNewDestination(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 181
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lprocessing/ffmpeg/videokit/Command;
    .locals 4

    .line 146
    invoke-direct {p0}, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->checkInputPathsAndThrowIfEmpty()V

    .line 147
    invoke-direct {p0}, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->checkOutputPathAndThrowIfEmpty()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-direct {p0, v0}, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->addInputPathsToFlags(Ljava/util/List;)V

    .line 152
    invoke-direct {p0, v0}, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->copyFlagsToNewDestination(Ljava/util/List;)V

    .line 153
    invoke-direct {p0, v0}, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->addExperimentalFlagIfNecessary(Ljava/util/List;)V

    .line 155
    iget-object v1, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->outputPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lprocessing/ffmpeg/videokit/VideoCommand;

    iget-object v2, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->outputPath:Ljava/lang/String;

    iget-object v3, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->videoKit:Lprocessing/ffmpeg/videokit/VideoKit;

    invoke-direct {v1, v0, v2, v3}, Lprocessing/ffmpeg/videokit/VideoCommand;-><init>(Ljava/util/List;Ljava/lang/String;Lprocessing/ffmpeg/videokit/VideoKit;)V

    return-object v1
.end method

.method public copyVideoCodec()Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 2

    .line 88
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v1, "-vcodec"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/firebase/crashlytics/internal/model/gzDJ/JGPXHEH;->ZiPncf:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public crop(IIII)Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 3

    .line 95
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v1, "-vf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "crop="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public customCommand(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public experimentalFlag()Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->experimentalFlagSet:Z

    return-object p0
.end method

.method public fastTune()Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 3

    .line 137
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v1, "-tune"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v2, "fastdecode"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string/jumbo v1, "zerolatency"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public inputPath(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 1

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->inputPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    sget-object v0, Landroidx/constraintlayout/motion/widget/Opu/AFxbOaHHHN;->lzSSO:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public limitFrameRate(I)Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 2

    .line 130
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v1, "-framerate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public limitVideoBitrate(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 2

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v1, "-b:v"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "It\'s not a good idea to pass empty path here"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public outputPath(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->outputPath:Ljava/lang/String;

    return-object p0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "It\'s not a good idea to pass empty path here"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public overwriteOutput()Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 2

    .line 46
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v1, "-y"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public trimForDuration(II)Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 2

    .line 73
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v1, "-ss"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v0, "-t"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withoutAudio()Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 2

    .line 82
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;->flags:Ljava/util/List;

    const-string v1, "-an"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

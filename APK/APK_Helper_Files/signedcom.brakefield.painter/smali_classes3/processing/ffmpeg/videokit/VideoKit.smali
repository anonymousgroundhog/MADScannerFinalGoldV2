.class public Lprocessing/ffmpeg/videokit/VideoKit;
.super Ljava/lang/Object;
.source "VideoKit.java"


# instance fields
.field private logLevel:Lprocessing/ffmpeg/videokit/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "avutil"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "swresample"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avcodec"

    .line 12
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avformat"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "swscale"

    .line 14
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avfilter"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avdevice"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "videokit"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lprocessing/ffmpeg/videokit/LogLevel;->NO_LOG:Lprocessing/ffmpeg/videokit/LogLevel;

    iput-object v0, p0, Lprocessing/ffmpeg/videokit/VideoKit;->logLevel:Lprocessing/ffmpeg/videokit/LogLevel;

    return-void
.end method

.method private native run(I[Ljava/lang/String;)I
.end method


# virtual methods
.method public createCommand()Lprocessing/ffmpeg/videokit/CommandBuilder;
    .locals 1

    .line 36
    new-instance v0, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;

    invoke-direct {v0, p0}, Lprocessing/ffmpeg/videokit/VideoCommandBuilder;-><init>(Lprocessing/ffmpeg/videokit/VideoKit;)V

    return-object v0
.end method

.method public process([Ljava/lang/String;)I
    .locals 1

    .line 30
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoKit;->logLevel:Lprocessing/ffmpeg/videokit/LogLevel;

    invoke-virtual {v0}, Lprocessing/ffmpeg/videokit/LogLevel;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lprocessing/ffmpeg/videokit/VideoKit;->run(I[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLogLevel(Lprocessing/ffmpeg/videokit/LogLevel;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lprocessing/ffmpeg/videokit/VideoKit;->logLevel:Lprocessing/ffmpeg/videokit/LogLevel;

    return-void
.end method

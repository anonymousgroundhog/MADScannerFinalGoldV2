.class Lprocessing/ffmpeg/videokit/VideoCommand;
.super Ljava/lang/Object;
.source "VideoCommand.java"

# interfaces
.implements Lprocessing/ffmpeg/videokit/Command;


# static fields
.field private static final FFMPEG_PROGRAM_NAME:Ljava/lang/String; = "ffmpeg"


# instance fields
.field private final arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final outputPath:Ljava/lang/String;

.field private final videoKit:Lprocessing/ffmpeg/videokit/VideoKit;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lprocessing/ffmpeg/videokit/VideoKit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lprocessing/ffmpeg/videokit/VideoKit;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->arguments:Ljava/util/List;

    .line 19
    iput-object p2, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->outputPath:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->videoKit:Lprocessing/ffmpeg/videokit/VideoKit;

    return-void
.end method

.method private deleteOutput()V
    .locals 2

    .line 48
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->outputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getArgumentsAsArray()[Ljava/lang/String;
    .locals 5

    .line 36
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 37
    :goto_0
    iget-object v3, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->arguments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 38
    iget-object v4, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->arguments:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    move v2, v3

    goto :goto_0

    :cond_0
    const-string v2, "ffmpeg"

    .line 41
    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public execute()Lprocessing/ffmpeg/videokit/VideoProcessingResult;
    .locals 3

    .line 26
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->videoKit:Lprocessing/ffmpeg/videokit/VideoKit;

    invoke-direct {p0}, Lprocessing/ffmpeg/videokit/VideoCommand;->getArgumentsAsArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lprocessing/ffmpeg/videokit/VideoKit;->process([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v1, Lprocessing/ffmpeg/videokit/VideoProcessingResult;

    iget-object v2, p0, Lprocessing/ffmpeg/videokit/VideoCommand;->outputPath:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lprocessing/ffmpeg/videokit/VideoProcessingResult;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 30
    :cond_0
    invoke-direct {p0}, Lprocessing/ffmpeg/videokit/VideoCommand;->deleteOutput()V

    .line 31
    new-instance v1, Lprocessing/ffmpeg/videokit/VideoProcessingResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lprocessing/ffmpeg/videokit/VideoProcessingResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

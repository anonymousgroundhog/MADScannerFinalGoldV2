.class public Lprocessing/ffmpeg/videokit/VideoProcessingResult;
.super Ljava/lang/Object;
.source "VideoProcessingResult.java"


# static fields
.field static final SUCCESSFUL_RESULT:I


# instance fields
.field private final pathToFile:Ljava/lang/String;

.field private final returnCode:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lprocessing/ffmpeg/videokit/VideoProcessingResult;->returnCode:I

    .line 15
    iput-object p2, p0, Lprocessing/ffmpeg/videokit/VideoProcessingResult;->pathToFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 27
    iget v0, p0, Lprocessing/ffmpeg/videokit/VideoProcessingResult;->returnCode:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/VideoProcessingResult;->pathToFile:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 19
    iget v0, p0, Lprocessing/ffmpeg/videokit/VideoProcessingResult;->returnCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

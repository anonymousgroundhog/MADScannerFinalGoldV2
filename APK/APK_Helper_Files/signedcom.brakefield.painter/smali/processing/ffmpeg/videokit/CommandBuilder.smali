.class public interface abstract Lprocessing/ffmpeg/videokit/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# virtual methods
.method public abstract build()Lprocessing/ffmpeg/videokit/Command;
.end method

.method public abstract copyVideoCodec()Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract crop(IIII)Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract customCommand(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract experimentalFlag()Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract fastTune()Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract inputPath(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract limitFrameRate(I)Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract limitVideoBitrate(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract outputPath(Ljava/lang/String;)Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract overwriteOutput()Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract trimForDuration(II)Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

.method public abstract withoutAudio()Lprocessing/ffmpeg/videokit/CommandBuilder;
.end method

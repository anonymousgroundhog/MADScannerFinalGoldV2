.class Lprocessing/ffmpeg/videokit/AsyncCommandExecutor$1;
.super Ljava/lang/Object;
.source "AsyncCommandExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;


# direct methods
.method constructor <init>(Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor$1;->this$0:Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 16
    iget-object v0, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor$1;->this$0:Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;

    invoke-static {v0}, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;->access$000(Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;)Lprocessing/ffmpeg/videokit/Command;

    move-result-object v0

    invoke-interface {v0}, Lprocessing/ffmpeg/videokit/Command;->execute()Lprocessing/ffmpeg/videokit/VideoProcessingResult;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor$1;->this$0:Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;

    invoke-static {v1}, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;->access$100(Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lprocessing/ffmpeg/videokit/ProcessingListener;

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v0}, Lprocessing/ffmpeg/videokit/VideoProcessingResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v0}, Lprocessing/ffmpeg/videokit/VideoProcessingResult;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lprocessing/ffmpeg/videokit/ProcessingListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lprocessing/ffmpeg/videokit/VideoProcessingResult;->getCode()I

    move-result v0

    invoke-interface {v1, v0}, Lprocessing/ffmpeg/videokit/ProcessingListener;->onFailure(I)V

    :cond_1
    :goto_0
    return-void
.end method

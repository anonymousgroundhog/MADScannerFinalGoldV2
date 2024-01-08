.class public Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;
.super Ljava/lang/Object;
.source "AsyncCommandExecutor.java"


# instance fields
.field private final command:Lprocessing/ffmpeg/videokit/Command;

.field private final executionRunnable:Ljava/lang/Runnable;

.field private final listenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lprocessing/ffmpeg/videokit/ProcessingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lprocessing/ffmpeg/videokit/Command;Lprocessing/ffmpeg/videokit/ProcessingListener;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor$1;

    invoke-direct {v0, p0}, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor$1;-><init>(Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;)V

    iput-object v0, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;->executionRunnable:Ljava/lang/Runnable;

    .line 30
    iput-object p1, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;->command:Lprocessing/ffmpeg/videokit/Command;

    .line 31
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;)Lprocessing/ffmpeg/videokit/Command;
    .locals 0

    .line 9
    iget-object p0, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;->command:Lprocessing/ffmpeg/videokit/Command;

    return-object p0
.end method

.method static synthetic access$100(Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 9
    iget-object p0, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lprocessing/ffmpeg/videokit/AsyncCommandExecutor;->executionRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

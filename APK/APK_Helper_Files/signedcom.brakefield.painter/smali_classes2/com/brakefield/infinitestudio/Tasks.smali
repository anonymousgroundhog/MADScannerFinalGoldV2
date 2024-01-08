.class public Lcom/brakefield/infinitestudio/Tasks;
.super Ljava/lang/Object;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/Tasks$Task;
    }
.end annotation


# instance fields
.field private currentTask:Lcom/brakefield/infinitestudio/Tasks$Task;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final handler:Landroid/os/Handler;

.field private final queuedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/Tasks$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->executor:Ljava/util/concurrent/ExecutorService;

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->currentTask:Lcom/brakefield/infinitestudio/Tasks$Task;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->queuedTasks:Ljava/util/List;

    return-void
.end method

.method private runNextQueuedTask()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->currentTask:Lcom/brakefield/infinitestudio/Tasks$Task;

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->queuedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->queuedTasks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/Tasks$Task;

    .line 44
    iput-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->currentTask:Lcom/brakefield/infinitestudio/Tasks$Task;

    .line 45
    iget-object v1, p0, Lcom/brakefield/infinitestudio/Tasks;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/Tasks;Lcom/brakefield/infinitestudio/Tasks$Task;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$runAsync$2$com-brakefield-infinitestudio-Tasks(Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/Tasks$Task;->run()V

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->handler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/Tasks$Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$runAsyncDelayed$3$com-brakefield-infinitestudio-Tasks(Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/Tasks;->runAsync(Lcom/brakefield/infinitestudio/Tasks$Task;)V

    return-void
.end method

.method synthetic lambda$runNextQueuedTask$0$com-brakefield-infinitestudio-Tasks(Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/Tasks$Task;->runPost()V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/brakefield/infinitestudio/Tasks;->currentTask:Lcom/brakefield/infinitestudio/Tasks$Task;

    .line 50
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/Tasks;->runNextQueuedTask()V

    return-void
.end method

.method synthetic lambda$runNextQueuedTask$1$com-brakefield-infinitestudio-Tasks(Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/Tasks$Task;->run()V

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/Tasks;Lcom/brakefield/infinitestudio/Tasks$Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public queue(Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->queuedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/Tasks;->runNextQueuedTask()V

    return-void
.end method

.method public run(Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->handler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/Tasks$Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runAsync(Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/Tasks;Lcom/brakefield/infinitestudio/Tasks$Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runAsyncDelayed(Lcom/brakefield/infinitestudio/Tasks$Task;J)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/Tasks;Lcom/brakefield/infinitestudio/Tasks$Task;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public runDelayed(Lcom/brakefield/infinitestudio/Tasks$Task;J)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks;->handler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/Tasks$Task;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

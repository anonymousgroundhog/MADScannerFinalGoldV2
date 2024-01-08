.class public Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;
.super Ljava/lang/Object;
.source "CorrectionManager.java"


# static fields
.field private static actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized add(Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;)V
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-virtual {v1, p0}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->add(Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRedo()Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->getRedo()Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUndo()Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->getUndo()Lcom/brakefield/infinitestudio/sketchbook/ActionManager$Action;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initialize()V
    .locals 0

    .line 36
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->destroy()V

    return-void
.end method

.method public static declared-synchronized numberOfRedos()I
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->redos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized numberOfUndos()I
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    iget-object v1, v1, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->undos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized redo()V
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->redo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized redosIsEmpty()Z
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->redosIsEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized undo()V
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->undo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized undosIsEmpty()Z
    .locals 2

    const-class v0, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/sketchbook/CorrectionManager;->actionManager:Lcom/brakefield/infinitestudio/sketchbook/ActionManager;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/ActionManager;->undosIsEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

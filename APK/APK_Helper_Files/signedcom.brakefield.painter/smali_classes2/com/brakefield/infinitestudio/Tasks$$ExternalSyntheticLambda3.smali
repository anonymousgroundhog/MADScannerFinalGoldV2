.class public final synthetic Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/Tasks;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/Tasks$Task;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/Tasks;Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/infinitestudio/Tasks;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/infinitestudio/Tasks$Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda3;->f$0:Lcom/brakefield/infinitestudio/Tasks;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda3;->f$1:Lcom/brakefield/infinitestudio/Tasks$Task;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/Tasks;->lambda$runNextQueuedTask$0$com-brakefield-infinitestudio-Tasks(Lcom/brakefield/infinitestudio/Tasks$Task;)V

    return-void
.end method

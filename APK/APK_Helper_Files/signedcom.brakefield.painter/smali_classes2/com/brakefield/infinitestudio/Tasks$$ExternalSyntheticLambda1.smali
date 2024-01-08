.class public final synthetic Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/Tasks$Task;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/Tasks$Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/Tasks$Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/infinitestudio/Tasks$Task;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/Tasks$Task;->run()V

    return-void
.end method

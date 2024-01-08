.class public abstract Lcom/brakefield/infinitestudio/Tasks$Task;
.super Ljava/lang/Object;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# instance fields
.field private then:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract run()V
.end method

.method public runPost()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Tasks$Task;->then:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public then(Ljava/lang/Runnable;)Lcom/brakefield/infinitestudio/Tasks$Task;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/brakefield/infinitestudio/Tasks$Task;->then:Ljava/lang/Runnable;

    return-object p0
.end method

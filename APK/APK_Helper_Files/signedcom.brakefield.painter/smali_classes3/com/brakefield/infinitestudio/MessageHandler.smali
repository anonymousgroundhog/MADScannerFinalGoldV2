.class public abstract Lcom/brakefield/infinitestudio/MessageHandler;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    }
.end annotation


# instance fields
.field private final dataHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/MessageHandler$HandleData;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/MessageHandler;->getDataHandlers()[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->dataHandlers:Ljava/util/List;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/MessageHandler;->getCallback()Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/MessageHandler;->getDataHandlers()[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->dataHandlers:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/MessageHandler;->getCallback()Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getCallback()Landroid/os/Handler$Callback;
    .locals 1

    .line 82
    new-instance v0, Lcom/brakefield/infinitestudio/MessageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/MessageHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/MessageHandler;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDataHandlers()[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
.end method

.method synthetic lambda$getCallback$0$com-brakefield-infinitestudio-MessageHandler(Landroid/os/Message;)Z
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->dataHandlers:Ljava/util/List;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 84
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/MessageHandler$HandleData;->handle(Ljava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/infinitestudio/MessageHandler;->sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;I)V

    return-void
.end method

.method public sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/infinitestudio/MessageHandler;->sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;I)V

    return-void
.end method

.method public sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;III)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/infinitestudio/MessageHandler;->sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;I)V

    return-void
.end method

.method public sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->dataHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    int-to-long p3, p5

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;ILjava/lang/Object;I)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/infinitestudio/MessageHandler;->sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;I)V

    return-void
.end method

.method public sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Ljava/lang/Object;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/infinitestudio/MessageHandler;->sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;I)V

    return-void
.end method

.method public sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;II)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->dataHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/brakefield/infinitestudio/MessageHandler;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/brakefield/infinitestudio/MessageHandler;->sendMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;IILjava/lang/Object;)V

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;
.super Ljava/lang/Object;
.source "PerformanceTimer.java"


# instance fields
.field private lastTime:J

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->lastTime:J

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->lastTime:J

    return-void
.end method

.method public time()V
    .locals 6

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->lastTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Timer: took "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->lastTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->lastTime:J

    return-void
.end method

.method public time(Ljava/lang/String;)V
    .locals 6

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    iget-wide v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->lastTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TimerOperation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": took "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v3, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->lastTime:J

    sub-long v3, v0, v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " ms"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/ui/carousel/util/PerformanceTimer;->lastTime:J

    return-void
.end method

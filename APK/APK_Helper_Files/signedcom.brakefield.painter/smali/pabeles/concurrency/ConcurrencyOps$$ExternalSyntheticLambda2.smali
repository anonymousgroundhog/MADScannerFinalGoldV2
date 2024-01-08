.class public final synthetic Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(IILjava/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda2;->f$2:Ljava/util/function/IntConsumer;

    invoke-static {v0, v1, v2}, Lpabeles/concurrency/ConcurrencyOps;->lambda$loopFor$0(IILjava/util/function/IntConsumer;)V

    return-void
.end method

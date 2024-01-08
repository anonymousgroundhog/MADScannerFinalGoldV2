.class public final synthetic Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/function/IntConsumer;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/IntConsumer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntConsumer;

    iput p3, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/IntConsumer;

    iget v2, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lpabeles/concurrency/ConcurrencyOps;->lambda$loopFor$2(ILjava/util/function/IntConsumer;II)V

    return-void
.end method

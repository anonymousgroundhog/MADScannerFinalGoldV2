.class public final synthetic Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/IntConsumer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntConsumer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    iput p2, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntConsumer;

    iget v1, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lpabeles/concurrency/ConcurrencyOps$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lpabeles/concurrency/ConcurrencyOps;->lambda$loopFor$1(Ljava/util/function/IntConsumer;III)V

    return-void
.end method

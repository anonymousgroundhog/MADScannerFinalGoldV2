.class public final synthetic Lcom/brakefield/painter/experiments/FirebaseValueProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/experiments/FirebaseValueProvider;

.field public final synthetic f$1:Lcom/brakefield/painter/experiments/Values;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/experiments/FirebaseValueProvider;Lcom/brakefield/painter/experiments/Values;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/experiments/FirebaseValueProvider;

    iput-object p2, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/experiments/Values;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/experiments/FirebaseValueProvider;

    iget-object v1, p0, Lcom/brakefield/painter/experiments/FirebaseValueProvider$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/experiments/Values;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/experiments/FirebaseValueProvider;->lambda$setup$0$com-brakefield-painter-experiments-FirebaseValueProvider(Lcom/brakefield/painter/experiments/Values;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

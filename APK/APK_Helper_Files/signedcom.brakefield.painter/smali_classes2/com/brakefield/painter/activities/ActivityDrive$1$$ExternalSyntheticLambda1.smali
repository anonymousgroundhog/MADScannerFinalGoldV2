.class public final synthetic Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityDrive$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivityDrive$1;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/activities/ActivityDrive$1;->lambda$addSections$0$com-brakefield-painter-activities-ActivityDrive$1(Ljava/util/List;)V

    return-void
.end method

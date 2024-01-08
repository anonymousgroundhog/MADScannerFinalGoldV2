.class public final synthetic Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;

    iput p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;

    iget v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->lambda$doInBackground$0$com-brakefield-painter-activities-ActivityPlayback$ProcessVideosTask(I)V

    return-void
.end method

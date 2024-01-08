.class public final synthetic Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

.field public final synthetic f$1:Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    iput p3, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    iget v2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->lambda$onBindViewHolder$1$com-brakefield-painter-activities-ActivityPlayback$ThumbAdapter(Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    iput p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    iget v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->lambda$onBindViewHolder$0$com-brakefield-painter-activities-ActivityPlayback$ThumbAdapter(ILandroid/view/View;)V

    return-void
.end method

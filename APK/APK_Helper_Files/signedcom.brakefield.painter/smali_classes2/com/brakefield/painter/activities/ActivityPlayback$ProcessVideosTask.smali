.class Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;
.super Landroid/os/AsyncTask;
.source "ActivityPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessVideosTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[I",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityPlayback;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityPlayback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;",
            ">;)V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->segments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 301
    check-cast p1, [[I

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->doInBackground([[I)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([[I)Ljava/lang/Void;
    .locals 2

    const/4 p1, 0x0

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    .line 313
    invoke-virtual {v0}, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->loadThumb()V

    .line 315
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityPlayback;->access$000(Lcom/brakefield/painter/activities/ActivityPlayback;)Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityPlaybackBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$doInBackground$0$com-brakefield-painter-activities-ActivityPlayback$ProcessVideosTask(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object v0, v0, Lcom/brakefield/painter/activities/ActivityPlayback;->adapter:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$ProcessVideosTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.class Lcom/brakefield/painter/activities/ActivityPlayback$2;
.super Ljava/lang/Object;
.source "ActivityPlayback.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivityPlayback;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityPlayback;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityPlayback;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$2;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$2;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result p1

    .line 178
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$2;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p2, p2, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getProgress()I

    move-result p2

    if-eq p2, p1, :cond_0

    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$2;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p2, p2, Lcom/brakefield/painter/activities/ActivityPlayback;->playbackSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    :cond_0
    return-void
.end method

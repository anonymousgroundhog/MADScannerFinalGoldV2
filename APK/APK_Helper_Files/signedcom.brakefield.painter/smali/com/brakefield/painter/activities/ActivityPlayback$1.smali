.class Lcom/brakefield/painter/activities/ActivityPlayback$1;
.super Ljava/lang/Object;
.source "ActivityPlayback.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivityPlayback;->bindMainContent(Landroid/view/ViewGroup;)V
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

    .line 134
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$1;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$1;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$1;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$1;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$1;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->pause()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$1;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->play()V

    return-void
.end method

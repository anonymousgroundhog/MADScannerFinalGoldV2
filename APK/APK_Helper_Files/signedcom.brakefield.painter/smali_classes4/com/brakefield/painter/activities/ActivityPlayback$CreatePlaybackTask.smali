.class Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;
.super Landroid/os/AsyncTask;
.source "ActivityPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreatePlaybackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field duration:I

.field playbackManager:Lcom/brakefield/painter/PlaybackManager;

.field progress:Landroid/view/View;

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
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityPlayback;Landroid/app/Activity;Lcom/brakefield/painter/PlaybackManager;Ljava/util/List;ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/brakefield/painter/PlaybackManager;",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;",
            ">;I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->activity:Landroid/app/Activity;

    .line 334
    iput-object p3, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    .line 335
    iput-object p4, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->segments:Ljava/util/List;

    .line 336
    iput p5, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->duration:I

    .line 337
    iput-object p6, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->progress:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 347
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->playbackManager:Lcom/brakefield/painter/PlaybackManager;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->segments:Ljava/util/List;

    iget v1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->duration:I

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/PlaybackManager;->createPlayback(Ljava/util/List;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getNewPlaybackName(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 5

    .line 378
    new-instance v0, Lcom/brakefield/painter/nativeobjs/ProjectNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProject()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/ProjectNative;-><init>(J)V

    .line 379
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/ProjectNative;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Untitled"

    :cond_0
    const/4 v1, 0x0

    .line 386
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_2

    move-object v2, v3

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method synthetic lambda$onPostExecute$0$com-brakefield-painter-activities-ActivityPlayback$CreatePlaybackTask(Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    .line 365
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->activity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/brakefield/painter/ShareManager;->sendToOther(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 324
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .line 354
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->progress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, ".mp4"

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->getNewPlaybackName(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const-string v1, "playback.mp4"

    if-lt p1, v0, :cond_0

    .line 359
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "video/mp4"

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getSharedMoviesDirectory()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/FileManager;->copyFileToMediaStore(Ljava/io/File;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 361
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    if-eqz v0, :cond_1

    .line 363
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->progress:Landroid/view/View;

    const v1, 0x7f120a69

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    const v1, 0x7f120a8b

    .line 364
    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 367
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeSnackbar(Lcom/google/android/material/snackbar/Snackbar;)V

    .line 368
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0, v2}, Lcom/brakefield/infinitestudio/FileManager;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/FileManager;->updateGallery(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/brakefield/painter/ShareManager;->launchShareOptions(Landroid/app/Activity;Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$CreatePlaybackTask;->progress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.class public Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;
.super Ljava/lang/Object;
.source "PlaybackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/PlaybackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackSegment"
.end annotation


# instance fields
.field public bitrate:Ljava/lang/String;

.field public corrupted:Z

.field public duration:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public framerate:Ljava/lang/String;

.field public hasAudio:Ljava/lang/String;

.field public hasVideo:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public ignore:Z

.field public mimeType:Ljava/lang/String;

.field public numTracks:Ljava/lang/String;

.field private retriever:Landroid/media/MediaMetadataRetriever;

.field public rotation:Ljava/lang/String;

.field public thumb:Landroid/graphics/Bitmap;

.field public width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 341
    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->duration:Ljava/lang/String;

    .line 354
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    .line 357
    iput-object p1, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->fileName:Ljava/lang/String;

    .line 358
    invoke-static {}, Lcom/brakefield/painter/PlaybackManager;->getPlaybackFolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->filePath:Ljava/lang/String;

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 362
    iput-boolean p1, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->corrupted:Z

    .line 364
    :goto_0
    invoke-direct {p0}, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->populateInfo()V

    return-void
.end method

.method private populateInfo()V
    .locals 2

    .line 368
    iget-boolean v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->corrupted:Z

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->bitrate:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->duration:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->hasAudio:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->hasVideo:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->mimeType:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->numTracks:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->height:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->rotation:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->width:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->framerate:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->duration:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "0"

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->duration:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getFrame(J)Landroid/graphics/Bitmap;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadThumb()V
    .locals 4

    .line 384
    iget-boolean v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->corrupted:Z

    if-eqz v0, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->retriever:Landroid/media/MediaMetadataRetriever;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->thumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x43000000    # 128.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->thumb:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.class public Lcom/brakefield/painter/video/VideoCodecs;
.super Ljava/lang/Object;
.source "VideoCodecs.java"


# instance fields
.field private final codecs:[Lcom/brakefield/painter/video/VideoCodec;


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 20
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 22
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 23
    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 25
    invoke-virtual {v5, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    .line 26
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_4

    .line 31
    :cond_0
    iget-object v11, v9, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v12, v11

    move v13, v2

    :goto_2
    const/4 v14, 0x1

    if-ge v13, v12, :cond_2

    aget v15, v11, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 32
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const v2, 0x7f000789

    if-ne v15, v2, :cond_1

    move v2, v14

    goto :goto_3

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_3

    goto :goto_4

    .line 41
    :cond_3
    :try_start_0
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v2

    .line 42
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v11

    .line 43
    invoke-virtual {v2, v11}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 45
    new-instance v2, Lcom/brakefield/painter/video/VideoCodec;

    invoke-direct {v2, v5, v9, v10, v14}, Lcom/brakefield/painter/video/VideoCodec;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaCodecInfo$CodecCapabilities;Landroid/media/MediaCodecInfo$VideoCapabilities;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    new-array v1, v2, [Lcom/brakefield/painter/video/VideoCodec;

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/painter/video/VideoCodec;

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/brakefield/painter/video/VideoCodecs;->codecs:[Lcom/brakefield/painter/video/VideoCodec;

    return-void
.end method


# virtual methods
.method public getCodecsForMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/video/VideoCodec;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/brakefield/painter/video/VideoCodecs;->codecs:[Lcom/brakefield/painter/video/VideoCodec;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 60
    iget-object v5, v4, Lcom/brakefield/painter/video/VideoCodec;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEncoders(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/video/VideoCodec;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/video/VideoCodec;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/video/VideoCodec;

    .line 68
    iget-boolean v2, v1, Lcom/brakefield/painter/video/VideoCodec;->isEncoder:Z

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

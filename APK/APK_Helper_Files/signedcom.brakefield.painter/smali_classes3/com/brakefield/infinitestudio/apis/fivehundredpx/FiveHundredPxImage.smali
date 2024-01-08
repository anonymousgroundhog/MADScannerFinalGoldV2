.class public Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;
.super Lcom/brakefield/infinitestudio/image/ImageReference;
.source "FiveHundredPxImage.java"


# static fields
.field public static final imageType:Ljava/lang/String; = "500px"


# instance fields
.field imgID:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field pageURL:Ljava/lang/String;

.field sourceURL:Ljava/lang/String;

.field thumb128URL:Ljava/lang/String;

.field thumb256URL:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/ImageReference;-><init>()V

    return-void
.end method


# virtual methods
.method public follow()Landroid/content/Intent;
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->pageURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public get128ImageUrl()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->thumb128URL:Ljava/lang/String;

    return-object v0
.end method

.method public get256ImageUrl()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->thumb256URL:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getBigImageUrl()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->sourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "500px_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->imgID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImagePageUrl()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->pageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "500px\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget v1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v2, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->mHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->imgID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->owner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->thumb128URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->thumb256URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->pageURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->sourceURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public parseInfo([Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 106
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->mWidth:F

    const/4 v0, 0x3

    .line 107
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->mHeight:F

    const/4 v0, 0x4

    .line 108
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->imgID:Ljava/lang/String;

    const/4 v0, 0x5

    .line 109
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->owner:Ljava/lang/String;

    const/4 v0, 0x6

    .line 110
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->title:Ljava/lang/String;

    const/4 v0, 0x7

    .line 111
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->thumb128URL:Ljava/lang/String;

    const/16 v0, 0x8

    .line 112
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->thumb256URL:Ljava/lang/String;

    const/16 v0, 0x9

    .line 113
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->pageURL:Ljava/lang/String;

    const/16 v0, 0xa

    .line 114
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->sourceURL:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageID(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->imgID:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->owner:Ljava/lang/String;

    return-void
.end method

.method public setPageURL(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->pageURL:Ljava/lang/String;

    return-void
.end method

.method public setSourceURL(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->sourceURL:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail128URL(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->thumb128URL:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail256URL(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->thumb256URL:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/fivehundredpx/FiveHundredPxImage;->title:Ljava/lang/String;

    return-void
.end method

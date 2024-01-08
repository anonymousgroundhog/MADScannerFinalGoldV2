.class public Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;
.super Lcom/brakefield/infinitestudio/image/ImageReference;
.source "RssImage.java"


# static fields
.field public static final imageType:Ljava/lang/String; = "rss"


# instance fields
.field guid:Ljava/lang/String;

.field largeUrl:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field pageUrl:Ljava/lang/String;

.field rating:Ljava/lang/String;

.field thumbnailUrl:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/ImageReference;-><init>()V

    return-void
.end method


# virtual methods
.method public follow()Landroid/content/Intent;
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->pageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public get128ImageUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public get256ImageUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getBigImageUrl()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->largeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePageUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rss\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget v1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->mHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->guid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->owner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->largeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public parseInfo([Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x2

    .line 85
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->mWidth:F

    const/4 v0, 0x3

    .line 86
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->mHeight:F

    const/4 v0, 0x4

    .line 87
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->guid:Ljava/lang/String;

    const/4 v0, 0x5

    .line 88
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->owner:Ljava/lang/String;

    const/4 v0, 0x6

    .line 89
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->title:Ljava/lang/String;

    const/4 v0, 0x7

    .line 90
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->thumbnailUrl:Ljava/lang/String;

    const/16 v0, 0x8

    .line 91
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->pageUrl:Ljava/lang/String;

    const/16 v0, 0x9

    .line 92
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->largeUrl:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

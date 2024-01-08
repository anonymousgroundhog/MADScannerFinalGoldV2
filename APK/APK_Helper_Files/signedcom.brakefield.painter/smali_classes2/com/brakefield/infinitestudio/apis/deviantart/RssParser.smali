.class public Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;
.super Lcom/brakefield/infinitestudio/apis/deviantart/XmlParser2;
.source "RssParser.java"


# instance fields
.field curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageReference;",
            ">;"
        }
    .end annotation
.end field

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation
.end field

.field inItem:Z

.field sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/apis/deviantart/XmlParser2;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->data:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->images:Ljava/util/List;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->inItem:Z

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/apis/deviantart/XmlParser2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->ITEM:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->data:Ljava/util/List;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance p1, Lcom/brakefield/infinitestudio/image/ImageBean;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/image/ImageBean;-><init>()V

    .line 54
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->getImagePageUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/ImageBean;->src:Ljava/lang/String;

    .line 55
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->getBigImageUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/ImageBean;->imageUrl:Ljava/lang/String;

    .line 56
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->get128ImageUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/image/ImageBean;->thumbUrl:Ljava/lang/String;

    .line 57
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->rating:Ljava/lang/String;

    const-string v0, "adult"

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->images:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    iput-object p3, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    goto/16 :goto_2

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    if-eqz p1, :cond_7

    .line 64
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->TITLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->title:Ljava/lang/String;

    goto :goto_2

    .line 66
    :cond_2
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->LINK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->pageUrl:Ljava/lang/String;

    goto :goto_2

    .line 68
    :cond_3
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->GUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ":"

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    .line 70
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->guid:Ljava/lang/String;

    goto :goto_2

    .line 71
    :cond_4
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->CREDIT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->CREATOR:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 74
    :cond_5
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->RATING:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 75
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->rating:Ljava/lang/String;

    goto :goto_2

    .line 73
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->owner:Ljava/lang/String;

    .line 78
    :cond_7
    :goto_2
    iput-object p3, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method protected getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/ImageBean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->images:Ljava/util/List;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/apis/deviantart/XmlParser2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 28
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->ITEM:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    new-instance p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    invoke-direct {p1}, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    goto :goto_1

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    if-eqz p1, :cond_5

    .line 31
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->CONTENT:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    sget-object p2, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->URL:Ljava/lang/String;

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->largeUrl:Ljava/lang/String;

    goto :goto_1

    .line 33
    :cond_1
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->THUMBNAIL:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->curData:Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;

    sget-object p2, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->URL:Ljava/lang/String;

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssImage;->thumbnailUrl:Ljava/lang/String;

    goto :goto_1

    .line 35
    :cond_2
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->TITLE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->LINK:Ljava/lang/String;

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->GUID:Ljava/lang/String;

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->CREDIT:Ljava/lang/String;

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->CREATOR:Ljava/lang/String;

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 41
    :cond_3
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/RssTags;->RATING:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    goto :goto_1

    .line 40
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/RssParser;->sb:Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    return-void
.end method

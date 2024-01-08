.class public Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;
.super Ljava/lang/Object;
.source "DeviantArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "meta%3Aall"

.field public static final BACKEND_ROOT:Ljava/lang/String; = "http://backend.deviantart.com/rss.xml?q="

.field public static final END:Ljava/lang/String; = "&type=deviation"

.field public static final FIRST_SUB:Ljava/lang/String; = "%3A"

.field public static final OFFSET:Ljava/lang/String; = "&offset="

.field public static final SECOND_SUB:Ljava/lang/String; = "%2F"

.field public static final SORT_3DAYS_NEWEST:Ljava/lang/String; = "sort%3Atime+max_age%3A72h"

.field public static final SORT_3DAYS_POPULAR:Ljava/lang/String; = "boost%3Apopular+max_age%3A72h"

.field public static final SORT_8_NEWEST:Ljava/lang/String; = "sort%3Atime+max_age%3A8h"

.field public static final SORT_8_POPULAR:Ljava/lang/String; = "boost%3Apopular+max_age%3A8h"

.field public static final SORT_ALL_NEWEST:Ljava/lang/String; = "sort%3Atime"

.field public static final SORT_ALL_POPULAR:Ljava/lang/String; = "boost%3Apopular"

.field public static final SORT_DAY_NEWEST:Ljava/lang/String; = "sort%3Atime+max_age%3A24h"

.field public static final SORT_DAY_POPULAR:Ljava/lang/String; = "boost%3Apopular+max_age%3A24h"

.field public static final SORT_MONTH_NEWEST:Ljava/lang/String; = "sort%3Atime+max_age%3A8h"

.field public static final SORT_MONTH_POPULAR:Ljava/lang/String; = "boost%3Apopular+max_age%3A8h"

.field public static final SORT_WEEK_NEWEST:Ljava/lang/String; = "sort%3Atime+max_age%3A168h"

.field public static final SORT_WEEK_POPULAR:Ljava/lang/String; = "boost%3Apopular+max_age%3A168h"

.field public static root:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

.field public static selected:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

.field public static sortType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->construct(Landroid/content/res/Resources;)V

    return-void
.end method

.method private construct(Landroid/content/res/Resources;)V
    .locals 11

    .line 48
    sget v0, Lcom/brakefield/infinitestudio/R$raw;->deviant_map:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 49
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v7, "_"

    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 61
    array-length v7, v6

    .line 62
    array-length v8, v6

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget-object v6, v6, v8

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    new-instance v4, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    aget-object v5, v6, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v6, v3

    .line 65
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;-><init>(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sput-object v4, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->root:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    .line 68
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto :goto_2

    :cond_0
    if-ne v7, v5, :cond_1

    .line 70
    new-instance v4, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    aget-object v5, v6, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v6, v3

    .line 71
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;-><init>(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->add(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;)V

    goto :goto_2

    :cond_1
    if-le v7, v5, :cond_2

    .line 76
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    aget-object v5, v6, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v6, v3

    .line 78
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;-><init>(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v2}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->add(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;)V

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_2

    :cond_2
    if-ge v7, v5, :cond_4

    move v4, v3

    :goto_1
    sub-int v8, v5, v7

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_3

    .line 83
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 84
    :cond_3
    new-instance v4, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    aget-object v5, v6, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v6, v3

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;-><init>(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->add(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;)V

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    move v5, v7

    goto/16 :goto_0

    .line 92
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    :goto_3
    sget-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->root:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    sput-object p1, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->selected:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    return-void
.end method

.method private static getCategoryString()Ljava/lang/String;
    .locals 4

    .line 116
    sget-object v0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->selected:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    sget-object v1, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->root:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    if-ne v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 119
    sget-object v1, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->selected:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    .line 120
    :goto_0
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->hasParent()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 121
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    iget-object v1, v1, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->parent:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    if-nez v3, :cond_2

    const-string v2, "%3A"

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v2, "%2F"

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "+in"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRSSFeed()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://backend.deviantart.com/rss.xml?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->getSort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->getCategoryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&type=deviation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchFeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://backend.deviantart.com/rss.xml?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->getSort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->getCategoryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, 0x0

    sget-object v0, Lorg/ejml/sparse/csc/decomposition/chol/sGf/FmZKxH;->lRTYayJTENAUMUK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_1
    :goto_0
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->getRSSFeed()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSort()Ljava/lang/String;
    .locals 3

    .line 141
    sget v0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->sortType:I

    const-string/jumbo v1, "sort%3Atime+max_age%3A8h"

    const-string v2, "boost%3Apopular+max_age%3A8h"

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const-string/jumbo v0, "sort%3Atime+max_age%3A168h"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "sort%3Atime+max_age%3A72h"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "sort%3Atime+max_age%3A24h"

    return-object v0

    :pswitch_4
    return-object v1

    :pswitch_5
    const-string/jumbo v0, "sort%3Atime"

    return-object v0

    :pswitch_6
    return-object v2

    :pswitch_7
    const-string v0, "boost%3Apopular+max_age%3A168h"

    return-object v0

    :pswitch_8
    const-string v0, "boost%3Apopular+max_age%3A72h"

    return-object v0

    :pswitch_9
    const-string v0, "boost%3Apopular+max_age%3A24h"

    return-object v0

    :pswitch_a
    return-object v2

    :pswitch_b
    const-string v0, "boost%3Apopular"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt;->selected:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->name:Ljava/lang/String;

    return-object v0
.end method

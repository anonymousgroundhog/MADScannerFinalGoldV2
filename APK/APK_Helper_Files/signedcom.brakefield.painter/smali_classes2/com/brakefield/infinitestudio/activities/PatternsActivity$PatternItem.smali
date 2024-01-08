.class public Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;
.super Lcom/brakefield/infinitestudio/image/ImageBean;
.source "PatternsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/PatternsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatternItem"
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field public deleted:Z

.field public id:Ljava/lang/String;

.field public loves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public owned:Z

.field public reported:Z

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/PatternsActivity;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/ImageBean;-><init>()V

    const/4 p1, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->reported:Z

    .line 341
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->deleted:Z

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->loves:Ljava/util/List;

    return-void
.end method

.method private getUserLove(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->loves:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addLove(Ljava/lang/String;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->loves:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public delete()V
    .locals 1

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->deleted:Z

    return-void
.end method

.method public getNumberOfLoves()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->loves:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public report()V
    .locals 1

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->reported:Z

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->artist:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->id:Ljava/lang/String;

    return-void
.end method

.method public toggleLove(Ljava/lang/String;)Z
    .locals 1

    .line 366
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->getUserLove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->loves:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->loves:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public userLovesImage(Ljava/lang/String;)Z
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->getUserLove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

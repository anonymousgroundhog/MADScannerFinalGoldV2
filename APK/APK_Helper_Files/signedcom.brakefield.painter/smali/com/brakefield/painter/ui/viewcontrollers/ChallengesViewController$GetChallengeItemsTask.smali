.class Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;
.super Landroid/os/AsyncTask;
.source "ChallengesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetChallengeItemsTask"
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
.field challenges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
            ">;"
        }
    .end annotation
.end field

.field collectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 204
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->collectionRef:Ljava/lang/ref/WeakReference;

    .line 205
    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->challenges:Ljava/util/List;

    return-void
.end method

.method private loadChallengeItems(J)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 283
    iget-object v3, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->challenges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_8

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-static/range {p1 .. p2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengeItemsCount(J)I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 293
    invoke-static {v1, v2, v6}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengeItem(JI)J

    move-result-wide v7

    .line 295
    invoke-static {v7, v8}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengeItemId(J)Ljava/lang/String;

    move-result-object v10

    .line 296
    invoke-static {v7, v8}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengeItemType(J)Ljava/lang/String;

    move-result-object v9

    .line 298
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-static {v7, v8}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengeItemSubChallengesCount(J)I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    .line 301
    invoke-static {v7, v8, v12}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengeItemSubChallengeId(JI)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v12, 0x0

    const-wide/16 v7, 0x0

    .line 313
    invoke-static {v9}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$500(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    .line 316
    new-instance v15, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    move-object v9, v15

    move-object/from16 v16, v14

    move-object v5, v15

    move-wide v14, v7

    invoke-direct/range {v9 .. v16}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;-><init>(Ljava/lang/String;IJJLjava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 320
    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->deleteChallengeItems(J)V

    .line 322
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    .line 323
    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$700(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 324
    iget-object v4, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->challenges:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 328
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    .line 329
    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 330
    iget-object v4, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->challenges:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 334
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    .line 335
    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$700(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 336
    iget-object v3, v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->challenges:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 198
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 216
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "challenges.json"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 223
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengeItemsFromResponse(Ljava/lang/String;)J

    move-result-wide v1

    .line 228
    invoke-direct {p0, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->loadChallengeItems(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 239
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 218
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 244
    :cond_2
    :goto_2
    invoke-static {}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengesURL()Ljava/lang/String;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;->POST:Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/brakefield/infinitestudio/utils/HttpUtil;->sendRequestToHTTP(Ljava/lang/String;Lcom/brakefield/infinitestudio/utils/HttpUtil$RequestMethod;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return-object v1

    .line 251
    :cond_3
    invoke-static {v0}, Lcom/brakefield/infinitestudio/apis/infinitestudio/InfiniteStudioAPI;->getChallengeItemsFromResponse(Ljava/lang/String;)J

    move-result-wide v2

    .line 252
    invoke-direct {p0, v2, v3}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->loadChallengeItems(J)V

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 256
    :try_start_5
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCachePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/FileManager;->createDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 259
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    :cond_4
    :goto_3
    :try_start_6
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .line 264
    :try_start_7
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 265
    :try_start_8
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 263
    :try_start_9
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 198
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 274
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 275
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$GetChallengeItemsTask;->collectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 210
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

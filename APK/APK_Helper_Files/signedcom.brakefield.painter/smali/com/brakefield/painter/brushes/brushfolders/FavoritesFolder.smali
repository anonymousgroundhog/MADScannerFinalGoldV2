.class public Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;
.super Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
.source "FavoritesFolder.java"


# instance fields
.field public final JSON_BLEND_BRUSHES:Ljava/lang/String;

.field public final JSON_ERASE_BRUSHES:Ljava/lang/String;

.field public final JSON_PAINT_BRUSHES:Ljava/lang/String;

.field public blendBrushList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
            ">;"
        }
    .end annotation
.end field

.field public eraserBrushList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
            ">;"
        }
    .end annotation
.end field

.field public paintBrushList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->paintBrushList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->eraserBrushList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->blendBrushList:Ljava/util/List;

    const-string v0, "paint-brushes"

    .line 94
    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->JSON_PAINT_BRUSHES:Ljava/lang/String;

    const-string v0, "erase-brushes"

    .line 95
    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->JSON_ERASE_BRUSHES:Ljava/lang/String;

    const-string v0, "blend-brushes"

    .line 96
    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->JSON_BLEND_BRUSHES:Ljava/lang/String;

    return-void
.end method

.method private getBlendBrushesJSON()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->blendBrushList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getBrushList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isErasing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->eraserBrushList:Ljava/util/List;

    return-object v0

    .line 90
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBlending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->blendBrushList:Ljava/util/List;

    return-object v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->paintBrushList:Ljava/util/List;

    return-object v0
.end method

.method private getEraseBrushesJSON()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->eraserBrushList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getPaintBrushesJSON()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->paintBrushList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getBrushList()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->indexOf(Lcom/brakefield/painter/brushes/brushfolders/Brush;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x0

    .line 50
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getBrushList()Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public deleteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->remove(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    .line 39
    invoke-super {p0, p1}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->deleteBrush(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    return-void
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public has(Lcom/brakefield/painter/brushes/brushfolders/Brush;)Z
    .locals 1

    .line 59
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->indexOf(Lcom/brakefield/painter/brushes/brushfolders/Brush;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public indexOf(Lcom/brakefield/painter/brushes/brushfolders/Brush;)I
    .locals 5

    .line 69
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getBrushList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 72
    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public init()V
    .locals 1

    const v0, 0x7f120185

    .line 27
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->name:Ljava/lang/String;

    const v0, 0x7f0801ab

    .line 28
    iput v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->iconId:I

    .line 29
    invoke-super {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->init()V

    .line 30
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->load()V

    return-void
.end method

.method public load()V
    .locals 13

    const-string v0, "name"

    const-string v1, "paint-brushes"

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->paintBrushList:Ljava/util/List;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->eraserBrushList:Ljava/util/List;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->blendBrushList:Ljava/util/List;

    .line 135
    iget-object v2, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->brushes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getFolderLocation()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 139
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 142
    :cond_0
    new-instance v5, Lorg/json/JSONTokener;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 145
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v5, v6

    .line 146
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 147
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 148
    new-instance v8, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-direct {v8, p0, v7}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Lorg/json/JSONObject;)V

    .line 149
    iget-object v7, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->paintBrushList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "blend-brushes"

    .line 151
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v5, v6

    .line 153
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 154
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 155
    new-instance v8, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-direct {v8, p0, v7}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Lorg/json/JSONObject;)V

    .line 156
    iget-object v7, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->blendBrushList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const-string v1, "erase-brushes"

    .line 159
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v5, v6

    .line 161
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 162
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 163
    new-instance v8, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-direct {v8, p0, v7}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Lorg/json/JSONObject;)V

    .line 164
    iget-object v7, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->eraserBrushList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    const-string v1, "brushes"

    .line 169
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v5, v6

    .line 171
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 172
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 173
    new-instance v8, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    invoke-direct {v8, p0, v7}, Lcom/brakefield/painter/brushes/brushfolders/Brush;-><init>(Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Lorg/json/JSONObject;)V

    .line 174
    invoke-virtual {p0, v8}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->add(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const-string/jumbo v1, "selected"

    .line 178
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->selected:I

    .line 180
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->displayName:Ljava/lang/String;

    .line 182
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->defaultBrushes:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    iget-object v5, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->brushes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 188
    iget-object v8, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->defaultBrushes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 189
    invoke-virtual {v9}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    goto :goto_6

    .line 191
    :cond_7
    invoke-virtual {v7}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    goto :goto_7

    .line 193
    :cond_8
    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_6

    .line 195
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v8, v10

    goto :goto_8

    :cond_9
    :goto_7
    move v8, v6

    .line 199
    :goto_8
    iget-object v9, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->customBrushes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/brakefield/painter/brushes/brushfolders/Brush;

    .line 200
    invoke-virtual {v11}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_b

    goto :goto_9

    .line 202
    :cond_b
    invoke-virtual {v7}, Lcom/brakefield/painter/brushes/brushfolders/Brush;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_c

    goto :goto_a

    .line 204
    :cond_c
    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    goto :goto_b

    :cond_d
    :goto_a
    move v10, v8

    :goto_b
    if-eqz v10, :cond_e

    .line 209
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 210
    :cond_e
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 213
    :cond_f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v4, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->defaultBrushes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->brushes:Ljava/util/List;

    goto :goto_c

    :cond_10
    iget-object v4, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->defaultBrushes:Ljava/util/List;

    .line 216
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 217
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_12

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 137
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v2, :cond_11

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_e
    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :cond_12
    :goto_f
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getBrushList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->brushes:Ljava/util/List;

    return-void
.end method

.method public remove(Lcom/brakefield/painter/brushes/brushfolders/Brush;)V
    .locals 1

    .line 81
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->indexOf(Lcom/brakefield/painter/brushes/brushfolders/Brush;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getBrushList()Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "paint-brushes"

    .line 102
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getPaintBrushesJSON()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "erase-brushes"

    .line 103
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getEraseBrushesJSON()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "blend-brushes"

    .line 104
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->getBlendBrushesJSON()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "selected"

    .line 105
    iget v2, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->selected:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 106
    iget-object v2, p0, Lcom/brakefield/painter/brushes/brushfolders/FavoritesFolder;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.class public Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;
.super Ljava/lang/Object;
.source "GoogleFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private final family:Ljava/lang/String;

.field private lastModified:Ljava/lang/String;

.field private final subsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->variants:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->subsets:Ljava/util/List;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->version:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->lastModified:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->category:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->family:Ljava/lang/String;

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;
    .locals 8

    const-string v0, "family"

    .line 82
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    new-instance v1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    .line 85
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->version:Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/infinitestudio/sketchbook/guides/DR/isVGwxqXMxDjgS;->QUKsasEPt:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->lastModified:Ljava/lang/String;

    const-string v0, "category"

    .line 87
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->category:Ljava/lang/String;

    const-string/jumbo v0, "variants"

    .line 88
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "files"

    .line 89
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v4, v3

    .line 91
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 92
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;

    invoke-direct {v7, v5, v6}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->addVariant(Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "subsets"

    .line 97
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 99
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 100
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->addSubset(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public addSubset(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->subsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVariant(Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->variants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public populateSubsetDistribution(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->subsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    .line 49
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public populateVariantDistribution(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;

    .line 38
    iget-object v1, v1, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;->name:Ljava/lang/String;

    .line 40
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    .line 41
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public print()V
    .locals 6

    const-string v0, "FONT:"

    .line 78
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->family:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->version:Ljava/lang/String;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->lastModified:Ljava/lang/String;

    iget-object v4, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->variants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->subsets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    return-void
.end method

.method public toFontFamily()Lcom/brakefield/infinitestudio/FontFamily;
    .locals 4

    .line 54
    new-instance v0, Lcom/brakefield/infinitestudio/FontFamily;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->family:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/FontFamily;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;

    iget-object v3, v2, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;->name:Ljava/lang/String;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/apis/google/fonts/GoogleFont$Variant;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/brakefield/infinitestudio/FontFamily;->addFont(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

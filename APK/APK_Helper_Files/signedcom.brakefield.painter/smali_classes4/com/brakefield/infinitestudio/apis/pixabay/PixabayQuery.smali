.class public Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;
.super Ljava/lang/Object;
.source "PixabayQuery.java"


# instance fields
.field category:Ljava/lang/String;

.field categoryPosition:I

.field editorsChoice:Z

.field order:Ljava/lang/String;

.field orderPosition:I

.field orientation:Ljava/lang/String;

.field orientationPosition:I

.field public safeSearch:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

.field type:Ljava/lang/String;

.field typePosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "all"

    .line 5
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->type:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orientation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    const-string v0, "popular"

    .line 8
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->order:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->typePosition:I

    .line 11
    iput v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orientationPosition:I

    .line 12
    iput v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->categoryPosition:I

    .line 13
    iput v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orderPosition:I

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->editorsChoice:Z

    .line 16
    new-instance v0, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->safeSearch:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    return-void
.end method


# virtual methods
.method getQuery(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://pixabay.com/api/?key=6062495-9375d86aca115188b0b64f524&q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&page="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&per_page="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&image_type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&orientation="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orientation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&editors_choice="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->editorsChoice:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&safesearch="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->safeSearch:Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;

    .line 88
    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/apis/pixabay/SafeSearch;->shouldFilterContent()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&order="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->order:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&response_group=high_resolution"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "&category="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public setCategory(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "music"

    .line 59
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "business"

    .line 58
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "buildings"

    .line 57
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "travel"

    .line 56
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "transportation"

    .line 55
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "sports"

    .line 54
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string v0, "computer"

    .line 53
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string v0, "food"

    .line 52
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const-string v0, "industry"

    .line 51
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-string v0, "animals"

    .line 50
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    const-string v0, "places"

    .line 49
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    const-string v0, "health"

    .line 48
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    const-string v0, "religion"

    .line 47
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    const-string v0, "feelings"

    .line 46
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    const-string v0, "people"

    .line 45
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    const-string v0, "education"

    .line 44
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    const-string/jumbo v0, "science"

    .line 43
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    const-string v0, "backgrounds"

    .line 42
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    const-string v0, "nature"

    .line 41
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    const-string v0, "fashion"

    .line 40
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    goto :goto_0

    :pswitch_14
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->category:Ljava/lang/String;

    .line 61
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->categoryPosition:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public setEditorsChoice(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->editorsChoice:Z

    return-void
.end method

.method public setOrder(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "newest"

    .line 67
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->order:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "popular"

    .line 66
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->order:Ljava/lang/String;

    .line 69
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orderPosition:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "vertical"

    .line 32
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orientation:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "horizontal"

    .line 31
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orientation:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "all"

    .line 30
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orientation:Ljava/lang/String;

    .line 34
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->orientationPosition:I

    return-void
.end method

.method public setType(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "vector"

    .line 23
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->type:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "illustration"

    .line 22
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->type:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "photo"

    .line 21
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->type:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "all"

    .line 20
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->type:Ljava/lang/String;

    .line 25
    :goto_0
    iput p1, p0, Lcom/brakefield/infinitestudio/apis/pixabay/PixabayQuery;->typePosition:I

    return-void
.end method

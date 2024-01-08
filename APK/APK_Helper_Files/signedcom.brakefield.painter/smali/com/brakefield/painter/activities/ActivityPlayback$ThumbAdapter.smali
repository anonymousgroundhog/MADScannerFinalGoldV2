.class Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ActivityPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityPlayback;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/activities/ActivityPlayback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;",
            ">;)V"
        }
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 226
    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->segments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-brakefield-painter-activities-ActivityPlayback$ThumbAdapter(ILandroid/view/View;)V
    .locals 1

    .line 253
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget p2, p2, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    .line 254
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iput p1, v0, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    .line 256
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    if-eq p1, p2, :cond_3

    .line 258
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    .line 260
    iget-boolean v0, v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->ignore:Z

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iput p1, v0, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 269
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->segments:Ljava/util/List;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget v0, v0, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 272
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->adapter:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->notifyItemChanged(I)V

    .line 273
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->adapter:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget p2, p2, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->notifyItemChanged(I)V

    :cond_3
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-brakefield-painter-activities-ActivityPlayback$ThumbAdapter(Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;ILandroid/view/View;)Z
    .locals 1

    .line 278
    iget-boolean p3, p1, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->ignore:Z

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    iput-boolean p3, p1, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->ignore:Z

    .line 279
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->adapter:Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->notifyItemChanged(I)V

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 221
    check-cast p1, Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->onBindViewHolder(Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;I)V
    .locals 5

    .line 238
    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;->getView()Landroid/view/View;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->segments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;

    const v1, 0x7f0a0540

    .line 242
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a049c

    .line 243
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a049b

    .line 244
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a049d

    .line 245
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 247
    iget-object v4, v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 252
    new-instance v4, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    new-instance v4, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, p2}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    iget-boolean p1, v0, Lcom/brakefield/painter/PlaybackManager$PlaybackSegment;->ignore:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 284
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3e800000    # 0.25f

    .line 285
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 287
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 288
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 291
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    iget p1, p1, Lcom/brakefield/painter/activities/ActivityPlayback;->currentSegment:I

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    const p1, -0xbbbbbc

    .line 292
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;
    .locals 2

    .line 231
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-virtual {p2}, Lcom/brakefield/painter/activities/ActivityPlayback;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0146

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 232
    new-instance p2, Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityPlayback$ThumbAdapter;->this$0:Lcom/brakefield/painter/activities/ActivityPlayback;

    invoke-direct {p2, v0, p1}, Lcom/brakefield/painter/activities/ActivityPlayback$ViewHolder;-><init>(Lcom/brakefield/painter/activities/ActivityPlayback;Landroid/view/View;)V

    return-object p2
.end method

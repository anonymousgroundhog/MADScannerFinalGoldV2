.class public Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ProjectHistoryViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProjectVersionAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 132
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->onBindViewHolder(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;I)V
    .locals 6

    .line 141
    iget-object v0, p1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a045c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    iget-object v1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a03c9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 145
    iget-object p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0569

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object v2

    if-ne p2, v2, :cond_0

    const p2, 0x7f1200ed

    .line 151
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x4

    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/brakefield/painter/PainterLib;->getProjectPreviewThumb(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 155
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_0

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$400(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_1

    .line 159
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getProjectLastSaveDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatDate(J)Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getProjectLastSaveFileSize(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getProjectLastSavePreviewThumb(Ljava/lang/String;)[B

    move-result-object p1

    .line 167
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 171
    :cond_1
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getProjectVersionDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$600(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/brakefield/painter/PainterLib;->getProjectVersionFileSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/brakefield/infinitestudio/utils/TextFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;->access$500(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/brakefield/painter/PainterLib;->getProjectVersionPreviewThumb(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 179
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {p2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;
    .locals 3

    .line 136
    new-instance p2, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d010f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter$ViewHolder;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ProjectHistoryViewController$ProjectVersionAdapter;Landroid/view/View;)V

    return-object p2
.end method

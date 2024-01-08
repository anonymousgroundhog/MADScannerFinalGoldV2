.class Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "ActivityBrushes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrushViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 187
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->setItemClickListener()V

    .line 188
    invoke-static {p1}, Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;

    return-void
.end method


# virtual methods
.method public update(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;)V
    .locals 4

    .line 194
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result v0

    .line 195
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getDownloadBrushesPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->getFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;->brushCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 200
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;->brushPreview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 202
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;->brushPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 204
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->isDark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;->brushPreview:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;->brushPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->binding:Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/BrushDownloadCardBinding;->brushName:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p1, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushViewHolder;->update(Lcom/brakefield/painter/activities/ActivityBrushes$BrushesFragment$BrushBean;)V

    return-void
.end method

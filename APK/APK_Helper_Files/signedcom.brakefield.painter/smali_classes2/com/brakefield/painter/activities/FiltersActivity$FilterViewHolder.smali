.class Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;
.source "FiltersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/activities/FiltersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field binding:Lcom/brakefield/painter/databinding/FilterCardBinding;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemViewHolder;-><init>(Landroid/view/View;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    .line 173
    invoke-static {p1}, Lcom/brakefield/painter/databinding/FilterCardBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/FilterCardBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;->binding:Lcom/brakefield/painter/databinding/FilterCardBinding;

    .line 174
    iget-object p1, p1, Lcom/brakefield/painter/databinding/FilterCardBinding;->preview:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;->setItemClickListener(Landroid/view/View;)V

    .line 175
    iget-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;->binding:Lcom/brakefield/painter/databinding/FilterCardBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/FilterCardBinding;->preview:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public animateCompare(Z)V
    .locals 4

    .line 194
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;->binding:Lcom/brakefield/painter/databinding/FilterCardBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/FilterCardBinding;->originalPreview:Landroid/widget/ImageView;

    const/4 v2, 0x1

    new-array v2, v2, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x0

    aput p1, v2, v3

    const-string p1, "alpha"

    invoke-static {v1, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/16 v1, 0x320

    int-to-long v1, v1

    .line 196
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 197
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 199
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 200
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public update(Ljava/lang/Integer;)V
    .locals 3

    .line 181
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getFilterPreviewName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    const/4 v2, 0x0

    sget-object v2, Landroidx/constraintlayout/core/motion/afa/DQweKUOWMgsiFw;->PHGgS:Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;->binding:Lcom/brakefield/painter/databinding/FilterCardBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/FilterCardBinding;->preview:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v0, p0, Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;->binding:Lcom/brakefield/painter/databinding/FilterCardBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/FilterCardBinding;->name:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getFilterName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ResourceHelper;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getFilterUIBindingKey(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0a0663

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/activities/FiltersActivity$FilterViewHolder;->update(Ljava/lang/Integer;)V

    return-void
.end method

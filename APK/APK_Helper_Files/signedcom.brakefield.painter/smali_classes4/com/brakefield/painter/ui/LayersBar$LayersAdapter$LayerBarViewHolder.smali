.class abstract Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LayerBarViewHolder"
.end annotation


# instance fields
.field protected final delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

.field final synthetic this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    .line 914
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 915
    iput-object p3, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    return-void
.end method


# virtual methods
.method public getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    return-object v0
.end method

.method public abstract update(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
.end method

.method protected updateMask(Lcom/brakefield/painter/ui/LayersBar$LayerRef;Lcom/brakefield/painter/databinding/ThumbMaskBinding;)V
    .locals 3

    .line 939
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    iget-object v1, v1, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$1200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(I)V

    goto :goto_0

    .line 942
    :cond_0
    iget-object v0, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(I)V

    .line 944
    :goto_0
    iget-object v0, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->link:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 946
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    .line 947
    iget-object v1, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(FFFF)V

    .line 949
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 950
    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 951
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 952
    iget-object v0, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 953
    iget-object v0, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundColor(I)V

    .line 954
    iget-object v0, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$900(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 956
    iget-object v0, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1300(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v1

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1400(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->updateVisibilityIcon(Landroid/widget/ImageView;ZZ)V

    .line 958
    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_1

    .line 960
    :cond_1
    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected updateVisibilityIcon(Landroid/widget/ImageView;ZZ)V
    .locals 1

    .line 921
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-eqz p2, :cond_0

    const p2, 0x7f0804d7

    .line 923
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f1201f8

    .line 924
    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0804d6

    .line 926
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p2, 0x7f120a96

    .line 927
    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p3, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 929
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    const p2, 0x3ecccccd    # 0.4f

    .line 930
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    return-void
.end method

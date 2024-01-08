.class Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;
.super Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayerViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

.field final synthetic this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V
    .locals 2

    .line 968
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    .line 969
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    .line 970
    invoke-static {p2}, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    .line 972
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 973
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    iget-object v1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->thumbnail:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 974
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 975
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 976
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v1, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 979
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 980
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityDot:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 984
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 985
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 986
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 989
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 990
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 976
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 977
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$10$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 990
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$2$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 978
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$3$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 979
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$4$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 980
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$5$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 981
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$6$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 986
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$7$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 987
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$8$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 988
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$9$com-brakefield-painter-ui-LayersBar$LayersAdapter$LayerViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 989
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public update(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 10

    .line 995
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 997
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 999
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1500(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(I)V

    goto :goto_1

    .line 999
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v2, 0x7f060074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(I)V

    .line 1002
    :goto_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1003
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1006
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getRotationInDegrees()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    .line 1007
    invoke-static {v0, v1, v2, v1}, Lcom/brakefield/infinitestudio/geometry/Line;->snapAngle(FFIF)F

    move-result v3

    add-float/2addr v0, v3

    .line 1009
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 1010
    invoke-static {}, Lcom/brakefield/infinitestudio/sketchbook/Camera;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    neg-float v4, v0

    .line 1011
    sget v5, Lcom/brakefield/infinitestudio/sketchbook/Camera;->w:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v7, Lcom/brakefield/infinitestudio/sketchbook/Camera;->h:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v3, v4, v5, v7}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 1014
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x0

    aget v5, v4, v3

    const/4 v7, 0x0

    cmpg-float v5, v5, v7

    const/high16 v8, -0x40800000    # -1.0f

    if-gez v5, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    aget v4, v4, v2

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    move v4, v8

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    cmpl-float v9, v5, v8

    if-nez v9, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v8, v4

    :goto_4
    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v0, v4

    .line 1026
    iget-object v4, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v4, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setRotation(F)V

    .line 1027
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v5}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleX(F)V

    .line 1028
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v8}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleY(F)V

    .line 1031
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_5

    .line 1032
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->target:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1033
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 1034
    :cond_5
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1036
    :goto_5
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->clippingMaskHint:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1037
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->clippingMaskHint:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 1038
    :cond_6
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->clippingMaskHint:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1040
    :goto_6
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1800(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 1042
    iget-object v4, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v4, v4, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->blendModeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getBlendModeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->blendModeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    goto :goto_7

    .line 1044
    :cond_7
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->blendModeText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1046
    :goto_7
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1900(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1047
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    goto :goto_8

    .line 1049
    :cond_8
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 1050
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v3}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    goto :goto_8

    .line 1052
    :cond_9
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->layerOpacityText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1054
    :goto_8
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    invoke-static {v6}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    .line 1057
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v1, v0, v7, v0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(FFFF)V

    goto :goto_9

    .line 1058
    :cond_a
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v1, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(F)V

    .line 1060
    :goto_9
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->updateVisibilityIcons(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    .line 1061
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->updateMask(Lcom/brakefield/painter/ui/LayersBar$LayerRef;Lcom/brakefield/painter/databinding/ThumbMaskBinding;)V

    .line 1062
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2200(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->updateExpanded(Z)V

    return-void
.end method

.method public updateExpanded(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1074
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1075
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1076
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1077
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1078
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1080
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1081
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1082
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1083
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1084
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateVisibilityIcons(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 2

    .line 1066
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1900(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    .line 1067
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1400(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    .line 1068
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->updateVisibilityIcon(Landroid/widget/ImageView;ZZ)V

    .line 1069
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerViewHolder;->updateVisibilityIcon(Landroid/widget/ImageView;ZZ)V

    return-void
.end method

.class Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;
.super Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustmentViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

.field final synthetic this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V
    .locals 2

    .line 1166
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    .line 1167
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    .line 1168
    invoke-static {p2}, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    .line 1170
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1171
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    iget-object v1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->thumbnail:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;Landroid/view/View;)V

    .line 1172
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1173
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1174
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v1, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 1177
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 1178
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityDot:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1182
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1183
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1184
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 1187
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 1188
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1174
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onAdjustmentClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1175
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onAdjustmentClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$10$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1188
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$2$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 1176
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onAdjustmentContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$3$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 1177
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onAdjustmentContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$4$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1178
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$5$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1179
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$6$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1184
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$7$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1185
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$8$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 1186
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$9$com-brakefield-painter-ui-LayersBar$LayersAdapter$AdjustmentViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 1187
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public update(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 3

    .line 1193
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1195
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1197
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1500(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v2, 0x7f060074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(I)V

    .line 1199
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(I)V

    .line 1202
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->icon:Landroid/widget/ImageView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1205
    :goto_0
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getAdjustmentLayerIcon(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 1207
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1209
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->clippingMaskHint:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1210
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->clippingMaskHint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->clippingMaskHint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1213
    :goto_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->layerAdjustmentText:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->updateVisibilityIcons(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    .line 1217
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->updateMask(Lcom/brakefield/painter/ui/LayersBar$LayerRef;Lcom/brakefield/painter/databinding/ThumbMaskBinding;)V

    .line 1218
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2200(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->updateExpanded(Z)V

    return-void
.end method

.method public updateExpanded(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1230
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1231
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1232
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1233
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1234
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1236
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1237
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1238
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1239
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1240
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateVisibilityIcons(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 2

    .line 1222
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1900(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    .line 1223
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1400(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    .line 1224
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->updateVisibilityIcon(Landroid/widget/ImageView;ZZ)V

    .line 1225
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerAdjustmentBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$AdjustmentViewHolder;->updateVisibilityIcon(Landroid/widget/ImageView;ZZ)V

    return-void
.end method

.class Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;
.super Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

.field final synthetic this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V
    .locals 1

    .line 1093
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->this$1:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    .line 1094
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;Landroid/view/View;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    .line 1095
    invoke-static {p2}, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    .line 1097
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1098
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->icon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1099
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1100
    iget-object v0, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1101
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 1103
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->icon:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityDot:Landroid/widget/ImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1108
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1109
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 1110
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1112
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p2}, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 1113
    iget-object p2, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->preview:Lcom/makeramen/roundedimageview/RoundedImageView;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 1114
    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p3}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1101
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onGroupOptionsClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$1$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 1102
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onGroupContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$2$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1103
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onGroupClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$3$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1104
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$4$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1105
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onLayerVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$5$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1110
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$6$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1111
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$new$7$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 1112
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$8$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)Z
    .locals 0

    .line 1113
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$new$9$com-brakefield-painter-ui-LayersBar$LayersAdapter$GroupViewHolder(Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;Landroid/view/View;)V
    .locals 0

    .line 1114
    invoke-interface {p1, p0, p2}, Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;->onMaskVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public update(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1121
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2300(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0801e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1124
    :goto_0
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1500(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1127
    :goto_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->clippingMaskHint:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1128
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->clippingMaskHint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1129
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->clippingMaskHint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1131
    :goto_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->updateVisibilityIcons(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    .line 1134
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->updateMask(Lcom/brakefield/painter/ui/LayersBar$LayerRef;Lcom/brakefield/painter/databinding/ThumbMaskBinding;)V

    .line 1135
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2200(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->updateExpanded(Z)V

    return-void
.end method

.method public updateExpanded(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1147
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1148
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1149
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1150
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1151
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1153
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1154
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1155
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1156
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->nameLabel:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setVisibility(I)V

    .line 1157
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->maskRow:Lcom/brakefield/painter/databinding/ThumbMaskBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/ThumbMaskBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateVisibilityIcons(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 2

    .line 1139
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1900(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    .line 1140
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$1400(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    .line 1141
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->updateVisibilityIcon(Landroid/widget/ImageView;ZZ)V

    .line 1142
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->binding:Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;

    iget-object v1, v1, Lcom/brakefield/painter/databinding/ThumbLayerGroupBinding;->visibilityDot:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$GroupViewHolder;->updateVisibilityIcon(Landroid/widget/ImageView;ZZ)V

    return-void
.end method

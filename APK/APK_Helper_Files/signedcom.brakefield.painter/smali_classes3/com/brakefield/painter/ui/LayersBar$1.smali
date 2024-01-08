.class Lcom/brakefield/painter/ui/LayersBar$1;
.super Ljava/lang/Object;
.source "LayersBar.java"

# interfaces
.implements Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/LayersBar;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/LayersBar;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private popupViewAt(Landroid/view/View;Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 131
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 132
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v2

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v1, 0x1

    aget v7, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V

    return-void
.end method

.method private showAdjustmentLayerOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 3

    .line 206
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    .line 207
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;-><init>()V

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v2

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p1

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->popupViewAt(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private showGroupOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 3

    .line 177
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    .line 178
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;-><init>()V

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v2

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerGroupOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p1

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->popupViewAt(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private showLayerOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 3

    .line 136
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;-><init>()V

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v2

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p1

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->popupViewAt(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private showMaskOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 3

    .line 251
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    .line 252
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;-><init>()V

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v2

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object p1

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->popupViewAt(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAdjustmentClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 2

    .line 184
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p2, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 189
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->showAdjustmentLayerOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->selectLayer(I)V

    .line 193
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 194
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    :goto_0
    return-void
.end method

.method public onAdjustmentContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->showAdjustmentLayerOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onGroupClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    .line 144
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 148
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->selectLayer(I)V

    .line 149
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 150
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    return-void
.end method

.method public onGroupContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->showGroupOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onGroupOptionsClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 4

    .line 155
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v1

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p2, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 160
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 161
    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {v1, p1}, Lcom/brakefield/painter/PainterLib;->multiSelectLayer(IZ)V

    .line 162
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 163
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->showGroupOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onLayerClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 4

    .line 102
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p2, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 107
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 108
    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {v1, p1}, Lcom/brakefield/painter/PainterLib;->multiSelectLayer(IZ)V

    .line 109
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 110
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->showLayerOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->selectLayer(I)V

    .line 116
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 117
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    :goto_0
    return-void
.end method

.method public onLayerContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->showLayerOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLayerVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 1

    .line 213
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 218
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 219
    invoke-static {p1, p2}, Lcom/brakefield/painter/PainterLib;->setLayerVisibility(IZ)V

    .line 220
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 221
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    return-void
.end method

.method public onMaskClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 12

    .line 226
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    .line 227
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getLayerMaskId(I)I

    move-result p1

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 231
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 232
    new-instance v1, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;

    invoke-direct {v1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;-><init>()V

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v3}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/LayerMaskOptionsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;I)Landroid/view/View;

    move-result-object v6

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 234
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 235
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v4

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object v5

    const/4 v7, 0x0

    aget v8, p1, v0

    const/4 v0, 0x1

    aget v9, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual/range {v4 .. v11}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;IIII)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->selectLayer(I)V

    .line 238
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 239
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    :goto_0
    return-void
.end method

.method public onMaskContextClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar$1;->showMaskOptions(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMaskVisibilityClicked(Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;Landroid/view/View;)V
    .locals 1

    .line 258
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter$LayerBarViewHolder;->getLayerRef()Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    .line 259
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getLayerMaskId(I)I

    move-result p1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 263
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 264
    invoke-static {p1, p2}, Lcom/brakefield/painter/PainterLib;->setLayerVisibility(IZ)V

    .line 265
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar;->access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar;->access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 266
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$1;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    return-void
.end method

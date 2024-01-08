.class Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/DragSortGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/DragSortGridView;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7

    .line 130
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    .line 131
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 132
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_b

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto/16 :goto_2

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->pointToPosition(II)I

    move-result p1

    if-ne p1, v4, :cond_1

    move p1, v4

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->reorderingPositions:Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->getValueIndex(I)I

    move-result p1

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget v1, v0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->lastDraggingPosition:I

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->access$100(Lcom/brakefield/infinitestudio/ui/DragSortGridView;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 191
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->onReorderingListener:Lcom/brakefield/infinitestudio/ui/DragSortGridView$OnReorderingListener;

    if-eqz v0, :cond_d

    .line 192
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, v4, :cond_d

    if-eq p1, p2, :cond_d

    .line 193
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->onReorderingListener:Lcom/brakefield/infinitestudio/ui/DragSortGridView$OnReorderingListener;

    invoke-interface {v0, p2, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$OnReorderingListener;->onReordering(II)V

    goto/16 :goto_2

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget-boolean p1, p1, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->movingChildViews:Z

    if-eqz p1, :cond_3

    goto/16 :goto_2

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->pointToPosition(II)I

    move-result p1

    if-ne p1, v4, :cond_4

    move p1, v4

    goto :goto_1

    .line 155
    :cond_4
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->reorderingPositions:Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->getValueIndex(I)I

    move-result p1

    .line 157
    :goto_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 160
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getScrollY()I

    move-result v0

    neg-int v0, v0

    .line 161
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getBottom()I

    move-result v3

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    const/16 v5, -0xa

    if-ge v0, v5, :cond_5

    move v0, v5

    :cond_5
    const/16 v5, 0xa

    if-le v3, v5, :cond_6

    move v3, v5

    .line 166
    :cond_6
    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/lit16 v5, v5, 0xc8

    const/4 v6, 0x0

    if-ge v1, v5, :cond_8

    if-lez v0, :cond_7

    move v0, v6

    .line 168
    :cond_7
    iget-object v5, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {v5, v0, v6}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->smoothScrollBy(II)V

    .line 171
    :cond_8
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    add-int/lit16 v0, v0, -0xc8

    if-le v1, v0, :cond_a

    if-gez v3, :cond_9

    move v3, v6

    .line 173
    :cond_9
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {p2, v3, v6}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->smoothScrollBy(II)V

    :cond_a
    if-eq v4, p1, :cond_d

    .line 176
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget p2, p2, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->lastDraggingPosition:I

    if-eq p2, p1, :cond_d

    .line 177
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget v0, p2, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->lastDraggingPosition:I

    invoke-virtual {p2, v0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->reorderViews(II)V

    .line 178
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget-object p2, p2, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->reorderingPositions:Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->lastDraggingPosition:I

    invoke-virtual {p2, v0, p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;->reorder(II)V

    .line 179
    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iput p1, p2, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->lastDraggingPosition:I

    .line 180
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iput-boolean v2, p1, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->movingChildViews:Z

    goto :goto_2

    .line 138
    :cond_b
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    new-instance v0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;-><init>(Lcom/brakefield/infinitestudio/ui/DragSortGridView;I)V

    iput-object v0, p1, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->reorderingPositions:Lcom/brakefield/infinitestudio/ui/DragSortGridView$IntegerArray;

    .line 140
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->lastDraggingPosition:I

    .line 142
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->access$000(Lcom/brakefield/infinitestudio/ui/DragSortGridView;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_c

    .line 143
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/brakefield/infinitestudio/R$anim;->fade_out:I

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->access$002(Lcom/brakefield/infinitestudio/ui/DragSortGridView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 145
    :cond_c
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    iget p2, p1, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->lastDraggingPosition:I

    invoke-static {p1, p2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->access$100(Lcom/brakefield/infinitestudio/ui/DragSortGridView;I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/infinitestudio/ui/DragSortGridView$2;->this$0:Lcom/brakefield/infinitestudio/ui/DragSortGridView;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/ui/DragSortGridView;->access$000(Lcom/brakefield/infinitestudio/ui/DragSortGridView;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_d
    :goto_2
    return v2
.end method

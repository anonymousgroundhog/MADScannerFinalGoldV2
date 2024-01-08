.class Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;
.super Ljava/lang/Object;
.source "CustomToolbar.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/CustomToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelDragListener"
.end annotation


# instance fields
.field private dropIndex:I

.field private dropView:Landroid/view/View;

.field final synthetic this$0:Lcom/brakefield/painter/ui/CustomToolbar;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/ui/CustomToolbar;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropView:Landroid/view/View;

    const/4 p1, -0x1

    .line 107
    iput p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/ui/CustomToolbar;Lcom/brakefield/painter/ui/CustomToolbar$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;-><init>(Lcom/brakefield/painter/ui/CustomToolbar;)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropView:Landroid/view/View;

    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropIndex:I

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7

    .line 112
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    .line 114
    instance-of v0, p1, Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 116
    :cond_0
    check-cast p1, Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    .line 118
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 p2, 0x4

    if-eq v0, p2, :cond_3

    const/4 p2, 0x5

    if-eq v0, p2, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/CustomToolbar;->access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 121
    :cond_2
    iget-object p2, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/CustomToolbar;->access$100(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/CustomToolbar;->access$200(Lcom/brakefield/painter/ui/CustomToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropView:Landroid/view/View;

    .line 122
    iget-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/CustomToolbar;->access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropView:Landroid/view/View;

    invoke-virtual {p1, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 148
    :cond_3
    invoke-direct {p0}, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->reset()V

    .line 149
    iget-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/CustomToolbar;->save()V

    .line 150
    iget-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/CustomToolbar;->show()V

    goto/16 :goto_2

    .line 125
    :cond_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    .line 126
    iget-object p2, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/CustomToolbar;->access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_b

    .line 128
    iget-object v0, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/CustomToolbar;->access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 129
    iput v1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropIndex:I

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_6

    .line 131
    iget-object v4, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {v4}, Lcom/brakefield/painter/ui/CustomToolbar;->access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v5, v4

    iget-object v4, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {v4}, Lcom/brakefield/painter/ui/CustomToolbar;->access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    cmpl-float v4, p1, v5

    if-ltz v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropIndex:I

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_6
    iget p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropIndex:I

    if-eq p2, p1, :cond_b

    .line 135
    iget-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/CustomToolbar;->access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v3, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 136
    iget p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropIndex:I

    if-le p1, p2, :cond_7

    add-int/lit8 p1, p1, -0x1

    :cond_7
    sub-int/2addr v0, v2

    if-le p1, v0, :cond_8

    move v1, v0

    goto :goto_1

    :cond_8
    if-gez p1, :cond_9

    goto :goto_1

    :cond_9
    move v1, p1

    .line 140
    :goto_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->this$0:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/CustomToolbar;->access$300(Lcom/brakefield/painter/ui/CustomToolbar;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->dropView:Landroid/view/View;

    invoke-virtual {p1, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 119
    :cond_a
    invoke-direct {p0}, Lcom/brakefield/painter/ui/CustomToolbar$PanelDragListener;->reset()V

    :cond_b
    :goto_2
    return v2
.end method

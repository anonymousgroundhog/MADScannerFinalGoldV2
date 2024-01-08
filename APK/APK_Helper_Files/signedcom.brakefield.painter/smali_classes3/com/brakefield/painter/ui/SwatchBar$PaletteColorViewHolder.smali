.class public Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SwatchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/SwatchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PaletteColorViewHolder"
.end annotation


# instance fields
.field private color:I

.field private colorView:Landroid/view/View;

.field final synthetic this$0:Lcom/brakefield/painter/ui/SwatchBar;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/SwatchBar;Landroid/view/View;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    .line 100
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    iput-object p2, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->view:Landroid/view/View;

    const p1, 0x7f0a0142

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->colorView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-brakefield-painter-ui-SwatchBar$PaletteColorViewHolder(IIIZ)V
    .locals 3

    .line 121
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p4, v0

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {p4, v1, v2}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 122
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->updateView(IZ)V

    .line 124
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/SwatchBar;->access$200(Lcom/brakefield/painter/ui/SwatchBar;)Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->changeColor(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 116
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->getBindingAdapterPosition()I

    move-result v0

    .line 117
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v4

    .line 119
    iget v1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->color:I

    if-ne v1, v4, :cond_0

    .line 120
    iget-object v1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/SwatchBar;->access$100(Lcom/brakefield/painter/ui/SwatchBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/SwatchBar;->access$000(Lcom/brakefield/painter/ui/SwatchBar;)Landroid/app/Activity;

    move-result-object v2

    new-instance v5, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4, v0}, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;II)V

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/brakefield/painter/ui/SimpleUI;->showColorsPanel(Landroid/app/Activity;Landroid/view/View;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iget v1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->color:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {p1, v1, v2}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 129
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    .line 130
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/SwatchBar;->access$100(Lcom/brakefield/painter/ui/SwatchBar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->this$0:Lcom/brakefield/painter/ui/SwatchBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/SwatchBar;->access$000(Lcom/brakefield/painter/ui/SwatchBar;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public updateView(IZ)V
    .locals 1

    .line 106
    iput p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->color:I

    .line 107
    iget-object v0, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->colorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_0

    .line 108
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->view:Landroid/view/View;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->view:Landroid/view/View;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getForegroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->colorView:Landroid/view/View;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 111
    iget-object p1, p0, Lcom/brakefield/painter/ui/SwatchBar$PaletteColorViewHolder;->colorView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

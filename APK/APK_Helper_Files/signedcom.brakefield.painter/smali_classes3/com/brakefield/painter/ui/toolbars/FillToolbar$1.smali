.class Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;
.super Ljava/lang/Object;
.source "FillToolbar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/FillToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/FillToolbar;Lcom/brakefield/painter/databinding/FillToolbarBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 84
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/FillToolbar;)F

    move-result p3

    const/4 v0, 0x0

    aput p3, p1, v0

    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/FillToolbar;)F

    move-result p3

    const/4 v0, 0x1

    aput p3, p1, v0

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    invoke-static {p1}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result p1

    .line 85
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    .line 86
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p3

    invoke-static {p2, v0, p1}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 87
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 92
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 95
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    .line 96
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/FillToolbar;)F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/FillToolbar;)F

    move-result v1

    const/4 v2, 0x2

    aget v3, p1, v2

    invoke-static {v0, v1, v3}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB(FFF)I

    move-result v0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->access$002(Lcom/brakefield/painter/ui/toolbars/FillToolbar;F)F

    .line 98
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    aget v1, p1, v3

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->access$102(Lcom/brakefield/painter/ui/toolbars/FillToolbar;F)F

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/FillToolbar;

    aget p1, p1, v2

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/toolbars/FillToolbar;->access$202(Lcom/brakefield/painter/ui/toolbars/FillToolbar;F)F

    .line 102
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 107
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/FillToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/FillToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/FillToolbarBinding;->color:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    .line 108
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    return-void
.end method

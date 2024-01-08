.class Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;
.super Ljava/lang/Object;
.source "PanelsToolbar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;Lcom/brakefield/painter/databinding/PanelsToolbarBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 126
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)F

    move-result p3

    const/4 v0, 0x0

    aput p3, p1, v0

    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)F

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

    .line 127
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    .line 128
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->setColor(I)V

    .line 129
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 133
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 136
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getColor()I

    move-result v0

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    .line 137
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)F

    move-result v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)F

    move-result v1

    const/4 v2, 0x2

    aget v3, p1, v2

    invoke-static {v0, v1, v3}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB(FFF)I

    move-result v0

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;)Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/PanelToolNative;->getColor()I

    move-result v1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$102(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;F)F

    .line 139
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    aget v1, p1, v3

    invoke-static {v0, v1}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$202(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;F)F

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;

    aget p1, p1, v2

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;->access$302(Lcom/brakefield/painter/ui/toolbars/PanelsToolbar;F)F

    .line 143
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 148
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/PanelsToolbar$4;->val$binding:Lcom/brakefield/painter/databinding/PanelsToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/PanelsToolbarBinding;->panelsColor:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    .line 149
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    return-void
.end method

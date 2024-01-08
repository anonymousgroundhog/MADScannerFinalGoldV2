.class Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;
.super Ljava/lang/Object;
.source "AdjustmentLayerToolbar.java"

# interfaces
.implements Lcom/brakefield/painter/ui/GradientSlider$OnGradientChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$binding:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onColorStopTapped$0(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Lcom/brakefield/painter/nativeobjs/color/GradientNative;ILcom/brakefield/painter/ui/SimpleUI;IZ)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    invoke-virtual {p0}, Lcom/brakefield/painter/ui/GradientSlider;->postInvalidate()V

    .line 59
    invoke-virtual {p1, p2, p4}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->updateColorStop(II)V

    .line 60
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->refreshFilters()V

    .line 61
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method


# virtual methods
.method public onColorStopTapped(Lcom/brakefield/painter/nativeobjs/color/GradientNative;I)V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;->gradientSlider:Lcom/brakefield/painter/ui/GradientSlider;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/nativeobjs/color/GradientNative;->colorAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$binding:Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;

    iget-object v5, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, p1, p2, v5}, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/AdjustmentLayerToolbarBinding;Lcom/brakefield/painter/nativeobjs/color/GradientNative;ILcom/brakefield/painter/ui/SimpleUI;)V

    const/4 v5, 0x2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showColorsPanel(Landroid/app/Activity;Landroid/view/View;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V

    return-void
.end method

.method public onColorStopUpdated()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->refreshFilters()V

    .line 53
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onNumberOfColorStopsChanged()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->compressLayers()V

    .line 48
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/AdjustmentLayerToolbar$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

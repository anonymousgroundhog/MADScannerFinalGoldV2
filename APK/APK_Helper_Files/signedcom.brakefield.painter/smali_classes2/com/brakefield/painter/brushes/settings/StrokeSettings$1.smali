.class Lcom/brakefield/painter/brushes/settings/StrokeSettings$1;
.super Ljava/lang/Object;
.source "StrokeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/brushes/settings/StrokeSettings;->bindSettings(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/brushes/settings/StrokeSettings;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$1;->this$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 122
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setBrushBlendmode(I)V

    const/4 p2, 0x1

    .line 123
    sput-boolean p2, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$1;->this$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->blendingModeIntensitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/brushes/settings/StrokeSettings$1;->this$0:Lcom/brakefield/painter/brushes/settings/StrokeSettings;

    iget-object p1, p1, Lcom/brakefield/painter/brushes/settings/StrokeSettings;->binding:Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSettingsStrokeSectionViewControllerBinding;->blendingModeIntensitySlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

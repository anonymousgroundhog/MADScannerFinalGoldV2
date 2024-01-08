.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;->f$1:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    iput p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;->f$2:I

    return-void
.end method


# virtual methods
.method public final colorChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;->f$1:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    iget v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda31;->f$2:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lambda$setupView$2$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;IIZ)V

    return-void
.end method

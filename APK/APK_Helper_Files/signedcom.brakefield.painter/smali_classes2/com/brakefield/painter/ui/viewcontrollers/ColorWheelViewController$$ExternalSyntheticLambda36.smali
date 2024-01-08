.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

.field public final synthetic f$2:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;->f$0:I

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;->f$1:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;->f$2:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;->f$0:I

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;->f$1:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda36;->f$2:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lambda$setupView$14(ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

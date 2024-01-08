.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;->f$2:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda12;->f$2:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lambda$setupColorModeRgbSliders$28$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Landroid/app/Activity;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Landroid/view/View;)V

    return-void
.end method

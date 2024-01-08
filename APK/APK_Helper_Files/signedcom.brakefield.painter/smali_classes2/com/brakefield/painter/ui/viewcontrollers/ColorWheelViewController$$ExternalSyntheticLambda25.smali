.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/components/OnChange;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda25;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda25;->f$1:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    return-void
.end method


# virtual methods
.method public final change(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda25;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$$ExternalSyntheticLambda25;->f$1:Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->lambda$setupColorModeRgbSliders$27$com-brakefield-painter-ui-viewcontrollers-ColorWheelViewController(Lcom/brakefield/painter/databinding/ColorSettingsRgbXBinding;Ljava/lang/Integer;)V

    return-void
.end method

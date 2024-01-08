.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

.field public final synthetic f$1:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$2:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;->f$2:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final colorChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;->f$1:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda0;->f$2:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->lambda$getView$10$com-brakefield-painter-ui-viewcontrollers-SelectionSettingsViewController(Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;IZ)V

    return-void
.end method

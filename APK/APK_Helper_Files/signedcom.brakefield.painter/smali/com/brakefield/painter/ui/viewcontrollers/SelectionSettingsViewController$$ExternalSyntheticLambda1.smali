.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

.field public final synthetic f$1:Landroid/content/SharedPreferences;

.field public final synthetic f$2:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Landroid/content/SharedPreferences;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;->f$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;->f$1:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda1;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, v1, v2, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->lambda$getView$8$com-brakefield-painter-ui-viewcontrollers-SelectionSettingsViewController(Landroid/content/SharedPreferences;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/View;)V

    return-void
.end method

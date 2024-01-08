.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/brakefield/painter/ui/SimpleUI;

.field public final synthetic f$3:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;->f$3:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;->f$2:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController$$ExternalSyntheticLambda19;->f$3:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/SelectionSettingsViewController;->lambda$getView$11$com-brakefield-painter-ui-viewcontrollers-SelectionSettingsViewController(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/content/SharedPreferences;Landroid/view/View;)V

    return-void
.end method

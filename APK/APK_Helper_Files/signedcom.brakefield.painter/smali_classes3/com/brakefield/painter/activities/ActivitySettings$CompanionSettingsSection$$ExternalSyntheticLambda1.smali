.class public final synthetic Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;

.field public final synthetic f$1:Lcom/brakefield/painter/addons/Addon;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;Lcom/brakefield/painter/addons/Addon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/addons/Addon;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/painter/addons/Addon;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/activities/ActivitySettings$CompanionSettingsSection;->lambda$setupSection$1$com-brakefield-painter-activities-ActivitySettings$CompanionSettingsSection(Lcom/brakefield/painter/addons/Addon;Landroid/view/View;)V

    return-void
.end method

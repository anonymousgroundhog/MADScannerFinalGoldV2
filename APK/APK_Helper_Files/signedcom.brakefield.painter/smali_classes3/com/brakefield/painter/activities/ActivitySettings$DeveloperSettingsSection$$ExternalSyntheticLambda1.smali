.class public final synthetic Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/infinite/app/ui/settings/SettingsAdapter$OnSettingChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Lcom/infinite/app/ui/settings/Setting;)V
    .locals 1

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$DeveloperSettingsSection(Lcom/infinite/app/ui/settings/Setting;)V

    return-void
.end method

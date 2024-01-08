.class public final synthetic Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/OnSeekBarProgressChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

.field public final synthetic f$2:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    iput-object p3, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;->f$2:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;->f$0:Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;->f$1:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection$$ExternalSyntheticLambda1;->f$2:Landroid/content/SharedPreferences;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/activities/ActivitySettings$SavingSettingsSection;->lambda$setup$1$com-brakefield-painter-activities-ActivitySettings$SavingSettingsSection(Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/content/SharedPreferences;Landroid/widget/SeekBar;IZ)V

    return-void
.end method

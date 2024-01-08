.class public final synthetic Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher$OnLoginListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;

.field public final synthetic f$1:Lcom/brakefield/infinitestudio/account/UserInfoCache;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;Lcom/brakefield/infinitestudio/account/UserInfoCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;

    iput-object p2, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/infinitestudio/account/UserInfoCache;

    return-void
.end method


# virtual methods
.method public final handle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda2;->f$0:Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection$$ExternalSyntheticLambda2;->f$1:Lcom/brakefield/infinitestudio/account/UserInfoCache;

    invoke-virtual {v0, v1, p1}, Lcom/brakefield/painter/activities/ActivitySettings$AccountSettingsSection;->lambda$setup$3$com-brakefield-painter-activities-ActivitySettings$AccountSettingsSection(Lcom/brakefield/infinitestudio/account/UserInfoCache;Ljava/lang/String;)V

    return-void
.end method

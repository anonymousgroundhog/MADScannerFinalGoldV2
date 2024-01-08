.class Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$2;
.super Ljava/lang/Object;
.source "ActivitySettings.java"

# interfaces
.implements Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;->getInternalSettings()Lcom/infinite/app/ui/settings/SettingsAdapter$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection$2;->this$1:Lcom/brakefield/painter/activities/ActivitySettings$DeveloperSettingsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSetting(I)Lcom/infinite/app/ui/settings/Setting;
    .locals 2

    .line 239
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->getDeveloperSetting(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/infinite/app/ui/settings/SettingsFactory;->from(J)Lcom/infinite/app/ui/settings/Setting;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 243
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getDeveloperSettingsCount()I

    move-result v0

    return v0
.end method

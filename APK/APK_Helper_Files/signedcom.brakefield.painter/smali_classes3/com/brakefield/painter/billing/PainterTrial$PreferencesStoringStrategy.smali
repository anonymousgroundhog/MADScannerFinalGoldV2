.class Lcom/brakefield/painter/billing/PainterTrial$PreferencesStoringStrategy;
.super Ljava/lang/Object;
.source "PainterTrial.java"

# interfaces
.implements Lcom/brakefield/painter/billing/PainterTrial$StoringStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/billing/PainterTrial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferencesStoringStrategy"
.end annotation


# static fields
.field private static final TRIAL_START_TIME:Ljava/lang/String; = "TRIAL_START_TIME"


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/billing/PainterTrial$PreferencesStoringStrategy;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public load()Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;
    .locals 5

    .line 125
    new-instance v0, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;-><init>(Lcom/brakefield/painter/billing/PainterTrial$1;)V

    .line 126
    iget-object v1, p0, Lcom/brakefield/painter/billing/PainterTrial$PreferencesStoringStrategy;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "TRIAL_START_TIME"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->access$002(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;J)J

    return-object v0
.end method

.method public save(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/brakefield/painter/billing/PainterTrial$PreferencesStoringStrategy;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TRIAL_START_TIME"

    .line 120
    invoke-static {p1}, Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;->access$000(Lcom/brakefield/painter/billing/PainterTrial$TrialProperties;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

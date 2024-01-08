.class public abstract Lcom/brakefield/painter/addons/Addon;
.super Ljava/lang/Object;
.source "Addon.java"


# instance fields
.field protected final PREF_ACTIVE:Ljava/lang/String;

.field protected active:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/Addon;->getBasePreferenceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/addons/Addon;->PREF_ACTIVE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/brakefield/painter/addons/Addon;->active:Z

    return-void
.end method


# virtual methods
.method public abstract connect(Landroid/content/Context;)V
.end method

.method public abstract disconnect(Landroid/content/Context;)V
.end method

.method protected abstract getBasePreferenceName()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract install(Landroid/content/Context;)V
.end method

.method public final isActive()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/brakefield/painter/addons/Addon;->active:Z

    return v0
.end method

.method public abstract isInstalled(Landroid/content/Context;)Z
.end method

.method public final setActive(Landroid/content/Context;Z)V
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/brakefield/painter/addons/Addon;->active:Z

    if-ne p2, v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/brakefield/painter/addons/Addon;->PREF_ACTIVE:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/addons/Addon;->connect(Landroid/content/Context;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/addons/Addon;->disconnect(Landroid/content/Context;)V

    .line 46
    :goto_0
    iput-boolean p2, p0, Lcom/brakefield/painter/addons/Addon;->active:Z

    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/addons/Addon;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/brakefield/painter/addons/Addon;->PREF_ACTIVE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/painter/addons/Addon;->active:Z

    return-void
.end method

.method public abstract showScreen(Landroid/content/Context;)V
.end method

.method public abstract uninstall(Landroid/content/Context;)V
.end method

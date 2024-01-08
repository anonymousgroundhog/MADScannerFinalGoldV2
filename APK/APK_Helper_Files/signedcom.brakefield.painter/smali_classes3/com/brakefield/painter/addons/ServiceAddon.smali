.class public abstract Lcom/brakefield/painter/addons/ServiceAddon;
.super Lcom/brakefield/painter/addons/Addon;
.source "ServiceAddon.java"


# instance fields
.field protected bound:Z

.field private connection:Landroid/content/ServiceConnection;

.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/brakefield/painter/addons/Addon;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/brakefield/painter/addons/ServiceAddon;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/brakefield/painter/addons/ServiceAddon;->bound:Z

    .line 21
    iput-object v0, p0, Lcom/brakefield/painter/addons/ServiceAddon;->connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private getReceivingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 78
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/ServiceAddon;->getReceivingPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/ServiceAddon;->getReceivingServiceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public final connect(Landroid/content/Context;)V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/brakefield/painter/addons/ServiceAddon;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/brakefield/painter/addons/ServiceAddon;->active:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/ServiceAddon;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    .line 31
    invoke-direct {p0, p1}, Lcom/brakefield/painter/addons/ServiceAddon;->getReceivingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    iput-object v0, p0, Lcom/brakefield/painter/addons/ServiceAddon;->connection:Landroid/content/ServiceConnection;

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/addons/ServiceAddon;->ping(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final connected()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/brakefield/painter/addons/ServiceAddon;->connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/addons/ServiceAddon;->bound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final disconnect(Landroid/content/Context;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/brakefield/painter/addons/ServiceAddon;->connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/brakefield/painter/addons/ServiceAddon;->connection:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method protected abstract getReceivingActivityClassName()Ljava/lang/String;
.end method

.method protected abstract getReceivingPackageName()Ljava/lang/String;
.end method

.method protected abstract getReceivingServiceClassName()Ljava/lang/String;
.end method

.method protected abstract getServiceConnection()Landroid/content/ServiceConnection;
.end method

.method public final install(Landroid/content/Context;)V
    .locals 3

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/ServiceAddon;->getReceivingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public isInstalled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/ServiceAddon;->getReceivingPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method protected ping(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final setup(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/brakefield/painter/addons/Addon;->setup(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/brakefield/painter/addons/ServiceAddon;->context:Landroid/content/Context;

    return-void
.end method

.method public showScreen(Landroid/content/Context;)V
    .locals 3

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/ServiceAddon;->getReceivingPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/ServiceAddon;->getReceivingActivityClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final uninstall(Landroid/content/Context;)V
    .locals 4

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/ServiceAddon;->getReceivingPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v3, Lcom/infinite/core/MTx/eQuC;->WLzDObpQLw:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.class public Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;
.super Lcom/brakefield/painter/addons/OnDemandAddon;
.source "InstaPickOnDemandAddon.java"


# instance fields
.field private colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

.field private device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/brakefield/painter/addons/OnDemandAddon;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    .line 16
    iput-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->getDevice()Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->connect(Landroid/content/Context;Lcom/brakefield/painter/addons/instapick/InstaPickDevice$OnConnectedListener;)V

    :cond_2
    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->getDevice()Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->disconnect()V

    :cond_1
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f12021a

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDevice()Lcom/brakefield/painter/addons/instapick/InstaPickDevice;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.infinite.instapick.InstaPickDeviceImpl"

    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    invoke-virtual {v1, v0}, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->setColorChangedListener(Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "instapick"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "InstaPick"

    return-object v0
.end method

.method public setOnColorChangedListener(Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickOnDemandAddon;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    return-void
.end method

.method public showScreen(Landroid/content/Context;)V
    .locals 3

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.infinite.instapick.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

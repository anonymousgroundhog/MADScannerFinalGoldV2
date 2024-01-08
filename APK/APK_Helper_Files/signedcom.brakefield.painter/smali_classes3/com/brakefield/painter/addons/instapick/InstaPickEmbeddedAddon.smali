.class public Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;
.super Lcom/brakefield/painter/addons/EmbeddedAddon;
.source "InstaPickEmbeddedAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon$InstaPickDeviceStub;
    }
.end annotation


# instance fields
.field private colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

.field private device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/brakefield/painter/addons/EmbeddedAddon;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    .line 27
    iput-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->getDevice()Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->connect(Landroid/content/Context;Lcom/brakefield/painter/addons/instapick/InstaPickDevice$OnConnectedListener;)V

    :cond_2
    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->getDevice()Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->device:Lcom/brakefield/painter/addons/instapick/InstaPickDevice;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->disconnect()V

    :cond_1
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "A Bluetooth device for capturing colors in the real world.\n"

    return-object v0
.end method

.method protected getDevice()Lcom/brakefield/painter/addons/instapick/InstaPickDevice;
    .locals 2

    .line 50
    new-instance v0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon$InstaPickDeviceStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon$InstaPickDeviceStub;-><init>(Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon$1;)V

    .line 51
    iget-object v1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->setColorChangedListener(Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;)V

    return-object v0
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

    .line 30
    iput-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    return-void
.end method

.method public showScreen(Landroid/content/Context;)V
    .locals 3

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.infinite.instapick.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

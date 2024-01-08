.class Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon$InstaPickDeviceStub;
.super Lcom/brakefield/painter/addons/instapick/InstaPickDevice;
.source "InstaPickEmbeddedAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstaPickDeviceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;


# direct methods
.method private constructor <init>(Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon$InstaPickDeviceStub;->this$0:Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;

    invoke-direct {p0}, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon$InstaPickDeviceStub;-><init>(Lcom/brakefield/painter/addons/instapick/InstaPickEmbeddedAddon;)V

    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;Lcom/brakefield/painter/addons/instapick/InstaPickDevice$OnConnectedListener;)V
    .locals 0

    return-void
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openSettings()V
    .locals 0

    return-void
.end method

.method public requestBatteryLevel()V
    .locals 0

    return-void
.end method

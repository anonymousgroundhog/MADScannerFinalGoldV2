.class public abstract Lcom/brakefield/painter/addons/instapick/InstaPickDevice;
.super Ljava/lang/Object;
.source "InstaPickDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/addons/instapick/InstaPickDevice$OnBatteryStatusChangedListener;,
        Lcom/brakefield/painter/addons/instapick/InstaPickDevice$OnConnectedListener;
    }
.end annotation


# instance fields
.field protected colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    return-void
.end method


# virtual methods
.method protected colorChanged(I)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    invoke-interface {v0, p1}, Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;->onColorChanged(I)V

    return-void
.end method

.method public abstract connect(Landroid/content/Context;Lcom/brakefield/painter/addons/instapick/InstaPickDevice$OnConnectedListener;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract openSettings()V
.end method

.method public abstract requestBatteryLevel()V
.end method

.method final setColorChangedListener(Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/brakefield/painter/addons/instapick/InstaPickDevice;->colorChangedListener:Lcom/brakefield/painter/addons/instapick/OnInstaPickColorChangedListener;

    return-void
.end method

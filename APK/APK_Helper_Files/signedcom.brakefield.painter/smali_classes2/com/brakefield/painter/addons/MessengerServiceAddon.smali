.class public abstract Lcom/brakefield/painter/addons/MessengerServiceAddon;
.super Lcom/brakefield/painter/addons/ServiceAddon;
.source "MessengerServiceAddon.java"


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field protected outboundMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/brakefield/painter/addons/ServiceAddon;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/brakefield/painter/addons/MessengerServiceAddon;->outboundMessenger:Landroid/os/Messenger;

    .line 11
    new-instance v0, Lcom/brakefield/painter/addons/MessengerServiceAddon$1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/addons/MessengerServiceAddon$1;-><init>(Lcom/brakefield/painter/addons/MessengerServiceAddon;)V

    iput-object v0, p0, Lcom/brakefield/painter/addons/MessengerServiceAddon;->connection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method protected getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/brakefield/painter/addons/MessengerServiceAddon;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

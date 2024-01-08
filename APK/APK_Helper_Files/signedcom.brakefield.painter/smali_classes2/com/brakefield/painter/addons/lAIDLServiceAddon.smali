.class public abstract Lcom/brakefield/painter/addons/lAIDLServiceAddon;
.super Lcom/brakefield/painter/addons/ServiceAddon;
.source "lAIDLServiceAddon.java"


# instance fields
.field private connection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/brakefield/painter/addons/ServiceAddon;-><init>()V

    .line 12
    new-instance v0, Lcom/brakefield/painter/addons/lAIDLServiceAddon$1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/addons/lAIDLServiceAddon$1;-><init>(Lcom/brakefield/painter/addons/lAIDLServiceAddon;)V

    iput-object v0, p0, Lcom/brakefield/painter/addons/lAIDLServiceAddon;->connection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method protected abstract connectServiceInterface(Landroid/os/IBinder;)V
.end method

.method protected abstract disconnectServiceInterface()V
.end method

.method public getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/brakefield/painter/addons/lAIDLServiceAddon;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

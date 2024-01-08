.class Lcom/brakefield/painter/addons/lAIDLServiceAddon$1;
.super Ljava/lang/Object;
.source "lAIDLServiceAddon.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/addons/lAIDLServiceAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/addons/lAIDLServiceAddon;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/addons/lAIDLServiceAddon;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/brakefield/painter/addons/lAIDLServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/lAIDLServiceAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/brakefield/painter/addons/lAIDLServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/lAIDLServiceAddon;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/addons/lAIDLServiceAddon;->connectServiceInterface(Landroid/os/IBinder;)V

    .line 16
    iget-object p1, p0, Lcom/brakefield/painter/addons/lAIDLServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/lAIDLServiceAddon;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/brakefield/painter/addons/lAIDLServiceAddon;->bound:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 20
    iget-object p1, p0, Lcom/brakefield/painter/addons/lAIDLServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/lAIDLServiceAddon;

    invoke-virtual {p1}, Lcom/brakefield/painter/addons/lAIDLServiceAddon;->disconnectServiceInterface()V

    .line 21
    iget-object p1, p0, Lcom/brakefield/painter/addons/lAIDLServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/lAIDLServiceAddon;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/brakefield/painter/addons/lAIDLServiceAddon;->bound:Z

    return-void
.end method

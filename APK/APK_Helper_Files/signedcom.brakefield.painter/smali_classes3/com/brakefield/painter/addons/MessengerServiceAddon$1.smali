.class Lcom/brakefield/painter/addons/MessengerServiceAddon$1;
.super Ljava/lang/Object;
.source "MessengerServiceAddon.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/addons/MessengerServiceAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/addons/MessengerServiceAddon;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/addons/MessengerServiceAddon;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/brakefield/painter/addons/MessengerServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/MessengerServiceAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 14
    iget-object p1, p0, Lcom/brakefield/painter/addons/MessengerServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/MessengerServiceAddon;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/brakefield/painter/addons/MessengerServiceAddon;->outboundMessenger:Landroid/os/Messenger;

    .line 15
    iget-object p1, p0, Lcom/brakefield/painter/addons/MessengerServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/MessengerServiceAddon;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/brakefield/painter/addons/MessengerServiceAddon;->bound:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 19
    iget-object p1, p0, Lcom/brakefield/painter/addons/MessengerServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/MessengerServiceAddon;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/brakefield/painter/addons/MessengerServiceAddon;->outboundMessenger:Landroid/os/Messenger;

    .line 20
    iget-object p1, p0, Lcom/brakefield/painter/addons/MessengerServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/MessengerServiceAddon;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/brakefield/painter/addons/MessengerServiceAddon;->bound:Z

    return-void
.end method

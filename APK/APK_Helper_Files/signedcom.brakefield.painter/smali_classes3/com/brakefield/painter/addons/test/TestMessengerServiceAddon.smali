.class public Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon;
.super Lcom/brakefield/painter/addons/MessengerServiceAddon;
.source "TestMessengerServiceAddon.java"


# static fields
.field private static final ACTION_1:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/brakefield/painter/addons/MessengerServiceAddon;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBasePreferenceName()Ljava/lang/String;
    .locals 1

    const-string v0, "PREF_ADDON_NAME"

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "This is the description of the test service."

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Test Service"

    return-object v0
.end method

.method protected getReceivingActivityClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.addontest.messenger.MainActivity"

    return-object v0
.end method

.method protected getReceivingPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.addontest.messenger"

    return-object v0
.end method

.method protected getReceivingServiceClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.addontest.messenger.MainService"

    return-object v0
.end method

.method public ping(Landroid/content/Context;)V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Test service - ping"

    .line 55
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon$1;-><init>(Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon;Landroid/os/Looper;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 67
    :try_start_0
    iget-object p1, p0, Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon;->outboundMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

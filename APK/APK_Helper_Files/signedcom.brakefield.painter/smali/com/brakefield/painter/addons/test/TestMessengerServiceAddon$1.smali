.class Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon$1;
.super Landroid/os/Handler;
.source "TestMessengerServiceAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon;->ping(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon$1;->this$0:Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon;

    iput-object p3, p0, Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget-object v0, p0, Lcom/brakefield/painter/addons/test/TestMessengerServiceAddon$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Test service - Message callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "Test service - Message callback"

    .line 63
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/brakefield/infinitestudio/utils/Debugger;->print([Ljava/lang/Object;)V

    return-void
.end method

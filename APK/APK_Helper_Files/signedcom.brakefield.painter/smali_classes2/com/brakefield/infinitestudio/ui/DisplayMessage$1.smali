.class Lcom/brakefield/infinitestudio/ui/DisplayMessage$1;
.super Lcom/brakefield/infinitestudio/MessageHandler;
.source "DisplayMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ui/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/DisplayMessage;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/DisplayMessage;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage$1;->this$0:Lcom/brakefield/infinitestudio/ui/DisplayMessage;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataHandlers()[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 16
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage$1;->this$0:Lcom/brakefield/infinitestudio/ui/DisplayMessage;

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->access$000(Lcom/brakefield/infinitestudio/ui/DisplayMessage;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

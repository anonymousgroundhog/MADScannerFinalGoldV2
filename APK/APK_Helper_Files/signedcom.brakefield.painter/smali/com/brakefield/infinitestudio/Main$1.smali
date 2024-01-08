.class Lcom/brakefield/infinitestudio/Main$1;
.super Landroid/os/Handler;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/Main;->setupHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/Main;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/Main;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/brakefield/infinitestudio/Main$1;->this$0:Lcom/brakefield/infinitestudio/Main;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    .line 121
    iget-object v0, p0, Lcom/brakefield/infinitestudio/Main$1;->this$0:Lcom/brakefield/infinitestudio/Main;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/Main;->handleMessageCall(Landroid/os/Message;)V

    return-void
.end method

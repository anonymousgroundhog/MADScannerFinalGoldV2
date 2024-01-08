.class public final synthetic Lcom/brakefield/infinitestudio/MessageHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/MessageHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/MessageHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/MessageHandler;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/MessageHandler$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/MessageHandler;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/MessageHandler;->lambda$getCallback$0$com-brakefield-infinitestudio-MessageHandler(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

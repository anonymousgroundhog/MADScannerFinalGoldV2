.class Lcom/brakefield/painter/ui/SimpleUI$32;
.super Ljava/lang/Object;
.source "SimpleUI.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/SimpleUI;->getShortcutAction(Landroid/app/Activity;ILcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/ui/KeyCommand$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/SimpleUI;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/SimpleUI;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2122
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$32;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$32;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 1

    .line 2129
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$32;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {v0}, Lcom/brakefield/painter/ui/SimpleUI;->access$200(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/painter/SharedMessageHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/brakefield/painter/SharedMessageHandler;->decreaseSize()V

    return-void
.end method

.method public id()I
    .locals 1

    .line 2125
    iget v0, p0, Lcom/brakefield/painter/ui/SimpleUI$32;->val$id:I

    return v0
.end method

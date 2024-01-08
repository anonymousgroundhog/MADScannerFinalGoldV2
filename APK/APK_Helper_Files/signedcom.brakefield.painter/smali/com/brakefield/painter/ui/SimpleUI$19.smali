.class Lcom/brakefield/painter/ui/SimpleUI$19;
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

    .line 1957
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$19;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$19;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 1

    .line 1964
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$19;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {v0}, Lcom/brakefield/painter/ui/SimpleUI;->access$100(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->fireColorButton()V

    return-void
.end method

.method public id()I
    .locals 1

    .line 1960
    iget v0, p0, Lcom/brakefield/painter/ui/SimpleUI$19;->val$id:I

    return v0
.end method

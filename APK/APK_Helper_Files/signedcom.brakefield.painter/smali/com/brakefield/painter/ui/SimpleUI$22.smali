.class Lcom/brakefield/painter/ui/SimpleUI$22;
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

    .line 1995
    iput-object p1, p0, Lcom/brakefield/painter/ui/SimpleUI$22;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    iput p2, p0, Lcom/brakefield/painter/ui/SimpleUI$22;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 1

    .line 2002
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeCorrectionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$22;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {v0}, Lcom/brakefield/painter/ui/SimpleUI;->access$000(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->noUndoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->callOnClick()Z

    goto :goto_0

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/SimpleUI$22;->this$0:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {v0}, Lcom/brakefield/painter/ui/SimpleUI;->access$000(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/ActivityMainInterfaceXBinding;->undoButton:Lcom/brakefield/infinitestudio/ui/ShadowImageView;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ShadowImageView;->callOnClick()Z

    :goto_0
    return-void
.end method

.method public id()I
    .locals 1

    .line 1998
    iget v0, p0, Lcom/brakefield/painter/ui/SimpleUI$22;->val$id:I

    return v0
.end method

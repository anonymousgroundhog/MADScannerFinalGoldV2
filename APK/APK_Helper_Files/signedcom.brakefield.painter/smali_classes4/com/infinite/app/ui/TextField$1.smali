.class Lcom/infinite/app/ui/TextField$1;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infinite/app/ui/TextField;->bindTextChangeListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infinite/app/ui/TextField;

.field final synthetic val$listener:Lcom/infinite/app/ui/interactions/TextChangeInteraction;


# direct methods
.method constructor <init>(Lcom/infinite/app/ui/TextField;Lcom/infinite/app/ui/interactions/TextChangeInteraction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/infinite/app/ui/TextField$1;->this$0:Lcom/infinite/app/ui/TextField;

    iput-object p2, p0, Lcom/infinite/app/ui/TextField$1;->val$listener:Lcom/infinite/app/ui/interactions/TextChangeInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 37
    iget-object p2, p0, Lcom/infinite/app/ui/TextField$1;->val$listener:Lcom/infinite/app/ui/interactions/TextChangeInteraction;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/infinite/app/ui/TextField$1;->this$0:Lcom/infinite/app/ui/TextField;

    iget-wide p3, p3, Lcom/infinite/app/ui/TextField;->target:J

    invoke-virtual {p2, p1, p3, p4}, Lcom/infinite/app/ui/interactions/TextChangeInteraction;->onTextChanged(Ljava/lang/String;J)V

    return-void
.end method

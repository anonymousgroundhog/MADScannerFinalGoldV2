.class Lcom/brakefield/infinitestudio/account/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/account/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$4;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$4;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$4;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->access$300(Lcom/brakefield/infinitestudio/account/LoginActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$4;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->access$300(Lcom/brakefield/infinitestudio/account/LoginActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/brakefield/infinitestudio/color/Colors;->RED:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

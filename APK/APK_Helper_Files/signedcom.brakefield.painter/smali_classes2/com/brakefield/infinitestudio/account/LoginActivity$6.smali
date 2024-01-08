.class Lcom/brakefield/infinitestudio/account/LoginActivity$6;
.super Lcom/brakefield/infinitestudio/account/UserFunctions$JSONResultHandler;
.source "LoginActivity.java"


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

    .line 340
    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/UserFunctions$JSONResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/json/JSONObject;)V
    .locals 2

    .line 344
    :try_start_0
    sget-object v0, Lcom/brakefield/infinitestudio/account/LoginActivity;->KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    sget-object v0, Lcom/brakefield/infinitestudio/account/LoginActivity;->KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "user"

    .line 348
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_USER_INFO"

    .line 351
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 354
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->finish()V

    goto :goto_0

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 358
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 359
    sget v0, Lcom/brakefield/infinitestudio/R$string;->alert_incorrect_login:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 360
    sget v0, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 361
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 369
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity$6;->this$0:Lcom/brakefield/infinitestudio/account/LoginActivity;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/account/LoginActivity;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->setVisibility(I)V

    return-void
.end method

.class public Lcom/brakefield/infinitestudio/account/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/account/LoginActivity$LoginUser;,
        Lcom/brakefield/infinitestudio/account/LoginActivity$Launcher;
    }
.end annotation


# static fields
.field public static final EXTRA_USER_INFO:Ljava/lang/String; = "EXTRA_USER_INFO"

.field public static KEY_ERROR:Ljava/lang/String; = "error"

.field public static KEY_ERROR_MSG:Ljava/lang/String; = "error_msg"

.field public static KEY_SUCCESS:Ljava/lang/String; = "success"

.field public static final REGISTER_NEW_USER_KEY:Ljava/lang/String; = "REGISTER_NEW_USER_KEY"


# instance fields
.field btnLinkToRegister:Landroid/widget/Button;

.field btnLogin:Landroid/widget/Button;

.field private emailImage:Landroid/widget/ImageView;

.field inputEmail:Landroid/widget/EditText;

.field inputName:Landroid/widget/EditText;

.field inputPassword:Landroid/widget/EditText;

.field inputPasswordConfirm:Landroid/widget/EditText;

.field private nameImage:Landroid/widget/ImageView;

.field private passwordConfirmImage:Landroid/widget/ImageView;

.field private passwordImage:Landroid/widget/ImageView;

.field private passwordReset:Landroid/view/View;

.field progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

.field private register:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/account/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->emailImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/account/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->nameImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/account/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->passwordImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/infinitestudio/account/LoginActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->passwordConfirmImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/brakefield/infinitestudio/account/LoginActivity;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->register:Z

    return p1
.end method

.method static synthetic access$500(Lcom/brakefield/infinitestudio/account/LoginActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->refresh()V

    return-void
.end method

.method private checkNetworkOrNotifyUser()V
    .locals 2

    .line 449
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    sget v0, Lcom/brakefield/infinitestudio/R$string;->no_internet_connection:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static getPasswordRequirementsString()Ljava/lang/String;
    .locals 1

    .line 444
    sget v0, Lcom/brakefield/infinitestudio/R$string;->alert_valid_password:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmailValid(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "^[\\w\\.-]+@([\\w\\-]+\\.)+[A-Z]{2,4}$"

    const/4 v1, 0x2

    .line 431
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 432
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 433
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 455
    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 456
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPasswordValid(Ljava/lang/String;)Z
    .locals 1

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private refresh()V
    .locals 7

    .line 389
    sget v0, Lcom/brakefield/infinitestudio/R$id;->name_separator:I

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 390
    sget v1, Lcom/brakefield/infinitestudio/R$id;->password_confirm_separator:I

    invoke-virtual {p0, v1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 391
    sget v2, Lcom/brakefield/infinitestudio/R$id;->name_row:I

    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 392
    sget v3, Lcom/brakefield/infinitestudio/R$id;->password_confirm_row:I

    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 394
    iget-boolean v4, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->register:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 396
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 399
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLinkToRegister:Landroid/widget/Button;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->prompt_existing_user:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->register:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->passwordReset:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 408
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 409
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 410
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLinkToRegister:Landroid/widget/Button;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->prompt_new_user:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    sget v1, Lcom/brakefield/infinitestudio/R$string;->log_in:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->passwordReset:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPassword:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-brakefield-infinitestudio-account-LoginActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isNetworkAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p2, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/brakefield/infinitestudio/R$string;->alert_email_directions:I

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 108
    sget p1, Lcom/brakefield/infinitestudio/R$string;->ok:I

    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 109
    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$1$com-brakefield-infinitestudio-account-LoginActivity(Landroid/view/View;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->checkNetworkOrNotifyUser()V

    .line 95
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget p1, Lcom/brakefield/infinitestudio/R$string;->alert_valid_email:I

    .line 99
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserFunctions$ResetPassword;

    invoke-direct {v0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions$ResetPassword;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;)V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-brakefield-infinitestudio-account-LoginActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 191
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->register:Z

    if-nez p1, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$3$com-brakefield-infinitestudio-account-LoginActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 216
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->register:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$4$com-brakefield-infinitestudio-account-LoginActivity(Landroid/view/View;)V
    .locals 5

    .line 234
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->checkNetworkOrNotifyUser()V

    .line 236
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->register:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 238
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 241
    sget p1, Lcom/brakefield/infinitestudio/R$string;->alert_enter_name:I

    .line 242
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v2}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isEmailValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    sget p1, Lcom/brakefield/infinitestudio/R$string;->alert_valid_email:I

    .line 251
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-static {v3}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isPasswordValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 260
    invoke-static {}, Lcom/brakefield/infinitestudio/account/LoginActivity;->getPasswordRequirementsString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 265
    :cond_2
    iget-object v4, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 266
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    sget p1, Lcom/brakefield/infinitestudio/R$string;->alert_password_mismatch:I

    .line 270
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 275
    :cond_3
    iget-object v4, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->setVisibility(I)V

    .line 278
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;

    invoke-direct {v0, p1, v2, v3}, Lcom/brakefield/infinitestudio/account/UserFunctions$RegisterUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/brakefield/infinitestudio/account/LoginActivity$5;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$5;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;)V

    goto :goto_0

    .line 319
    :cond_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-static {p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isEmailValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 322
    sget p1, Lcom/brakefield/infinitestudio/R$string;->alert_valid_email:I

    .line 323
    invoke-static {p1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v2}, Lcom/brakefield/infinitestudio/account/LoginActivity;->isPasswordValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 332
    invoke-static {}, Lcom/brakefield/infinitestudio/account/LoginActivity;->getPasswordRequirementsString()Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 337
    :cond_6
    iget-object v3, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->setVisibility(I)V

    .line 340
    new-instance v0, Lcom/brakefield/infinitestudio/account/UserFunctions$LoginUser;

    invoke-direct {v0, p1, v2}, Lcom/brakefield/infinitestudio/account/UserFunctions$LoginUser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/brakefield/infinitestudio/account/LoginActivity$6;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$6;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-static {v0, p1}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;Lcom/brakefield/infinitestudio/account/UserFunctions$APIResultHandler;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$5$com-brakefield-infinitestudio-account-LoginActivity(Landroid/view/View;)V
    .locals 0

    .line 379
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->register:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->register:Z

    .line 380
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 381
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->refresh()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/brakefield/infinitestudio/R$layout;->login:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 74
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "REGISTER_NEW_USER_KEY"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->register:Z

    .line 80
    :cond_0
    sget p1, Lcom/brakefield/infinitestudio/R$id;->name_image:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->nameImage:Landroid/widget/ImageView;

    const v0, -0x333334

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 83
    sget p1, Lcom/brakefield/infinitestudio/R$id;->email_image:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->emailImage:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 86
    sget p1, Lcom/brakefield/infinitestudio/R$id;->password_image:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->passwordImage:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 89
    sget p1, Lcom/brakefield/infinitestudio/R$id;->password_reset_button:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->passwordReset:Landroid/view/View;

    .line 90
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 91
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->passwordReset:Landroid/view/View;

    new-instance v1, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget p1, Lcom/brakefield/infinitestudio/R$id;->edit_email:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputEmail:Landroid/widget/EditText;

    .line 117
    new-instance v1, Lcom/brakefield/infinitestudio/account/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$1;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    sget p1, Lcom/brakefield/infinitestudio/R$id;->edit_password:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPassword:Landroid/widget/EditText;

    .line 132
    sget p1, Lcom/brakefield/infinitestudio/R$id;->password_confirm_image:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->passwordConfirmImage:Landroid/widget/ImageView;

    .line 133
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 136
    sget p1, Lcom/brakefield/infinitestudio/R$id;->edit_name:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputName:Landroid/widget/EditText;

    .line 138
    new-instance v0, Lcom/brakefield/infinitestudio/account/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$2;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    sget p1, Lcom/brakefield/infinitestudio/R$id;->edit_password_confirm:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPasswordConfirm:Landroid/widget/EditText;

    .line 165
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPassword:Landroid/widget/EditText;

    new-instance v0, Lcom/brakefield/infinitestudio/account/LoginActivity$3;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$3;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPassword:Landroid/widget/EditText;

    new-instance v0, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 199
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPasswordConfirm:Landroid/widget/EditText;

    new-instance v0, Lcom/brakefield/infinitestudio/account/LoginActivity$4;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$4;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->inputPasswordConfirm:Landroid/widget/EditText;

    new-instance v0, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 223
    sget p1, Lcom/brakefield/infinitestudio/R$id;->login_progress:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/ui/CircleProgress;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->progress:Lcom/brakefield/infinitestudio/ui/CircleProgress;

    .line 224
    sget v0, Lcom/brakefield/infinitestudio/color/Colors;->BLUE:I

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/CircleProgress;->setColor(I)V

    .line 227
    sget p1, Lcom/brakefield/infinitestudio/R$id;->login_button:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    .line 229
    sget p1, Lcom/brakefield/infinitestudio/R$id;->btnLinkToRegisterScreen:I

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/account/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLinkToRegister:Landroid/widget/Button;

    .line 230
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 232
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLogin:Landroid/widget/Button;

    new-instance v0, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object p1, p0, Lcom/brakefield/infinitestudio/account/LoginActivity;->btnLinkToRegister:Landroid/widget/Button;

    new-instance v0, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/account/LoginActivity$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/infinitestudio/account/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/account/LoginActivity;->refresh()V

    return-void
.end method

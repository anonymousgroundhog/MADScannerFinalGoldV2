.class public Lcom/brakefield/infinitestudio/ui/DisplayMessage;
.super Ljava/lang/Object;
.source "DisplayMessage.java"


# static fields
.field private static final HIDE_DELAY:I = 0x3e8


# instance fields
.field private final HideMessage:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private final handler:Lcom/brakefield/infinitestudio/MessageHandler;

.field private parent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field snackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/brakefield/infinitestudio/ui/DisplayMessage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/DisplayMessage$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/ui/DisplayMessage;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->HideMessage:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 12
    new-instance v0, Lcom/brakefield/infinitestudio/ui/DisplayMessage$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/ui/DisplayMessage$1;-><init>(Lcom/brakefield/infinitestudio/ui/DisplayMessage;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->handler:Lcom/brakefield/infinitestudio/MessageHandler;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ui/DisplayMessage;)Lcom/brakefield/infinitestudio/MessageHandler$HandleData;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->HideMessage:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$com-brakefield-infinitestudio-ui-DisplayMessage(Ljava/lang/Object;II)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->hide()V

    return-void
.end method

.method public setup(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->handler:Lcom/brakefield/infinitestudio/MessageHandler;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->HideMessage:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/MessageHandler;->sendDelayedMessage(Lcom/brakefield/infinitestudio/MessageHandler$HandleData;I)V

    .line 33
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 36
    new-instance v1, Lcom/brakefield/infinitestudio/ui/DisplayMessage$2;

    invoke-direct {v1, p0}, Lcom/brakefield/infinitestudio/ui/DisplayMessage$2;-><init>(Lcom/brakefield/infinitestudio/ui/DisplayMessage;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 42
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->themeSnackbar(Lcom/google/android/material/snackbar/Snackbar;)V

    .line 43
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    .line 44
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method

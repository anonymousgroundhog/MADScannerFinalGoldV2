.class Lcom/brakefield/infinitestudio/ui/DisplayMessage$2;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "DisplayMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/DisplayMessage;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/ui/DisplayMessage;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ui/DisplayMessage;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage$2;->this$0:Lcom/brakefield/infinitestudio/ui/DisplayMessage;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ui/DisplayMessage$2;->this$0:Lcom/brakefield/infinitestudio/ui/DisplayMessage;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/brakefield/infinitestudio/ui/DisplayMessage;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/brakefield/infinitestudio/ui/DisplayMessage$2;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
